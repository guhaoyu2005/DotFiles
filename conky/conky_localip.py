#!/usr/bin/env python3
#
# Conky localip plugin
# 
import sys
import socket
import fcntl
import struct

DEFAULT_MSG = "127.0.0.1"
USING_IF = "wlan0"
SIOCGIFADDR = 0xC0206921 # freebsd by default

os = sys.platform
if "linux" in os:
    SIOCGIFADDR = 0x8915
elif "freebsd" in os:
    SIOCGIFADDR = 0xC0206921
else:
    print("OS not supported")
    exit()

if len(sys.argv) >= 2:
    USING_IF = sys.argv[1]
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

try:
    ip = socket.inet_ntoa(
            fcntl.ioctl(
                s.fileno(), 
                SIOCGIFADDR, 
                struct.pack('256s', (USING_IF[:15].encode('utf-8')))
            )[20:24])
    print(f'{ip}[{USING_IF}]')
except:
    print(f'{DEFAULT_MSG}[LOCAL]')

s.close()
