Chef player1;


void setup(){
  background(220);
  size(500,500);
  e1 = new Enemy(100,100);
  e1.display();
  level = 0;
  player1 = new Chef();
}


void draw() {
  Level.level(level);
  e1.display();
  e1.move();
}
