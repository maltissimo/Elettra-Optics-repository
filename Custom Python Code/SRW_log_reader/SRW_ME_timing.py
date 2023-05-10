#!/usr/bin/env python3

"""
This little utility is to read log files from SRW, without resorting to cat __srwlogs__/*.log every time
Added bonuses:

- It calculates the average speed of the process (how many seconds it takes to calculate 1 electron trajectory
- Based on the average speed, it gives an PCET (Process Completion Estimated Time)

"""

import json
from datetime import datetime, timedelta
import os
import glob
import tkinter
from tkinter import filedialog
"""
Some general selections
"""
electrons_now = "particle_number"
progress = "progress"
status = "status" # can be either Running or Finished
time = "timestamp"
tot_e_nr = "total_num_of_particles"

"""
A little function for selecting the path to the log files
"""
def popupselector():
    parent = tkinter.Tk()
    parent.overrideredirect(1)
    parent.withdraw()
    path = filedialog.askdirectory (title = "Please select a folder", parent = parent)
    return(path)

def extract_datetime(data):
    """

    :param data: data from the selected .json file
    :return: a datetime object with format YYYY-MM-DD HH:MM:SS which is parseable with the datetime facilities
    """
    datestring = data[timestamp]
    date_obj = datetime.strptime(datestring, "%Y-%m-%d %H:%M:%S")
    return(date_obj)

def log_to_list(log_file):
    """
    Taking a path to a log file, and extracting the contents as a list
    :param log_file: a path containing the name and pointing to a SRW *.log file
    :return: a list containing all the info in the file
    """
    f = open(log_file, "r")
    list = f.read().splitlines()
    f.close()
    return(list)

def list_to_datetime(myList, myindex):
    temp = str(myList[myindex])
    elements = temp.split()
    tempDate = elements [0] + " " + elements[1]
    myDate = (tempDate[1:][:-2])
    dateObj = datetime.strptime(myDate,"%Y-%m-%d %H:%M:%S")
    return(dateObj)

def diff_in_seconds(dateObj1, dateObj2):
    diff = dateObj2 - dateObj1
    diff_s = diff.seconds
    return(diff_s)

def speed_calcs(data_list, json_data):

    """

    :return:
    """
    time_first = list_to_datetime(data_list, 1)
    time_last = list_to_datetime(data_list, -2)
    el_nr = json_data[electrons_now]
    calc_time = diff_in_seconds(time_first, time_last)
    el_remaining = json_data[tot_e_nr] - json_data[electrons_now]
    avg_speed = el_nr/calc_time # nr of electrons per second
    seconds_el = 1/avg_speed    #nr of seconds to calculate one electron
    time_remaining = seconds_el * el_remaining
    return(avg_speed, seconds_el, time_remaining, time_first, time_last)

def time_projection (time_remaining):
    now = datetime.now()
    then = now + timedelta(seconds = time_remaining)
    return (then.strftime("%Y-%m-%d %H:%M:%S"))

def selection(myPath=""):

    if not myPath:
        myPath = popupselector()
    else:
        myPath = myPath
    #print(myPath)
    os.chdir(myPath)
    json_ext = myPath + "/*.json"
    log_ext = myPath  + "/*.log"
    json_file = glob.glob(json_ext)[-1]
    #print(str(json_file))
    log_file = glob.glob(log_ext)[-1]
    #print(str(log_file))
    file = open(json_file)
    json_data = json.load(file)
    file.close()
    return(log_file, json_data)

def output(flag="projection"):
    """
    A function calculating and formatting the output for the user to check.
        - Full means the code will calculate both speed and projection sections
        - Speed means that the code will compute only the SRW calculation speeds
        - Projection means that the code will compute only the projected time to completion in seconds/minutes and the
            projected time (in YYYY-dd-DD HH-MM-SS)

    Possible options for the paramters coded are:
        - full, Full, FULL, f, F
        - speed, Speed, SPEED, s, S
        - projection, Projection, PROJECTION, p, P

    :param flag: a string for full, speed, or end projection selection by the user
    :return: a formatted output according to the user selection.
    """
    log_file, data = selection()
    myspeed, myseconds_el, myTime, time_first, time_last = speed_calcs(log_to_list(log_file), data)
    now = datetime.now()
    now = now.strftime("%Y-%m-%d %H:%M:%S")

    pad = "##############################################################"
    speed_section = "\n"
    speed_section += "It takes about                 " + str(round(myseconds_el, 3 )) + " seconds to compute one electron. \n"
    speed_section += "The calculation speed is about " + str (round(myspeed, 3)) + " electrons/second on average."
    #speed_section += "Time first " +  str(time_first) + "\n"
    #speed_section += "Time last " + str(time_last) + "\n"


    proj_section =  "\n"
    proj_section += "Projected time to completion is : " + str(round(myTime/60, 3)) + " minutes, or " + str(round(myTime/3600 , 3)) + " hours from now." + " \n"
    proj_section += "The calcs will likely be completed at: "  + str (time_projection(myTime)) + "."

    error_message = pad
    error_message += "\n"
    error_message += " Your selected option is not valid. " + "\n\n"
    error_message += " Please select from the following: (case insensitive): "
    error_message += "\n\n"
    error_message += " full: displays the speed and the projection calculations"
    error_message += "\n"
    error_message += " speed: displays the speed calculations only"
    error_message += "\n"
    error_message += " projection: displays the projected calculation completion time"
    error_message += "\n"
    error_message += pad
    error_message += "\n"

    if flag == "full" or flag == "Full " or flag == "FULL" or flag == "f" or flag == "F":
        print(pad)
        print(speed_section)
        print(proj_section)
        print(pad)

    elif flag == "speed" or flag =="Speed" or flag == "SPEED" or flag =="s" or flag == "S":
        print(pad)
        print(speed_section)
        print(pad)

    elif flag == "projection" or flag == "Projection" or flag == "PROJECTION" or flag == "p" or flag == "P":
        print(pad)
        print(proj_section)
        print(pad)

    else:
       print(error_message)

    return ()
"""
    print(pad)
    print()
    print("It takes about                 "+ str(round(myseconds_el, 3 )) + " seconds to compute one electron")
    print()
    print("The calculation speed is about ",round(myspeed, 3) , " electron/second on average")


    print()
    print("Projected time to completion is : ", round(myTime, 3), " seconds, or ", round(myTime/60 , 3), " minutes from now")
    print("The calcs will likely be completed at: " , time_projection(myTime) )
    print()
    print(pad)
"""


