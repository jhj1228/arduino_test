void setup() {
  pinMode(11, INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  int a = digitalRead(11);
  Serial.println(a);
  delay(500);
}
