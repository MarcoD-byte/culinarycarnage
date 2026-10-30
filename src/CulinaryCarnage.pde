// title here

int level;
Enemy e1;
Chef player;
Level l1;

void setup(){
  background(220);
  size(500,500);

  l1 = new Level();
  level = 0;
  player = new Chef(100,100);
}


void draw() {
  background(255);
  l1.level(level);
  player.update();
  player.display();
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
