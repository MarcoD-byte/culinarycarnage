// Marco DalCanto //<>// //<>// //<>//
class UI {
  //vars
  int health, heartCount;
  ArrayList<Heart> hearts = new ArrayList <Heart>();

  //constructor
  UI (int health) {
    heartCount = 0;
    this.health = health;
  }


  //methods


  void display() {
    if (!l1.dead) {
      this.health = player.health;
      // Display background square
      fill(#B76E25, 50);
      rectMode(CENTER);
      rect(625, 75, 225, 150, 10);
      fill(#D82809);
      textSize(25);
      textAlign(CENTER);
      text("Health", 625, 125);

      // display hearts
      heartCount = 0;
      hearts.clear();
      for (int i = 0; i<health; i++) {
        hearts.add(new Heart(50*i+550, 50));
        heartCount++;
      }
      for (int i = 0; hearts.size()>i; i++) {
        Heart h = hearts.get(i);
        h.display();
      }

      // playerCooldown bar
      rectMode(CORNERS);
      noFill();
      stroke(3);
      rect(685, 100, 695, 20);
      noStroke();
      fill(255);
      if (player.meleeCooldown>0) {
        rect(685, 100, 695, 20+((player.meleeCooldown)));
      } else {
        rect(685, 100, 695, 20);
      }
    }
  }

  //void damaged() {
  //  Heart h = hearts.get(health-1);
  //  h.animate();
  //}

  // add method for cooldown timer
}
