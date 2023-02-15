#include "Wire.h"

#include <Sodaq_LPS22HB.h>

Sodaq_LPS22HB barometricSensor5D(Wire,0x5D);

void setup() {
  while (!Serial);
    delay(1000);

    Wire.begin();
    
    Serial.begin(115200);

    //Serial.println("\nSensor reader ready!");

    if (barometricSensor5D.init()) {
        //Serial.println("Barometric sensor 5D initialization succeeded!");
        barometricSensor5D.enableSensor(Sodaq_LPS22HB::OdrOneShot);
    }else {
        //Serial.println("Barometric sensor 5D initialization failed!");
    }

    Serial.print("Pressure(HPA)");

   delay(1000);

}

void loop() {
    Serial.println(barometricSensor5D.readPressureHPA());
    //Serial.print(",");
    //Serial.println(barometricSensor5D.readTemperature());

    delay(500);

}
