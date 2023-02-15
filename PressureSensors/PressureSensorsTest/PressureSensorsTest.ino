/**
 * TCA9548 I2CScanner.ino -- I2C bus scanner for Arduino
 *
 * Based on https://playground.arduino.cc/Main/I2cScanner/
 *
 */

#include "Wire.h"

#include <Sodaq_LPS22HB.h>

#define TCAADDR 0x70
Sodaq_LPS22HB barometricSensor5D(Wire,0x5D);
Sodaq_LPS22HB barometricSensor5C(Wire,0x5C);

void tcaselect(uint8_t i) {
  if (i > 7) return;
 
  Wire.beginTransmission(TCAADDR);
  Wire.write(1 << i);
  Wire.endTransmission();  
}


// standard Arduino setup()
void setup()
{
    while (!Serial);
    delay(1000);

    Wire.begin();
    
    Serial.begin(115200);

    
    
    //Serial.println("\nTCAScanner ready!");
    
    for (uint8_t t=0; t<2; t++) {
      tcaselect(t);
      //Serial.print("TCA Port #"); Serial.println(t);

      for (uint8_t addr = 0; addr<=127; addr++) {
        if (addr == TCAADDR) continue;

        Wire.beginTransmission(addr);
        if (!Wire.endTransmission()) {
          //Serial.print("Found I2C 0x");  Serial.println(addr,HEX);
        }
      }
     
      if (barometricSensor5D.init()) {
        //Serial.println("Barometric sensor 5D initialization succeeded!");
        barometricSensor5D.enableSensor(Sodaq_LPS22HB::OdrOneShot);
    }
    else {
        //Serial.println("Barometric sensor 5D initialization failed!");
    }

    if (barometricSensor5C.init()) {
        //Serial.println("Barometric sensor 5C initialization succeeded!");
        barometricSensor5C.enableSensor(Sodaq_LPS22HB::OdrOneShot);
    }
    else {
        //Serial.println("Barometric sensor 5C initialization failed!");
    }

    
    //Serial.print("Temperature 5D: ");
    //Serial.println(barometricSensor5D.readTemperature());
    //Serial.println();

    delay(1000);
    }
    Serial.println("Pressure5DCH1,Pressure5CCH1,Pressure5DCH2,Pressure5CCH2");

    
}

void loop() 
{
  for (uint8_t t=0; t<2; t++) {
      tcaselect(t);
  Serial.print(barometricSensor5D.readPressureHPA());
  Serial.print(",");
  Serial.print(barometricSensor5C.readPressureHPA());
  Serial.print(",");    
  }
  Serial.println();
}
