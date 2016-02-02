import serial
import syslog
import time

#The following line is for serial info
port = '/dev/ttyUSB0' #Change this to match your serial port


ard = serial.Serial(port,9600,timeout=5)
time.sleep(2) # wait for Arduino

i = 0

while (i < 1):
    # Serial write section
    ard.flush()
    ard.write("POWER") #your command that you wanted to send to Arduino
    time.sleep(1) # Give it time you must.

    # Serial read section
    msg = ard.read(ard.inWaiting()) # read all characters in buffer
    print ("Message from arduino: ")
    print (msg)
    i = i + 1
else:
    print "Exiting"
exit()
