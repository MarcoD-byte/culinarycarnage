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
  e1.display();
  e1.move();

  player.display();
  player.update();
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
