#define BLYNK_PRINT Serial
#define BLYNK_TEMPLATE_ID "TMPL6SNko-pZ2"
#define BLYNK_TEMPLATE_NAME "DHT11"
#define BLYNK_AUTH_TOKEN "TnzUP9d7_712Ag1BVFOC83IDQDKbUbTf"

#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include <DHT.h>

#define DHTPIN D1     // Pin data sensor DHT11 terhubung ke pin D2
#define DHTTYPE DHT11 // Jenis sensor DHT11

char auth[] = "Paste";     // Token otentikasi Blynk
char ssid[] = "RENNY";     // Nama jaringan WiFi
char pass[] = "ABdus1506"; // Kata sandi jaringan WiFi

DHT dht(DHTPIN, DHTTYPE);
void setup()
{
    Serial.begin(9600);
    Blynk.begin(auth, ssid, pass);
    dht.begin();
}
void loop()
{
    Blynk.run();
    float humidity = dht.readHumidity();
    float temperature = dht.readTemperature();
    if (isnan(humidity) || isnan(temperature))
    {
        Serial.println("Gagal membaca data dari sensor DHT11!");
        return;
    }
    Blynk.virtualWrite(V5, humidity);    // Mengirim data ke widget Value Display di pin V5
    Blynk.virtualWrite(V6, temperature); // Mengirim data ke widget Value Display di pin V6
    delay(2000);                         // Delay 2 detik sebelum membaca data sensor lagi
}
