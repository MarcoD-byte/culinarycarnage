// Marco DalCanto
class Level {
  int level, currentEnemyCount;
  IntList enemyxPosition, enemyyPosition, levelEnemyCounts, enemyType;
  PImage bg;
  boolean dead;

  Level () {
    levelEnemyCounts = new IntList(0, 2);
    enemyxPosition = new IntList(400, 400);
    enemyyPosition = new IntList(height/3, 2*height/3);
    enemyType = new IntList(1, 1);
    currentEnemyCount = 0;
    bg = loadImage("bg.png");
    bg.resize(800,800);
    dead = false;
  }


  //PImage background01;

  //background01 = laodImage("url here");
  void level(int level) {
    if (level ==0) {
      // Tutorial level
      enemies.clear();
      for (int i= 0; levelEnemyCounts.get(0)>currentEnemyCount; i++) {
        //println(i);
        enemies.add(new Enemy(enemyxPosition.get(i), enemyyPosition.get(i), enemyType.get(i)));
        currentEnemyCount++;
      }

      //replace background with image
      background(bg);
      fill(#E89921, 95);
      textSize(30);
      textAlign(CENTER);
      rectMode(CENTER);
      text("Move with\nWASD", width/3, 100);
      text("Use space\nto attack", 2* width/3, 100);
      text("Enter kitchen\nhere", width-150, height/2);
      triangle(width-70+50, height/2+50+25, width-70+50, height/2+50-25, width, height/2+50);
      triangle(width-70+50-25, height/2+50+25, width-70+50-25, height/2+50-25, width-25, height/2+50);
      triangle(width-70+50-50, height/2+50+25, width-70+50-50, height/2+50-25, width-50, height/2+50);
      triangle(width-70+50-75, height/2+50+25, width-70+50-75, height/2+50-25, width-75, height/2+50);
      
      fill(150, 50);
      textSize(15);
      text("Game made by Franklin, Jonah, Marco, and Sarah", width/2, height-100);
    } else if (level ==1) {
      // First level
      background(bg);
      for (int i= 0; levelEnemyCounts.get(1)>currentEnemyCount; i++) {
        //println(i);
        enemies.add(new Enemy(enemyxPosition.get(i), enemyyPosition.get(i), enemyType.get(i)));
        currentEnemyCount++;
      }
      println(enemies.size());
    } else if (level ==2) {
      // First level
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


  boolean levelComplete () {
    if (enemies.size() == 0) {
      return true;
    } else {
      return false;
    }
  }
}
