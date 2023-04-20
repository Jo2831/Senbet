#!/usr/bin/python3
"""
file: hotel_service.py
Desc: Responsible for end points related to hotel_service linkage
Authors: Yoseph Tapano
"""
from api.v1.views import app_views
from flask import jsonify, request, abort
from models import storage
from models.service import Service
from models.hotel import Hotel


@app_views.route('/hotels/<hotel_id>/services', methods=['GET', 'Post'])
def multiple_services_per_hotel(hotel_id):
    """Handles HTTP requests for multiple services linked to a hotel"""
    hotel = storage.get(Hotel, hotel_id)
    if not hotel:
        abort(404)
    if request.method == "GET":
        # Retrives all Service objects linked to a Hotel object based on the
        # hotel_id.
        services = [service.to_dict() for service in hotel.services]
        return jsonify(services), 200
    if request.method == "POST":
        # Links all Service objects to a hotel object based on the hotel_id.
        data = request.get_json()
        if data is None:
            abort(400, "Not a Json")
        service_ids = data.get("service_ids")
        if service_ids is None:
            abort(400, "Missing service_ids")
        services = []
        for service_id in service_ids:
            services.append(storage.get(Service, service_id))
        if services:
            services_to_be_added = [
                s for s in services if s not in hotel.services]
            [hotel.services.append(s) for s in services_to_be_added]
        storage.save()
        return jsonify({"number_of_new_services_added": len(services_to_be_added)})


@app_views.route('/hotels/<hotel_id>/services/<service_id>', methods=['POST', 'DELETE'])
def single_service_per_hotel(hotel_id, service_id):
    """Handles HTTP requests for a service linked to a hotel"""
    hotel = storage.get(Hotel, hotel_id)
    service = storage.get(Service, service_id)
    if not hotel or not service:
        abort(404)
    if request.method == "POST":
        # Link a Service object to a Hotel object  based on the service_id
        # and hotel_id
        if service in hotel.services:
            return jsonify(service.to_dict()), 200
        else:
            hotel.services.append(service)
    if request.method == "DELETE":
        # Deletes a Service object to a Hotel object
        if service not in hotel.services:
            abort(404)
        hotel.services.remove(service)
    storage.save()
    return jsonify(service.to_dict()), 200