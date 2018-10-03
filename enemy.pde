public class Enemy extends CharacterBase {

	ArrayList<Weapon> enemyBulletList = new ArrayList<Weapon>();

	float speed=5;

	int timeLastFired = 0;

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
		fill(0,0,255);
	  	ellipse(position.x, position.y, size, size);
	  	for (Weapon enemyBullet : enemyBulletList) {
			enemyBullet.draw();
		}
	}

	void fireWeapon(){
		if(canShoot()){
			enemyBulletList.add(new Weapon(position.x, position.y, 10));
		}
	}



	void killedPlayer(float x, float y, float size){
		for(int i = 0; i < enemyBulletList.size(); i++){
			if(!enemyBulletList.isEmpty()){
				boolean hasCollided = checkCollision(	x,
														y,
														size,

														enemyBulletList.get(i).bullets.x,
														enemyBulletList.get(i).bullets.y,
														enemyBulletList.get(i).weaponSize);
			
			// Add gameover screen here
				if(hasCollided){
					println("GameOver");
					
				}
				if(enemyBulletList.get(i).bullets.y > height || hasCollided){
					enemyBulletList.remove(i);	
				}
			}	
		}
	}
}
