  public class BackgroundEffects extends CharacterBase{
    float counter=0;
    PImage galaxy =loadImage("galaxy.jpg");

  public BackgroundEffects(float x, float y, float size){
    super(x, y, size);
  }



  void drawBackground(){
    pushMatrix();
    imageMode(CENTER);
    rotate(counter/360);
      image(galaxy ,16, -16, 2371, 2000);
    counter++;
    popMatrix();
}

  }
