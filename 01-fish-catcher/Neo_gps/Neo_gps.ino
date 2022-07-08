#include <SoftwareSerial.h>

// The serial connection to the GPS module
SoftwareSerial ss(3, 4);

int state = 0;

void setup(){
  Serial.begin(9600);
  ss.begin(9600);
  pinMode(13,OUTPUT);
}

void loop(){
  while (ss.available() > 0){
    // get the byte data from the GPS
    byte gpsData = ss.read();
    Serial.write(gpsData);
    state = not state;
    digitalWrite(13, state);
  }

  
}
