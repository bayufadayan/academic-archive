    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println(""); 
  
    client.println("<!DOCTYPE HTML>");
    client.println("<html>");
    client.println("<head>");
    client.println("<title> Controlling LED with Local WiFi </title>");
    client.println("</head>");
    client.println("<body align= \"center\" >");
    client.println("<h1 style=\"text-align: center\"> <font size = \"25\" >  LED Control with Local Wifi Network  </font> </h1> ");
    client.println("<h2 style=\"text-align: center\"> <font size = \"17\" >  RED LED  </font> </h2> ");
    client.println("<p style=\"text-align: center\"> <a href=\"/led-on-1\">  <button style=\"height:60px; background-color: red; width:200px; margin: 0 auto; text-align: center; cursor: pointer\"> ON  </button> <a> </font></p> ");
    client.println("<p style=\"text-align: center\"> <a href=\"/led-off-1\"> <button style=\"height:60px; background-color: red; width:200px; margin: 0 auto; text-align: center; cursor: pointer\" > OFF </button> <a> </font></p> ");
    client.println("<h2 style=\"text-align: center\"> <font size = \"17\" >  YELLOW LED  </font> </h2> ");
    client.println("<p style=\"text-align: center\"> <a href=\"/led-on-2\">  <button style=\"height:60px; background-color: blue; width:200px; margin: 0 auto; text-align: center; cursor: pointer\"> ON  </button> <a> </font></p> ");
    client.println("<p style=\"text-align: center\"> <a href=\"/led-off-2\"> <button style=\"height:60px; background-color: blue; width:200px; margin: 0 auto; text-align: center; cursor: pointer\" > OFF </button> <a> </font></p> ");
    client.println("</body>");
    client.println("</html>");

    Serial.println("Client disonnected");
    Serial.println("------------------");
    Serial.println("                  ");
