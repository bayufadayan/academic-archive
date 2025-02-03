#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include <SimpleTimer.h>

#define BLYNK_PRINT Serial

int pinSensor = A0;
float valSensor = 0;

char auth[] = "auth";
char ssid[] = "name of wifi";
char pass[] = "password";

SimpleTimer timer;

void setup()
{
    Serial.begin(9600);
    Blynk.begin(auth, ssid, pass);
    timer.setInterval(2000, sendUptime);
}
void sendUptime()
{
    valSensor = analogRead(pinSensor);
    valSensor = valSensor * 0.322;
    Serial.print("Temp = ");
    Serial.println(valSensor);
    Blynk.virtualWrite(V0, valSensor);
}
void loop()
{
    Blynk.run();
    timer.run();
}