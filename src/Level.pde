class Level {
  int level, currentEnemyCount;
  ArrayList<Enemy> enemies = new ArrayList <Enemy>();
  IntList enemyPosition;
  IntList levelEnemyCounts;



  Level () {
    levelEnemyCounts = new IntList(2, 2);
    enemyPosition = new IntList(500, 0, 200, 200, 1, 1);
  }


  //PImage background01;

  //background01 = laodImage("url here");
  void level(int level) {
    if (level ==0) {
      // Tutorial level
      for (int i= 0; levelEnemyCounts.get(0)>currentEnemyCount; i+=2) {
        println(i);
        enemies.add(new Enemy(enemyPosition.get(i), enemyPosition.get(i+1)));
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
      for (int i = 1; i< enemies.size(); i++) {
        Enemy e = enemies.get(i);
        e.display();
        e.move();
        println(e.x + " " + e.y);
      }
      
      
      
    } else if (level ==1) {
      // First level
    } else if (level ==2) {
      // First level
    } else if (level ==3) {
      // First level
    } else if (level ==4) {
      // First level
    } else {
    }
  }
}
