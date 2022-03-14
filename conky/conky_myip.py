#!/usr/bin/env python3
#
# Conky myip plugin
# 
import sys
import ipaddress
import json
import urllib.request
import traceback    
import socket

DEFAULT_MSG = "[LOCAL]127.0.0.1"

IP_URL = 'https://api.ipify.org/?format=json'
IPINFO_URL = 'https://ipinfo.io/{}/geo'

try:
    data = urllib.request.urlopen(url=IP_URL)
    data = json.load(data)
     
    ip = data['ip']
    ipaddress.ip_address(ip)

    data = urllib.request.urlopen(url=IPINFO_URL.format(ip))
    data = json.load(data)
    ip_loc = data['country']
    
    print(f'{ip}[{ip_loc}]')
except:
    print(DEFAULT_MSG)

