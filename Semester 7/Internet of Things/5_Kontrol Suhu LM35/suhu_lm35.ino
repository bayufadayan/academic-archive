int pinSensor = A0;
int valSensor = 0;
int pinLED = D2;
void setup()
{
    Serial.begin(9600);
    pinMode(pinLED, OUTPUT);
}
void loop()
{
    valSensor = analogRead(pinSensor);
    valSensor = valSensor * 0.322;
    valSensor = map(valSensor, 25, 35, 0, 1024);
    analogWrite(pinLED, valSensor);
    delay(500);
}