  public class BackgroundEffects extends CharacterBase{
float counter=0;
PImage galaxy =loadImage("galaxy.jpg");


    float speed=8;
    float x1=0;
    float y1=0;
    float x2=width+100;
    float y2=height+100;

public BackgroundEffects(float x, float y, float size){
super(x, y, size);
}

  

  void drawBackground(){
    pushMatrix();
    imageMode(CENTER);
    rotate(1);
    //image(galaxy ,x1, y1, x2, y2);
      image(galaxy ,292, 456, 1190, 1604);
    counter++;
    popMatrix();


//image(galaxy ,x1, y1, x2, y2);
}

  }
