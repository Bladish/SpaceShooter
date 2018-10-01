public class Enemy extends CharacterBase {
  PVector movement;
  float speed=8;




public Enemy(float x, float y){

//float x=0;

//float y= random(100, 500);

super(x, y);


}

void enemyMovement(){



position.x=position.x+speed;
position.y+=sin(position.y)+speed;

if(position.x>width){
position.x=0;
}

if(position.x<0){
 position.x=width;
}

if(position.y<0){
 position.y=height;
}

if(position.y>height){
 position.y=0;
}

}

void draw(){

  fill(0,0,255);
ellipse(position.x, position.y, 40, 40);



//super.draw();


}


}
