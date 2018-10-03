  public class BackgroundEffects extends CharacterBase{
float counter=0;
PImage galaxy =loadImage("galaxy.jpg");


    float speed=8;
    float x1=100;
    float y1=100;
    float x2=width-200;
    float y2=height-200;

public BackgroundEffects(float x, float y, float size){
super(x, y, size);
}

  void backgroundUpdate(){

    x1=x1+speed+sin(x1);
    y1=y1+speed+sin(y1);
    x2=x2+speed+sin(x2);
    y2=y2+speed+sin(y2);


  }

  void drawBackground(){
pushMatrix();
  image(galaxy ,x1, y1, x2, y2);
  rotate(counter*TWO_PI/360);
  counter++;
  popMatrix();

  }

  }
