#!/usr/bin/python3
"""
file: order.py
Desc: Order model
Authors: Yoseph Tapano
"""
from models.base import BaseModel, Base
from sqlalchemy import (
    Column,
    String,
    ForeignKey
)


class Order(BaseModel, Base):
    """Represents Orders"""
    __tablename__ = "orders"
    hotel_id = Column(String(60), ForeignKey('hotels.id'),
                         nullable=False)
    user_id = Column(String(60), ForeignKey('users.id'), nullable=False)

    def __init__(self, *args, **kwargs):
        """Initializes Order object with super class constructor"""
        super().__init__(*args, **kwargs)
