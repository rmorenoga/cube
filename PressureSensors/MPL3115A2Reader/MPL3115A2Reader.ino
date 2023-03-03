#include <Wire.h>
#include <SparkFunMPL3115A2.h>

MPL3115A2 sensor;

float pressure;
float temperature;
char x;

void setup() {
  Wire.begin();

  sensor.begin(); // Get sensor online

  sensor.setModeBarometer(); // Measure pressure in Pascals from 20 to 110 kPa
  
  sensor.setOversampleRate(7); // Set Oversample to the recommended 128
  sensor.enableEventFlags(); // Enable all three pressure and temp event flags 

  Serial.begin(115200);
  delay(500);

}

void loop() {
  while(!Serial.available());

  x = Serial.read();

  if(x == 'r'){
     pressure = sensor.readPressure();
     temperature = sensor.readTemp();
     Serial.print(pressure);
     Serial.print(", ");
     Serial.print(temperature);
     Serial.println();
  }else{
    Serial.println("Command not recognized");
  }

  


}
