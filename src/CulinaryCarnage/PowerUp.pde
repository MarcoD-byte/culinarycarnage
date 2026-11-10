//Sarah Zhang
//To do: replace image plaeholders, make powerup effects work
class PowerUp{
int x, y, size, health, speed, harm, cooldown;
boolean isHit;
char type;
PImage powUpi;

//member variables

// constructor
PowerUp(int x, int y, char type){
  this.x = x;
  this.y = y;
  size = 10;
  this.type = type;
  if (type == 'a'){
  powUpi =  loadImage("");
  }else if(type == 'b'){
  powUpi =  loadImage("");
  }
}
//member methods
void display(){
  imageMode(CENTER);
  //REPLACE PLACEHOLDERS
  //image(powUpi,x,y);
if (type == 'a'){
  //replace placeholders
  fill(5);
  ellipse(x, y,size,size);
  }else if (type == 'b'){
  //replace placeholders
  fill(100);
  ellipse(x, y,size,size);
  }
}

boolean isHit(Chef player){
  float d = dist(x, y, player.x,player.y);
  if (d<25){
  return true;
  }else{
  return false;
  }
}


}
