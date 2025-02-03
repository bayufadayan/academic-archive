
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27, 20, 4);

void setup()
{
    lcd.begin();
    Wire.begin(D2, D1);
    lcd.backlight();
    lcd.print("Hello, world!");
}

void loop()
{
}