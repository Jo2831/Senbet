#!/usr/bin/python3
"""
file: hotel.py
Desc: Hotel model
Authors: Yoseph Tapano
"""
from models.base import BaseModel, Base
from sqlalchemy import (
    Column,
    String,
    ForeignKey,
    Integer,
    Float,
    TEXT,
    Table
)
from sqlalchemy.orm import relationship


hotel_service = Table(
    'hotel_service',
    Base.metadata,
    Column('hotel_id', String(60),
           ForeignKey('hotels.id', onupdate="CASCADE", ondelete="CASCADE"),
           primary_key=True),
    Column('service_id', String(60),
           ForeignKey('services.id', onupdate="CASCADE", ondelete="CASCADE"),
           primary_key=True,)
)


class Hotel(BaseModel, Base):
    """Representation for Hotel"""

    __tablename__ = "hotels"

    # Required attributes to register a new hotel to the senbet App.
    name = Column(String(128), nullable=False)
    description = Column(TEXT, nullable=True)
    entrance_price = Column(Integer, nullable=False, default=0)
    image_url = Column(String(20000), nullable=False)
    lattitude = Column(Float, nullable=True)
    longitude = Column(Float, nullable=True)
    email_address = Column(String(128), nullable=False)
    phone = Column(String(10), nullable=False)
    location = Column(String(20000), nullable=False)
    city_id = Column(String(60), ForeignKey('cities.id'), nullable=False)

    orders = relationship("Order", backref="hotel",
                          cascade="all, delete, delete-orphan")
    services = relationship("Service",
                            secondary=hotel_service,
                            viewonly=False)

    def __init__(self, *args, **kwargs):
        """Initializes Hotel object with super class constructor"""
        super().__init__(*args, **kwargs)