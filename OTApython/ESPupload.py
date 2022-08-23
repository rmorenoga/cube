import csv
import random
import uploadAsyncElegantOTA as asyncOTA
import espota as basicOTA


def uploadFromList(ipRangeStart,ipRangeEnd,skipList, firmwarePath, otaType, timeout = 10):
    """A function that uploads firmware to multiple ESP32s OTA
       
    Parameters
    ----------
    iPRangeStart : int
        The start of the ip range in which the ESPs are connected

    iPRangeEnd : int
        The end of the ip range in which the ESPs are connected

    skipList : int[]
        An array of ints with the ip terminators to skip while uploading

    firmwarePath : str
        The path of the firmware file to upload


    otaType : str
        The type of OTA script to use:
            basicOTA: OTA script used for the BasicOTA arduino example (extracted from the arduino IDE)
            asyncOTA: OTA script used for the AsyncElegantOTA server (extracted from platformIO) 
    timeout : int, optional
        The time out time in seconds for connecting to the ESPs and reading a response (default is 10)
    """


    for i in range(ipRangeStart,ipRangeEnd):
        if i not in skipList:
            print("192.168.1."+i)
            if(otaType=='asyncOTA'):
                asyncOTA.upload(firmwarePath,"http://192.168.1."+i+"/update",timeout)
            if(otaType=='basicOTA'):
                basicOTA.TIMEOUT = timeout
                basicOTA.serve("192.168.1."+i, "0.0.0.0", 3232, random.randint(10000,60000), "", firmwarePath)



#uploadFromList('espAddresses.csv','basicOTA')
help(uploadFromList)