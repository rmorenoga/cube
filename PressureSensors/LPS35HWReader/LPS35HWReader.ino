#include <Adafruit_LPS35HW.h>

Adafruit_LPS35HW lps35hw = Adafruit_LPS35HW();

// For SPI mode, we need a CS pin
//#define LPS_CS  10
// For software-SPI mode we need SCK/MOSI/MISO pins
//#define LPS_SCK  13
//#define LPS_MISO 12
//#define LPS_MOSI 11

char x;
float pressure;
float temperature;

void setup() {
  Serial.begin(115200);
  while (!Serial) { delay(1); }

  if (!lps35hw.begin_I2C()) {
    Serial.println("Couldn't find LPS35HW chip");
    while (1);
  }


}

void loop() {
  while(!Serial.available());

  x = Serial.read();

  if(x == 'r'){
     pressure = lps35hw.readPressure();
     temperature = lps35hw.readTemperature();
     Serial.print(pressure);
     Serial.print(", ");
     Serial.print(temperature);
     Serial.println();
  }else{
    Serial.println("Command not recognized");
  }

  

}
