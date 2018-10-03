public class Player extends CharacterBase {
 	PVector movement;
   	float speed = 5;
   	ArrayList<Weapon> bulletList = new ArrayList<Weapon>();

	public Player (float x, float y, float size) {
		super(x,y,size);
		movement = new PVector(0,0);
	}

	void draw(){
		fill(255,0,0);
		ellipse(position.x, position.y, size, size);
		for (Weapon bullet : bulletList) {
			bullet.draw();
		}
	}

	void update(){
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
						enemyList.remove(j);
						
					}
					if(bulletList.get(i).bullets.y < 0 || hasCollided){
						bulletList.remove(i);	
					}
				}		
			}
		}
	}
}
