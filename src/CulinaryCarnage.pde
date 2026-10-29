// title here

int level;
Enemy e1;
Chef player;

void setup(){
  background(220);
  size(500,500);
  e1 = new Enemy(100,100);
  e1.display();
  level = 1;
  player = new Chef(100,100);
}


void draw() {
  background(255);
  e1.display();
  player.display();
  player.update();
  e1.move();
}

void keyPressed() {
  if (key == 'w') player.movingUp = true;
  if (key == 's') player.movingDown = true;
  if (key == 'a') player.movingLeft = true;
  if (key == 'd') player.movingRight = true;

}

void keyReleased() {
  if (key == 'w') player.movingUp = false;
  if (key == 's') player.movingDown = false;
  if (key == 'a') player.movingLeft = false;
  if (key == 'd') player.movingRight = false;
}
