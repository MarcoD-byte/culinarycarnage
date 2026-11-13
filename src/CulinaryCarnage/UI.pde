// Marco DalCanto //<>// //<>// //<>// //<>//
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
    heartCount = 0;
    hearts.clear();
    this.health = player.health;
    //if (!l1.dead) {
    fill(#B76E25, 50);
    rectMode(CENTER);
    rect(625, 75, 225, 150, 10);
    fill(#D82809);
    ellipseMode(CENTER);
    textSize(25);
    textAlign(CENTER);
    text("Health", 625, 125);
    for (int i = 0; i<health; i++) {
      hearts.add(new Heart(50*i+550, 50));
      heartCount++;
    }
    for (int i = 0; hearts.size()>i; i++) {
      Heart h = hearts.get(i);
      h.display();
    }
  }

  //void damaged() {
  //  Heart h = hearts.get(health-1);
  //  h.animate();
  //}

  // add method for cooldown timer
}
