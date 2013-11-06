void setup() {
    Serial.begin(9600);
}
void loop() {
    int analogValue = (A2) /4;      // read the pot value
    Serial.write(analogValue);        // print the value in the serial monitor as a binary value
}
