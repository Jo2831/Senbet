#!/usr/bin/python3
"""
file: search.py
Desc: Responsible for end points related to searching hotels
      Depending on different payloads.
Authors: Yoseph Tapano
"""
from api.v1.views import app_views
from flask import jsonify, request, abort
from models import storage
from models.service import Service
from models.city import City
from models.hotel import Hotel


@app_views.route("/hotel_search", methods=["POST"])
def hotel_search():
    """Handles HTTP POST request for hotel search route"""
    if request.method == "POST":
        # Retrives all Hotel objects depending of the JSON in the
        # body of the request.
        data = request.get_json()
        if data is None:
            abort(400, "Not a Json")
        if data and len(data):
            cities = data.get('cities', None)
            services = data.get('services', None)
        if not data or not len(data) or (
                not cities and
                not services):
            hotels = storage.all(Hotel).values()
            list_hotels = []
            [list_hotels.append(h.to_dict()) for h in hotels]
            return jsonify(list_hotels)
        list_hotels = []
        if cities:
            city_obj = [storage.get(City, c_id) for c_id in cities]
            for city in city_obj:
                if city:
                    for hotel in city.hotels:
                        if hotel not in list_hotels:
                            list_hotels.append(hotel)
        if services:
            if not list_hotels:
                list_hotels = storage.all(Hotel).values()
            services_obj = [storage.get(Service, s_id) for s_id in services]
            list_hotels = [hotel for hotel in list_hotels
                              if all([s in hotel.services
                                      for s in services_obj])]
        hotels = []
        for hotel in list_hotels:
            d = hotel.to_dict()
            d.pop('services', None)
            hotels.append(d)

        return jsonify(hotels)