  public class BackgroundEffects extends CharacterBase{

PImage galaxy =loadImage("galaxy.jpg");

  //  PImage galaxy;
    float speed=8;
    float startPosX=random(1, width);
    float startPosY=random(-1, 5);
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

  void drawBackground(){
  image(galaxy ,100, 100, width-200, height-200);
  }

  }
