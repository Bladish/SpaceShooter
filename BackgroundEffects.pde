  public class BackgroundEffects extends CharacterBase{

    float speed=8;
    float startPosX=random(1, width);
    float startPosY=random(-1, 12);
public BackgroundEffects(float x, float y, float size){
super(x, y, size);
}

  void backgroundUpdate(){
  position.x=startPosX;
  position.y=position.y+startPosY+speed;

    if(position.y>height){
     position.y=1;
    }
}

  void draw(){
  strokeWeight(5);
  stroke(253, 253, 253);
  point(position.x, position.y);
  stroke(0,0,0);
  strokeWeight(1);
  }

  }
