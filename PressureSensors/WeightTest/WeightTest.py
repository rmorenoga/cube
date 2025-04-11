import numpy as np
import serial
import time
import pandas as pd


comPort = "COM73"


class Sensor:
    model = ""
    arduino = None


    def init(self,model):
        self.model = model

        #Connect to arduino
        self.arduino = serial.Serial(port=comPort, baudrate=115200, timeout=2)
        time.sleep(5)

        #Do a first reading
        self.arduino.write(bytes('r', 'utf-8'))

        getData= self.arduino.readline()
        data = getData.decode('utf-8').rstrip()

        print("Connected, first reading: "+data)
        print(data.split(","))

    def read(self):
        self.arduino.write(bytes('r', 'utf-8'))
        
        getData= self.arduino.readline()
        data = getData.decode('utf-8').rstrip()

        return data
    
    def closeSensor(self):
        self.arduino.close()
        time.sleep(0.5)
    

def main():

    weights = [0,35, 85, 135, 235, 535]
    positions = [0, 5, 10, 15, 20]

    #Init sensor
    sensor = Sensor()
    #sensor.init("LPS33HW")

    column_names = ["Model","Position","Weight","Pressure","Temperature"]
    file = 'WeightTest'+sensor.model+".csv"

    df = pd.DataFrame(columns = column_names)

    #Cycle through positions
    for x in positions:
        print("Put rod in position "+str(x))
        input("Press Enter to continue...")

        #Cycle through weights
        for w in weights:
            sensor.init("LPS33HW")
            print("Put weight "+str(w))
            input("Press Enter to take readings...")
            readingsPressure = []
            readingsTemperature = []
            for i in range(100):
                data = sensor.read()
                splitData = data.split(",")
                #df  = df.append({'Model': sensor.model,'Position': x,'Weight':w,'Pressure': splitData[0],'Temperature':splitData[1]},ignore_index=True)
                new_row = pd.Series({'Model': sensor.model,'Position': x,'Weight':w,'Pressure': splitData[0],'Temperature':splitData[1]})
                df = pd.concat([df, new_row.to_frame().T], ignore_index=True)
                #readingsPressure.append(splitData[0])
                #readingsTemperature.append(splitData[1])
                time.sleep(0.2)

            sensor.closeSensor()
            print(df)
            print("Remove Weight")
            input("Press Enter to continue...")
            df.to_csv(file)

            #Cycle through weights
        for w in reversed(weights[ : -1]):
            sensor.init("LPS33HW")
            print("Put weight "+str(w))
            input("Press Enter to take readings...")
            readingsPressure = []
            readingsTemperature = []
            for i in range(100):
                data = sensor.read()
                splitData = data.split(",")
                #df  = df.append({'Model': sensor.model,'Position': x,'Weight':w,'Pressure': splitData[0],'Temperature':splitData[1]},ignore_index=True)
                new_row = pd.Series({'Model': sensor.model,'Position': x,'Weight':w,'Pressure': splitData[0],'Temperature':splitData[1]})
                df = pd.concat([df, new_row.to_frame().T], ignore_index=True)
                #readingsPressure.append(splitData[0])
                #readingsTemperature.append(splitData[1])
                time.sleep(0.2)
            
            sensor.closeSensor()
            print(df)
            print("Remove Weight")
            input("Press Enter to continue...")
            df.to_csv(file)


            #print(readingsPressure)
            #print(readingsTemperature)


        


if __name__ == '__main__':
    main()

