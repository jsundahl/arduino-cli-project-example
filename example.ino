const int pin1 = 2;
const int pin2 = 14;

void setup() {
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
}

void loop() {
  digitalWrite(pin1, HIGH);
  delay(50);
  digitalWrite(pin1, LOW);

  delay(1000);

  digitalWrite(pin2, HIGH);
  delay(50);
  digitalWrite(pin2, LOW);

  delay(1000);
}
