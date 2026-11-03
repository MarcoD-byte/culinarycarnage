// title here

int level;
Enemy e1;
Chef player;
Level l1;

import gifAnimation.*;

Gif attack;

void setup(){
  background(220);
  size(500,500);

  l1 = new Level();
  level = 0;
  player = new Chef(100,100);

  attack = new Gif(this, "Melee.gif");
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

  if (keyCode == 32) {
    player.melee();
  }
}

void keyReleased() {
  if (key == 'w') player.movingUp = false;
  if (key == 's') player.movingDown = false;
  if (key == 'a') player.movingLeft = false;
  if (key == 'd') player.movingRight = false;
}
