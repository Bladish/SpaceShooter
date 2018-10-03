int z=1;
int txt=1;

public class GameOver{

  public GameOver(){

  }

void draw(){
// background(255);

txt=txt+z;
  textSize(txt);
  textAlign(CENTER);
  text("Game Over", 250, 250);
  fill(255, 0, 0);
 if(txt==80){
  noLoop();
 }


}

}
