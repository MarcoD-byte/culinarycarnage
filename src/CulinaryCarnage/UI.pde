// Marco DalCanto
class UI {
  //vars
  int health;
  IntList hearts;

  //constructor
  UI (int health) {
    this.health = health;
    IntList hearts = new IntList ();
    for (int i=0; i< health; i++) {
      hearts.append(i);
    }
  }


  //methods


  void display() {
    if (!l1.dead) {
      fill(#B76E25, 50);
      rectMode(CENTER);
      rect(625, 75, 225, 150, 10);
      fill(#D82809);
      ellipseMode(CENTER);
      for (int i = 1; i<(player.health)/50; i++) {
        image(heart, 50*i+525, 50);
      }
      textSize(25);
      textAlign(CENTER);
      text("Health", 625, 125);
    }
  }
}
