import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SpaceShooter extends PApplet {

Player player;


public void setup() {
	
	ellipseMode(CENTER);
	player = new Player(100,100);
}

public void draw() {
	background(255);
	player.playerMovement();
	player.draw();
}

public abstract class CharacterBase{
	PVector position;

	CharacterBase(float x, float y){
		position = new PVector(x,y);
	}
}

public class Player extends CharacterBase {
   	boolean moveLeft;
   	boolean moveRight;
   	boolean moveUp;
   	boolean moveDown;
   	float speed = 5;

	public Player (float x, float y) {
		super(x,y);
	}

	public void draw(){
		fill(255,0,0);
		ellipse(position.x, position.y, 30, 30);
	}

	public void playerMovement(){
	float xMovement = getAxisRaw("Horizontal") * speed;
	float yMovement = getAxisRaw("Vertical") * speed;
	position.x += xMovement;
	position.y +=yMovement;
	}

	public void keyPressed(){
		if(key == 'w') moveUp = true;
		if(key == 's') moveDown = true;
		if(key == 'a') moveLeft = true;
		if(key == 'd') moveRight = true;
	}

	public void keyReleased(){
		if(key == 'w') moveUp = false;
		if(key == 's') moveDown = false;
		if(key == 'a') moveLeft = false;
		if(key == 'd') moveRight = false;	
	}

	public float getAxisRaw(String axis){
		if(axis == "Horizontal"){
			if(moveLeft){
				return -1;
			} 
			if(moveRight){
				return 1;
			}
		}

		if(axis == "Vertical"){
			if(moveUp) {
				return -1;
			}
			if(moveDown){
				return 1;
			}
		}
		return 0;
	}
}																										
  public void settings() { 	size(600, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SpaceShooter" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
