
int pinSensor = A0;
int valSensor = 0;
int pinRelay = DO;
void setup()
{
    Serial.begin(9600);
    pinMode(pinRelay, OUTPUT);
}

void loop()
{
    valSensor = analogRead(pinSensor);
    valSensor valSensor 0.488;
    if (valSensor > 30)
    {
        digitalWrite(pinRelay, HIGH);
    }
}
else
{
    digitalWrite(pinRelay, LOW);
}
Serial.println(valSensor);
delay(500);