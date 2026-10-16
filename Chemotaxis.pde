Bacteria[] colony;
void setup()
{
 size(1000, 1000);
 colony = new Bacteria[1000];
 for (int i = 0; i < colony.length; i++) {
   colony[i] = new Bacteria();
}
} //end of setup


void draw(){
  background(170,20,20);
  for (int i = 0; i < colony.length; i++) {
    colony[i].show();
    colony[i].walk();
 }
 fill(255, 150, 125);
 rect(mouseX, mouseY, 30, 30);
} //end of draw
  
  
class Bacteria{
 int myX, myY;
 Bacteria() {
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
} //end of class


void walk() {
  myX = myX + (int)(Math.random()*10)-1;
  myY = myY + (int)(Math.random()*10)-1;
  if (mouseX > myX) {
    myX = myX + (int)(Math.random()*10)-1;
  } 
  else {
    myX = myX + (int)(Math.random()*10)-11;
  }

  if (mouseY > myY) {
    myY = myY + (int)(Math.random()*10)-1;
  } else {
    myY = myY + (int)(Math.random()*10)-11;
  }
    } //end of walk

void show() {
   fill(80, 130, 50);
   rect(myX, myY, 30, 30);
   fill(100,50,50);
   rect(250,250,10,40);
   rect(510,360,10,40);
   rect(10,867,10,40);
   rect(709,505,10,40);
   rect(350,750,10,40);
   rect(390,360,10,40);
   rect(100,777,10,40);
   rect(676,767,10,40);
   rect(801,79,10,40);
  }
}
