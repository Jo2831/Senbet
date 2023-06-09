#!/usr/bin/python3
"""
file: city.py
Desc: City model
Authors: Yoseph Tapano
"""
from models.base import BaseModel
from models.base import Base
from sqlalchemy import Column, String, ForeignKey
from sqlalchemy.orm import relationship


class City(BaseModel, Base):
    """Representation for cities"""
    __tablename__ = "cities"
    name = Column(String(128), nullable=False)
    hotels = relationship("Hotel", backref="cities",
                             cascade="all, delete, delete-orphan")

    def __init__(self, *args, **kwargs):
        """Initializes City object with super class constructor"""
        super().__init__(*args, **kwargs)