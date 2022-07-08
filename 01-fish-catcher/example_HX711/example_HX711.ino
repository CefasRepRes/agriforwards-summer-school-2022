#include "HX711.h"

void castout (void);
void reelin (void);

// HX711 circuit wiring
const int LOADCELL_DOUT_PIN = 2;
const int LOADCELL_SCK_PIN = 3;

int reeling_state = 1;
HX711 scale;

#define REEL_VALUE 100 // Value to start reeling in
#define CAST_VALUE 1 // Value to start casting out

void setup() {
  Serial.begin(57600);
  scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
}

void loop() {

  if (scale.is_ready()) {
    long reading = scale.read();
    Serial.print("HX711 reading: ");
    Serial.println(reading);
  } else {
    Serial.println("HX711 not found.");
  }
  if (scale < CAST_VALUE) {
    reeling_state = 1;
  } else if {scale > 

  switch (reeling_state) {
    case 1:
      castout();
      break;
    case 2:
      reelin();
      break;
    default:
      break;
  }

  delay(1000);
  
}

void castout (void){}


void reelin (void) {}
