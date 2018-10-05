PImage[] ShoteyTheShip;
PImage[] UfoExplosion;
Enemy[] enemy;
boolean imagesLoaded=false;
public class Player extends CharacterBase {

    int numFrames = 8;
    int currentFrame = 0;
   	PVector movement;
   	float speed = 5;
   	ArrayList<Weapon> bulletList = new ArrayList<Weapon>();

	  public Player (float x, float y, float size) {
		super(x,y,size);
		movement = new PVector(0,0);
	}

	void draw(){
		
    currentFrame = (currentFrame+1) % numFrames;
        
      for(int x=-100; x<width; x+=ShoteyTheShip[0].width){
        
        image(ShoteyTheShip[(currentFrame) % numFrames], position.x, position.y);
      
    }

		for (Weapon bullet : bulletList) {
			bullet.draw();
		}
	}

	void update(){

   if(imagesLoaded==false){
    ShoteyTheShip = new PImage[numFrames];

    ShoteyTheShip  [0]  = loadImage("ShoteyTheShip0000.png");
    ShoteyTheShip  [1]  = loadImage("ShoteyTheShip0001.png");
    ShoteyTheShip  [2]  = loadImage("ShoteyTheShip0002.png");
    ShoteyTheShip  [3]  = loadImage("ShoteyTheShip0003.png");
    ShoteyTheShip  [4]  = loadImage("ShoteyTheShip0004.png");
    ShoteyTheShip  [5]  = loadImage("ShoteyTheShip0005.png");
    ShoteyTheShip  [6]  = loadImage("ShoteyTheShip0006.png");
    ShoteyTheShip  [7]  = loadImage("ShoteyTheShip0007.png");
    
    UfoExplosion =new PImage[3];
          
    UfoExplosion[0] = loadImage("UFOexplosion00.png"); 
    UfoExplosion[1] = loadImage("UFOexplosion01.png"); 
    UfoExplosion[2] = loadImage("UFOexplosion02.png");
    
    imagesLoaded=true;
  }
		checkBorders();
		movement.x = getAxisRaw("Horizontal");
		movement.y = getAxisRaw("Vertical");
		movement.normalize();
		position.x += movement.x * speed;
		position.y += movement.y * speed;

		for (Weapon bullet : bulletList) {
			bullet.update(-7);
		}
	}

	float getAxisRaw(String axis){
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

	void fireWeapon(){
		if(shootFired){
			bulletList.add(new Weapon(position.x, position.y, 5, 17, 247, 115));
		}
	}

	void checkBorders(){
		if(position.x < 0) position.x = 10;
		if(position.x > width) position.x = width - 10;
		if(position.y < 0) position.y = 10;
		if(position.y > height) position.y = height - 10;
	}


	void killedEnemy(ArrayList<Enemy> enemyList){
		for(int i = 0; i < bulletList.size(); i++){
			for(int j = 0; j < enemyList.size(); j++){
				if(!bulletList.isEmpty()){
					boolean hasCollided = checkCollision(	enemyList.get(j).position.x,
															enemyList.get(j).position.y,
															enemyList.get(j).size,

															bulletList.get(i).bullets.x,
															bulletList.get(i).bullets.y,
															bulletList.get(i).weaponSize);
						// Can add explosions here
					if(hasCollided){
           
            for(int eX=0; eX<3; eX++){
              image(UfoExplosion[eX], bulletList.get(i).bullets.x, bulletList.get(i).bullets.y);
            }
						enemyList.remove(j);
            ufoExplosionSound.play();

					}
					if(bulletList.get(i).bullets.y < 0 || hasCollided){
						bulletList.remove(i);
					}
				}
			}
		}
	}
}
