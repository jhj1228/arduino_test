import processing.serial.*;
Serial p;
void setup(){
  size(400, 400);
  p = new Serial(this, "COM4", 9600);
}
String m="";
void draw(){
  if(p.available()>0){
    m = p.readStringUntil('\n');
    if(m!=null){
      print(m);
      background(0);
      textSize(128);
      text(m, 20, 300);
    }
  }
}
