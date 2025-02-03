#define BLYNK_PRINT Serial
//paste dari blynk
#define BLYNK_TEMPLATE_ID "Paste"
#define BLYNK_TEMPLATE_NAME "PASTE"
#define BLYNK_AUTH_TOKEN "Paste"

#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>

char auth[] = "Paste";//paste dari blynk
char ssid[] = "nama wifi";//Nama Wifi
char pass[] = "password wifi";//password wifi
int value;

BLYNK_WRITE(V0) {
// Fungsi ini dipanggil ketika tombol Blynk ditekan
value = param.asInt(); // Membaca nilai tombol (0 atau 1)
Serial.println(value);
}

void setup() {
Serial.begin(115200);
Blynk.begin(auth, ssid, pass);
pinMode(D1, OUTPUT); // Atur pin D1 sebagai output
}

void loop() {
Blynk.run();
digitalWrite(D1, value);
// Mengendalikan lampu LED sesuai dengan nilai tombol


