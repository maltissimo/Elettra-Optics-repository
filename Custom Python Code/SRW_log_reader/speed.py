from SRW_ME_timing import *
import sys

"""

The sys.argv command stores the input from the command line. 
This way the flag for the output() function can be set directly from command line. 

"""
for i in range( 1, len(sys.argv)):
    myArg = sys.argv[i]

output(myArg)

