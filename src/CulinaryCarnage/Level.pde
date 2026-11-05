// Marco DalCanto
class Level {
  int level, currentEnemyCount;
  IntList enemyxPosition, enemyyPosition, levelEnemyCounts, enemyType;


  Level () {
    levelEnemyCounts = new IntList(0, 2);
    enemyxPosition = new IntList(500, 500);
    enemyyPosition = new IntList(100, 200);
    enemyType = new IntList(1, 2);
    currentEnemyCount = 0;
  }


  //PImage background01;

  //background01 = laodImage("url here");
  void level(int level) {
    if (level ==0) {
      // Tutorial level
      for (int i= 0; levelEnemyCounts.get(0)>currentEnemyCount; i++) {
        //println(i);
        enemies.add(new Enemy(enemyxPosition.get(i), enemyyPosition.get(i), enemyType.get(i)));
        currentEnemyCount++;
      }
      
      //replace background with image
      background(10);
      fill(#E89921, 95);
      textSize(30);
      textAlign(CENTER);
      text("Move with\nWASD", width/3, 100);
      text("Use space\nto attack", 2* width/3, 100);
      fill(150, 50);
      textSize(15);
      text("Game made by Franklin, Jonah, Marco, and Sarah", width/2, 400);
      
      
    } else if (level ==1) {
      // First level
      background(10);
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
