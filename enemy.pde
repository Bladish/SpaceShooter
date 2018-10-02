public class Enemy extends CharacterBase {
  
  float speed=10;


float sinY=random(40, 300);
float sinB=random(15,40);;//random(0.1, 0.3);
float sinA=random(50, 80);

public Enemy(float x, float y){

super(x, y);

}

void enemyMovement(){



position.x=position.x+speed;

//I WON, THIS WAVEY BULLSHIT LOST!
position.y=(sinA * sin((position.x/4)/sinB)+284)+sinY;



if(position.x>width){
position.x=0;
}

if(position.x<0){
 position.x=width;
}
/*
if(position.y<0){
 position.y=height+1;
}

if(position.y>height){
 position.y=1;
}
*/
}

  void draw(){

  fill(0,0,255);
  ellipse(position.x, position.y, 40, 40);

}


}
