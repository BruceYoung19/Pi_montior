import datetime
import csv
import os.path

# information - for Date
x = datetime.datetime.now()
date_day = x.strftime("%x")
current_time = x.strftime("%X")

# TODO: CPU resources
f = open('computer_monitor.csv', 'w')



# main function
def main():
