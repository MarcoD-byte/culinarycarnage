// Sarah Zhang

int level;
Enemy e1;
Chef player;
Level l1;
UI ui;
ArrayList<Enemy> enemies = new ArrayList <Enemy>();


import gifAnimation.*;

Gif attack;

void setup() {
  background(220);
  size(800, 800);
  l1 = new Level();
  level = 0;
  player = new Chef(this);
  ui = new UI(player.health);
  attack = new Gif(this, "Melee.gif");
}


void draw() {
 if (player.health<1){
    level=100;
    player.health=150;
  }  
  l1.level(level);
  player.update();
  player.display();
  ui.display();
  for (int i = 0; i < enemies.size(); i++) {
    Enemy e = enemies.get(i);
    e.display();
    e.move();
    println(e.x + " " + e.y);
    if (e.isHitPlayer(player) == true) {
      println("hit");
      player.health --;
    } else {
      println("noHit");
    }
  }
    if (l1.levelComplete() && player.atREdge()) {
    l1.currentEnemyCount=0;
    player.relocate(25, 3*height/4);
    if(l1.dead){
      level=1;
    }else{
      level++;
    }
  }else if(player.atLEdge()){
   l1.currentEnemyCount=0;
   level--;
   player.relocate(width-100, height/4);
  }
}

void keyPressed() {
  if (key == 'w') player.movingUp = true;
  if (key == 's') player.movingDown = true;
  if (key == 'a') player.movingLeft = true;
  if (key == 'd') player.movingRight = true;

 if (keyCode == 32) {
    if (player.meleeCooldown < 1) {
      player.attacking = true;
    }else {
      println("Cooldown: " + player.meleeCooldown);
    }
    attack.jump(0);
    player.melee();
  }
}

void keyReleased() {
  if (key == 'w') player.movingUp = false;
  if (key == 's') player.movingDown = false;
  if (key == 'a') player.movingLeft = false;
  if (key == 'd') player.movingRight = false;
}
