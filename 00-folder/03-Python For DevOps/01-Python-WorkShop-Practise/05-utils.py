# os aik library hai
import os
import datetime

'''
# df -h aik linux command hai jis se system ki sari desk information dekhi jati hai
print(os.system('df -h'))

# uptime se command ye btati hai k pc kab se on hai 
print(os.system('uptime')) 

# system RAM check karne ke liye free -h command hai
print(os.system("free -h"))
'''

# FUNCTIONS

'''def check_cpu(command): # function define kiya hai 
    print(os.system(command))

check_cpu("df -h") # function call kiya hai
'''


def show_date():
    return datetime.datetime.today()

show_date() # function define kiya or call b kiya but run nai ho raha to isy aik variable main store kar k phir print karwa doo

today = show_date() # function ko variable main store kiya
print(today) # variable print kiya
