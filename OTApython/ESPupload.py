import csv
import random
import uploadAsyncElegantOTA as asyncOTA
import espota as basicOTA


def uploadFromList(listFileName, otaType, timeout = 10):
    """A function that uploads firmware to multiple ESP32s OTA
       
    Parameters
    ----------
    listFileName : str
        The name of the text file that stores the ESP32 addresses and firmware file paths
        The file must be a comma separated value file (csv) with the following shape:

        ipAddress,firmwarePath
        ipAddress,firmwarePath
        ...


    otaType : str
        The type of OTA script to use:
            basicOTA: OTA script used for the BasicOTA arduino example (extracted from the arduino IDE)
            asyncOTA: OTA script used for the AsyncElegantOTA server (extracted from platformIO) 
    timeout : int, optional
        The time out time in seconds for connecting to the ESPs and reading a response (default is 10)
    """



    with open(listFileName) as f:
        reader = csv.reader(f, delimiter=',')
        addresses = [(col1, col2)
                    for col1, col2 in reader]


    for i in range(len(addresses)):
        print(addresses[i][0])
        if(otaType=='asyncOTA'):
            asyncOTA.upload(addresses[i][1],"http://"+addresses[i][0]+"/update",timeout)
        if(otaType=='basicOTA'):
            basicOTA.TIMEOUT = timeout
            basicOTA.serve(addresses[i][0], "0.0.0.0", 3232, random.randint(10000,60000), "", addresses[i][1])



#uploadFromList('espAddresses.csv','basicOTA')
help(uploadFromList)