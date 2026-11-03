// title here

int level;
Enemy e1;
Chef player;
Level l1;
UI ui;

import gifAnimation.*;

Gif attack;

void setup() {
  background(220);
  size(500, 500);

  l1 = new Level();
  level = 0;
  player = new Chef(width/2, height/2);
  ui = new UI(player.health);
  attack = new Gif(this, "Melee.gif");
}


void draw() {
  background(255);
  l1.level(level);
  player.update();
  player.display();
  ui.display();
  //if(l1.levelComplete() && player@rightedge){
  //  level++;
  //  plaery.move(left side);
  //}
}

void keyPressed() {
  if (key == 'w') player.movingUp = true;
  if (key == 's') player.movingDown = true;
  if (key == 'a') player.movingLeft = true;
  if (key == 'd') player.movingRight = true;

  if (keyCode == 32) {
    if (player.meleeCooldown < 1) {
      player.melee();
      attack.play();
      image(attack, player.x, player.y);
      attack.noLoop();
    } else {
      println("Cooldown: " + player.meleeCooldown);
    }
  }
}

void keyReleased() {
  if (key == 'w') player.movingUp = false;
  if (key == 's') player.movingDown = false;
  if (key == 'a') player.movingLeft = false;
  if (key == 'd') player.movingRight = false;
}
