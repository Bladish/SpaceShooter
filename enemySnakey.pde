public class EnemySnakey extends CharacterBase {

  float snakeyLength=random(5, 12);

  float speed=10;

  float sinX=random(40, 300);
  float sinB=random(15,40);
  float sinA=random(50, 80);

public EnemySnakey(float x, float y){

super(x, y);

}

  void snakeyMovement(){

    position.y=position.y+speed;
    for(int j=0; j<snakeyLength; j++){
    position.x=(sinA * sin((position.y/4)/sinB)+284)+(sinX);
    }

    if(position.y<0){
    position.y=height+1;
    }

    if(position.y>height){
     position.y=1;
    }
  }

  void draw(){

   for(int i=0; i<snakeyLength; i++){

  fill(120,120,120);
  ellipse(position.x+(i*-1), position.y+(i*29), 20, 25);
   }

  }

}
