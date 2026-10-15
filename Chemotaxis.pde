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
  background(255);
  for (int i = 0; i < colony.length; i++) {
    colony[i].show();
    colony[i].walk();
 }
 fill(200, 200, 0);
 ellipse(mouseX, mouseY, 10, 10);
} //end of draw
  
  
class Bacteria{
 int myX, myY;
 Bacteria() {
   myX = (int)(Math.random()*1000);
   myY = (int)(Math.random()*1000);
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
      fill(255, 0, 0);
      ellipse(myX, myY, 30, 30);
    }
  }
