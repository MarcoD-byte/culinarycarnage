// Marco DalCanto
class Level {
  int level, currentEnemyCount;
  IntList enemyxPosition, enemyyPosition, levelEnemyCounts, enemyType;
  PImage bg;
  boolean dead;

  Level () {
    levelEnemyCounts = new IntList(0, 1, 1);
    enemyxPosition = new IntList(400, 400);
    enemyyPosition = new IntList(height/3, 2*height/3);
    enemyType = new IntList(1, 2);
    currentEnemyCount = 0;
    bg = loadImage("bg.png");
    bg.resize(800, 800);
    dead = false;
  }


  //PImage background01;

  //background01 = laodImage("url here");
  void level(int level) {
    if (level ==0) {
      // Tutorial level
      enemies.clear();
      spawn(0);

      //replace background with image
      background(bg);
      fill(#E89921, 95);
      textSize(30);
      textAlign(CENTER);
      rectMode(CENTER);
      text("Move with\nWASD", width/3, 150);
      text("Use space\nto attack", 2* width/3, 500);
      text("Enter kitchen\nhere", width-150, height/2-(height/5));
      for (int i =0; i<4; i++) {
        triangle (width-(25*i) -125, height/2-25, width -(25*i) -125, height/2 -75, width - (25*i)-100, height/2-50);
      }
      fill(150, 50);
      textSize(15);
      text("Game made by Franklin, Jonah, Marco, and Sarah", width/2, height-100);
    } else if (level ==1) {
      // First level
      background(bg);
      spawn(1);
    } else if (level ==2) {
      // Second level
      background(bg);
      spawn(2);
    } else if (level ==3) {
      // First level
    } else if (level ==4) {
      // First level
    } else {
      // You died end screen
      dead = true;
      enemies.clear();
      background(10);
      fill(#E89921, 95);
      textSize(30);
      textAlign(CENTER);
      text("You Died", width/3, 100);
      text("Walk right to \n re-start", 2* width/3, 100);
    }
  }

  void spawn(int level) {
    for (int i= 0; levelEnemyCounts.get(level)>currentEnemyCount; i++) {
      //println(i);
      int a =0;
      for (int k = 0; k<level; k++){
        a += levelEnemyCounts.get(k);
      }
      enemies.add(new Enemy(enemyxPosition.get(a+i), enemyyPosition.get(a+i), enemyType.get(a+i)));
      currentEnemyCount++;
    }
  }

  boolean levelComplete () {
    if (enemies.size() == 0) {
      return true;
    } else {
      return false;
    }
  }
}
