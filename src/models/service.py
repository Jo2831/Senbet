#!/usr/bin/python3
"""
file: service.py
Desc: Service model
Authors: Yoseph Tapano
"""
from models.base import BaseModel, Base
from sqlalchemy import (
    Column,
    String,
    TEXT,
    ForeignKey
)


class Service(BaseModel, Base):
    """Represents a Service given by a hotel"""
    __tablename__ = "services"
    name = Column(String(128), nullable=False, unique=True)
    description = Column(TEXT, nullable=False)

    def __init__(self, *args, **kwargs):
        """Initializes Service object with super class constructor"""
        super().__init__(*args, **kwargs)