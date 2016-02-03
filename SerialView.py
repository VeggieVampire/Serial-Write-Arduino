#!/usr/bin/python
from time import sleep
import serial


ser = serial.Serial('/dev/ttyUSB0', 9600) # Establish the connection on a specific port

x = 1
while True:
        print ser.readline() # Read the newest output from the Arduino
        x += 1
