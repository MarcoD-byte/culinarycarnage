// title here

Enemy e1;

void setup(){
  background(220);
  size(500,500);
  e1 = new Enemy(100,100);
  e1.display();
}


void draw() {
  background(255);
  e1.display();
  e1.move();
}
