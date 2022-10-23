#!/bin/python3
from json import loads
from requests import get

weather = loads(get('https://wttr.in/Zdunska+Wola?format=j1').text)["current_condition"][0]

print(f"{weather['temp_C']}°C, {weather['weatherDesc'][0]['value']}, Wind: {weather['windspeedKmph']}km/h, Pressure: {weather['pressure']}hPa")
