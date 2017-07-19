import processing.net.*; 
Client myClient; 
String inString;
byte interesting = 10;

void setup() { 
  size (300, 100);
  myClient = new Client(this, "192.168.1.5", 57120); 
} 

void draw() { 
  if (myClient.available() > 0) { 
    background(0); 
    inString = myClient.readStringUntil(interesting); 
    println(inString); 
  }
}
