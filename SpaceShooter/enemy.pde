import processing.sound.*;

SpaceShooter spaceShooter;

PImage[] enemyUFO;
public class Enemy extends CharacterBase {
	ArrayList<Weapon> enemyBulletList = new ArrayList<Weapon>();

	float speed=5;
	int numFrames = 8;
	int currentFrame = 0;

	int timeLastFired = 0;
  boolean spritesLoaded=false;
  //kontrollerar fiendens position i y-led
	float sinY=random(40, 300);

	//kontrollerar avstånd mellan vågorna
	float sinB=random(15,40);//random(0.1, 0.3);

	//Kontrollerar höjd på vågorna
	float sinA=random(50, 80);

	public Enemy(float x, float y, float size){
		super(x, y, size);
	}

  

	void movement(){
  
  if(spritesLoaded==false){
    enemyUFO = new PImage[numFrames];
   
		enemyUFO [0] = loadImage("UFO-02.png");
		enemyUFO [1] = loadImage("UFO-02.png");
		enemyUFO [2] = loadImage("UFO-03.png");
		enemyUFO [3] = loadImage("UFO-03.png");

		enemyUFO [4] = loadImage("UFO-02.png");
		enemyUFO [5] = loadImage("UFO-02.png");
		enemyUFO [6] = loadImage("UFO-03.png");
		enemyUFO [7] = loadImage("UFO-03.png");
    
    spritesLoaded=true;
  }
		position.x = position.x+speed;
		fireWeapon();

		for (Weapon enemyBullet : enemyBulletList) {
			enemyBullet.update(7);
		}
		//I WON, THIS WAVEY BULLSHIT LOST!
		position.y=(sinA * sin((position.x/4)/sinB)+284)-sinY;


		if(position.x>width){

			position.x=0;
		}

		if(position.x<0){
			position.x=width;
		}
	}

	boolean canShoot(){
			if(millis() - timeLastFired > 1000 ) {
				timeLastFired = millis();
				return true;
			}
				return false;
		}

	void draw(){
		
			currentFrame = (currentFrame+1) % numFrames;
			int offset = 0;
			for(int x=-100; x<width; x+=enemyUFO[0].width){
       
			image(enemyUFO[(currentFrame+offset) % numFrames], position.x, position.y);
	    
		}

	  	for (Weapon enemyBullet : enemyBulletList) {
			enemyBullet.draw();
      
		}
	}

	void fireWeapon(){
		if(canShoot()){
			enemyBulletList.add(new Weapon(position.x, position.y, 8, 255,0,0));
		}
	}



	boolean killedPlayer(float x, float y, float size, ArrayList<Enemy> enemyList){
		for(int i = 0; i < enemyBulletList.size(); i++){
			if(!enemyBulletList.isEmpty()){
	 		boolean hasCollided = checkCollision(	x,
													y,
													size,

													enemyBulletList.get(i).bullets.x,
													enemyBulletList.get(i).bullets.y,
													enemyBulletList.get(i).weaponSize);

				if(hasCollided){
					return !hasCollided;
				}

				if(enemyBulletList.get(i).bullets.y > height){
					enemyBulletList.remove(i);
				}

			}
		} return true;
	}
}
