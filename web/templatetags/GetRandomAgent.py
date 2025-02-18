import os
import random
from django import template
from django.conf import settings
from django.shortcuts import render
import requests

from zzz_calculator.settings import STYLES_URL, STYLES_ROOT, API_URL

register = template.Library()

@register.simple_tag
def getAgent():
    REQUEST_URL = API_URL + '/agents/'

    response = requests.get(REQUEST_URL, timeout=10)
    response.raise_for_status()

    agents = response.json()
    
    random_agent = random.randint(1, len(agents))

    for agent in agents:
        random_agent-=1
        if random_agent <= 0:
            return agent