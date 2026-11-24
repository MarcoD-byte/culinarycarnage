// Marco DalCanto
class UI {
  //vars
  int health, heartCount, money;
  ArrayList<Heart> hearts = new ArrayList <Heart>();

  //constructor
  UI (int health) {
    heartCount = 0;
    this.health = health;
    money = 0;
  }


  //methods


  void display() {
    if (!l1.dead) {
      this.health = player.health;
      // Display background square
      fill(#B76E25, 50);
      rectMode(CENTER);
      rect(630, 75, 300, 150, 10);
      fill(#D82809);
      textSize(25);
      textAlign(CENTER);
      text("Health", 550, 90);

      // display hearts
      heartCount = 0;
      hearts.clear();
      for (int i = 0; i<health; i++) {
        hearts.add(new Heart(50*i+510, 40));
        heartCount++;
      }
      for (int i = 0; hearts.size()>i; i++) {
        Heart h = hearts.get(i);
        h.display();
      }
      fill(#E89921);
      text("Level: "+level, 550, 130);

      // playerCooldown bar
      rectMode(CORNERS);
      noFill();
      stroke(3);
      rect(750, 100, 760, 20);
      noStroke();
      if (player.meleeCooldown>0) {
        fill(255/player.meleeCooldown*3.4);
        rect(750, 100, 760, 20+((75*player.meleeCooldown)/75));
      } else {
        fill(255);
        rect(750, 100, 760, 20);
      }
      // Display money count
      fill(#D6A51E);
      text("$" + money, 675, 45);
    }
  }

  //void damaged() {
  //  Heart h = hearts.get(health-1);
  //  h.animate();
  //}

  // add method for cooldown timer
}
