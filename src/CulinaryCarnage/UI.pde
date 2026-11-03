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
    rect(40, 40, 100, 100, 10);
  }
}
