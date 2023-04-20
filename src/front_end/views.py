#!/usr/bin/python3
"""
file: views.py
Desc: A module responsible for handling all web-pages
Authors: Gizachew Bayness, Joseph Tapano, and Helina Gebreyes
Date Created: Dec 18 2022
"""
from flask import Blueprint, flash, redirect, url_for, request
from models import storage
from models.service import Service
from models.city import City
from models.hotel import Hotel
from models.user import User
from models.order import Order
from flask import render_template
from flask_login import login_required, current_user
from uuid import uuid4
from hashlib import md5


views = Blueprint('views', __name__)


@views.route('/home')
@views.route('/')
def home():
    """ Entry point of the web app or home page of the web app"""
    cities = storage.all(City).values()
    cities = sorted(cities, key=lambda k: k.name)
    cache_id = str(uuid4())

    services = storage.all(Service).values()
    services = sorted(services, key=lambda k: k.name)

    hotels = storage.all(Hotel).values()
    hotels = sorted(hotels, key=lambda k: k.name)

    return render_template('index.html',
                           cities=cities,
                           services=services,
                           hotels=hotels,
                           cache_id=cache_id,
                           user=current_user
                           )


@views.route('/profile', methods=['GET', 'POST'])
@login_required
def profile():
    """Profile view of users"""
    completed = False
    if request.method == "POST":
        current_password = current_user.password
        data = request.form
        password = md5(data.get('currentPassword').encode()).hexdigest()
        new_password_entered = data.get('newPassword')
        new_password_repeated = data.get('reNewPassword')
        if current_password == password:
            if len(new_password_entered) < 6 or len(new_password_entered) > 15:
                flash('Length of the new password must be 6 - 15 chars long')
            elif new_password_entered != new_password_repeated:
                flash("Passwords don't match", category='error')
            else:
                current_user.password = new_password_entered
                storage.save()
                flash("Password changed successfully", category='success')
        else:
            flash("Invalid password", category='error')

    return render_template('profile.html', user=current_user, completed=completed)


@views.route('/about')
def about():
    """"About us page"""
    return render_template('about.html', user=current_user)


@views.route('/details')
def details():
    """"Details page for hotel"""
    hotel_id = request.args.get('id')
    hotel = storage.get(Hotel, hotel_id)
    city_name = storage.get(City, hotel.city_id).name
    number_of_services = len(hotel.services)
    return render_template('details.html',
                           user=current_user,
                           hotel=hotel,
                           city_name=city_name,
                           number_of_services=number_of_services
                           )


@views.route('/admin')
@login_required
def admin():
    """Admin page for managing different components in the app"""
    cities = storage.all(City).values()
    cities = sorted(cities, key=lambda k: k.name)

    services = storage.all(Service).values()
    services = sorted(services, key=lambda k: k.name)

    hotels = storage.all(Hotel).values()
    hotels = sorted(hotels, key=lambda k: k.name)

    number_of_hotels = storage.count(Hotel)
    number_of_orders = storage.count(Order)
    number_of_users = storage.count(User)

    id = current_user.id
    if id == "2f4ad388-2cb6-4623-a50a-5f27deb241b7":
        return render_template('admin.html',
                               user=current_user,
                               cities=cities,
                               services=services,
                               number_of_hotels=number_of_hotels,
                               number_of_orders=number_of_orders,
                               number_of_users=number_of_users)
    else:
        flash('Sorry, you must be the admin to access the admin page.',
              category='error')
        return redirect(url_for('views.home'))