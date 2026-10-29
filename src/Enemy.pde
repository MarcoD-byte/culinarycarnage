class Enemy{
  int x,y,ySpeed;
  color c1;
  
  Enemy(int x, int y){
    this.x = x;
    this.y = y;
    ySpeed = 1;
    c1 = (0);
  }

  void display() {
    fill(c1);
    ellipse(y,x,50,50);
    
  }
  
  void move() {
      y += ySpeed;
  
  }



}
