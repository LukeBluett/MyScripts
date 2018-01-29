import datetime
import time
import subprocess

def getBatteryPercentage():
    return open("/sys/class/power_supply/BAT0/capacity", "r").readline()

def getBatteryStatus():
    return open("/sys/class/power_supply/BAT0/status", "r").readline()

def getDate():
    return datetime.datetime.now()

def showInfo():
    print(
        "\n", getDate(),
        "\n\nBattery Percentage: \t", getBatteryPercentage(),
        "\nBattery Status: \t", getBatteryStatus()
    )

while(True):
    process = subprocess.Popen(["clear"])
    showInfo() 
    time.sleep(15)
