class Level {
  int level, currentEnemyCount;
  ArrayList<Enemy> enemies = new ArrayList <Enemy>();
  IntList enemyxPosition, enemyyPosition, levelEnemyCounts, enemyType;


  Level () {
    levelEnemyCounts = new IntList(2, 2);
    enemyxPosition = new IntList(500, 500);
    enemyyPosition = new IntList(100, 200);
    enemyType = new IntList(1,2);
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
      for (int i = 0; i < enemies.size(); i++) {
        Enemy e = enemies.get(i);
        e.display();
        e.move();
        println(e.x + " " + e.y);
        if (e.isHitPlayer(player) == true) {
          println("hit");
        } else {
          println("noHit");
        }
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
  boolean levelComplete (){
    if (enemies.size() == 0){
     return true; 
     
    }else{
     return false; 
    }
    
  }
  
}
