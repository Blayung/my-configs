#!/bin/python3
from json import loads
from requests import get
from os import system

key='' #API key
location='Warsaw, Poland' #Format: "City, Country"
try:
    time=loads(get(f'https://timezone.abstractapi.com/v1/current_time/?api_key={key}&location={location}').text)['datetime']
except:
    print('error occured while requesting the time from https://timezone.apstractapi.com')
    exit()

print(f'timedatectl set-time "{time}"')
system(f'timedatectl set-time "{time}"')
