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

Controller controller;


public void setup() {
	
	controller = new Controller();
	ellipseMode(CENTER);
//frameRate(30);

}

public void draw() {
	background(255);
	controller.update();





}
public class Controller{
	Player player;

  Enemy enemy;
		EnemySnakey snakey;
		public Controller () {
		player = new Player(100,100);
		enemy=new Enemy(0, 200);
		snakey=new EnemySnakey(0,0);

	}



	public void update(){
		player.update();
		player.draw();
		player.update();
		player.draw();
		player.fireWeapon();
		enemy.enemyMovement();
		enemy.draw();
		snakey.snakeyMovement();
		snakey.draw();
	}
}
Player player;

public class Weapon extends CharacterBase {
	float weaponSize = 5;
	PVector bullets;
	
	public Weapon (float x, float y) {
		bullets = new PVector(x,y);
	}
 	
 	public void update(){
 		bullets.y += -7;
 	}

 	public void draw(){
 		fill(255,255,255);
 		ellipse(bullets.x, bullets.y, weaponSize, weaponSize);
 	}
}
public  class CharacterBase{
	PVector position;

CharacterBase(){
}

	CharacterBase(float x, float y){
		position = new PVector(x,y);
	}


}
public class Enemy extends CharacterBase {
  
  float speed=10;


float sinY=random(40, 300);
float sinB=random(15,40);;//random(0.1, 0.3);
float sinA=random(50, 80);

public Enemy(float x, float y){

super(x, y);

}

public void enemyMovement(){



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

  public void draw(){

  fill(0,0,255);
  ellipse(position.x, position.y, 40, 40);

}


}
public class EnemySnakey extends CharacterBase {

  float snakeyLength=random(5, 12);
  
  float speed=10;

  float sinX=random(40, 300);
  float sinB=random(15,40);;//random(0.1, 0.3);
  float sinA=random(50, 80);

public EnemySnakey(float x, float y){

super(x, y);

}

public void snakeyMovement(){
  
position.y=position.y+speed;
for(int j=0; j<snakeyLength; j++){
position.x=(sinA * sin((position.y/4)/sinB)+284)+(sinX+j*2);
}
if(position.y<0){
 position.y=height+1;
}

if(position.y>height){
 position.y=1;
}
}

 public void draw(){

   for(int i=0; i<snakeyLength; i++){
   
  fill(120,120,120);
  ellipse(position.x+(i*-1), position.y+(i*29), 20, 25);
   }
   
}

}
boolean moveLeft;
boolean moveRight;
boolean moveUp;
boolean moveDown;
boolean shootFired;

public void keyPressed(){
	//println("test");
	if(key == 'w') moveUp = true;
	if(key == 's') moveDown = true;
	if(key == 'a') moveLeft = true;
	if(key == 'd') moveRight = true;
	if(keyCode == 32) shootFired = true;
}

public void keyReleased(){
	if(key == 'w') moveUp = false;
	if(key == 's') moveDown = false;
	if(key == 'a') moveLeft = false;
	if(key == 'd') moveRight = false;
	if(keyCode == 32) shootFired = false;	
}
public class Player extends CharacterBase {
 	PVector movement;
   	float speed = 5;
   	ArrayList<Weapon> bulletList = new ArrayList<Weapon>();
   	
	public Player (float x, float y) {
		super(x,y);
		movement = new PVector(0,0);
	}

	public void draw(){
		fill(255,0,0);
		ellipse(position.x, position.y, 30, 30);
		for (Weapon bullet : bulletList) {
			bullet.draw();
		}
	}

	public void update(){
		movement.x = getAxisRaw("Horizontal");
		movement.y = getAxisRaw("Vertical");
		movement.normalize();
		position.x += movement.x * speed;
		position.y += movement.y * speed;
		for (Weapon bullet : bulletList) {
			bullet.update();
		}
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

	public void fireWeapon(){
		if(shootFired){
			bulletList.add(new Weapon(position.x, position.y));
		}
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
