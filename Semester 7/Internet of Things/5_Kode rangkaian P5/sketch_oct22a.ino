#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>

#include "DHT.h"
#define DHTTYPE DHT11

#include "HTML.h"

const char* ssid = "iPhone seby";
const char* password = "Sabrina123";

ESP8266WebServer server(80);

const int DHTPin = D1;
DHT dht(DHTPin, DHTTYPE);

void handleRoot() {
  String s = MAIN_page;
  server.send(200, "text/html",s);
}

void handleDHT11Temperature(){
  float t = dht.readTemperature();
  String Temperature_Value = String(t);
  server.send(200, "text/plane", Temperature_Value);

  if (isnan(t)) {
    Serial.println("Gagal Membaca dari Sensor DHT!");
  }
  else {
    Serial.print("DHT 11 || Suhu: ");
    Serial.print(t);
    Serial.print(" || ");
  }
}

void handleDHT11Humidity(){
  float h = dht.readHumidity();
  String Humidity_Value = String(h);
  server.send(200, "text/plane", Humidity_Value);

  if (isnan(h)) {
    Serial.println("Gagal membaca dari sensor dht");
  }
  else {
    Serial.print("Kelembaban: ");
    Serial.println(h);
  }
}

void setup(){
  Serial.begin(9600);
  delay(500);
  dht.begin();
  delay(500);

  WiFi.begin (ssid, password);
  Serial.println("");
  Serial.print("Menghubungkan");

  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
  }

  Serial.println("");
  Serial.print("Berhasil terhubung ke:  ");
  Serial.println(ssid);
  Serial.print("Alamat IP: ");
  Serial.println(WiFi.localIP());

  server.on("/", handleRoot);
  server.on("/readTemperature", handleDHT11Temperature);
  server.on("/readHumidity", handleDHT11Humidity);
  
  server.begin();
  Serial.println("Server HTTP dimulai");
}

void loop() {
  server.handleClient();
}
