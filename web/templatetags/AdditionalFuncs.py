import os
import random
from django import template
from django.conf import settings
from django.shortcuts import render
import requests

from zzz_calculator.settings import STYLES_URL, STYLES_ROOT, API_URL

register = template.Library()

@register.filter
def multiply(value, arg):
    try:
        if "%" in value:
            value = value.replace("%", "")
            return str(round(float(value) * (float(arg)+1), 1)) + "%"
        else:
            return round(float(value) * (float(arg)+1), 0)
    except (TypeError, ValueError):
        return None

@register.filter
def greaterThan(value, arg):
    try:
        value = round(float(value), 0)
        arg = round(float(arg), 0)
        
        return value > arg
    except (TypeError, ValueError):
        return None

@register.filter
def roundDecimal(value, arg):
    try:
        perc_str = ""
        if "%" in value:
            value = value.replace("%", "")
            perc_str = "%"
        arg = round(int(arg), 0)
        value = float(value)
        return str(round(value, arg))+perc_str
    except (TypeError, ValueError):
        return None