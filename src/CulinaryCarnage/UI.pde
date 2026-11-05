// Marco DalCanto
class UI {
  //vars
  int health;


  //constructor
  UI (int health) {
    this.health = health;
  }


  //methods


  void display() {
    fill(#B76E25, 50);
    rectMode(CENTER);
    rect(40, 40, 110, 110, 10);
    for (int i = 1; i<4; i++) {
      ellipse(25*i, 20, 14, 14);
    }
    fill(#D82809, 75);
    ellipseMode(CENTER);
    for (int i = 1; i<(player.health)/50+1; i++) {
      ellipse(25*i, 20, 14, 14);
    }
    textSize(20);
    textAlign(CENTER);
    text("Health", 50, 50);
  }
}
