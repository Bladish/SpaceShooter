public class Player extends CharacterBase {
 	PVector movement;
   	float speed = 5;
   	Weapon weapon;
   	float bulletX = position.x;
   	float bulletY = position.y;
   	float bulletSpeed = -7;
	
	public Player (float x, float y) {
		super(x,y);
		movement = new PVector(0,0);
	}

	void draw(){
		fill(255,0,0);
		ellipse(position.x, position.y, 30, 30);
	}

	void update(){
	movement.x = getAxisRaw("Horizontal");
	movement.y = getAxisRaw("Vertical");
	movement.normalize();
	position.x += movement.x * speed;
	position.y += movement.y * speed;
	bulletY += bulletSpeed;
//	weapon.draw(bulletX,bulletY);
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
			weapon = new Weapon(bulletX, bulletY);
			println(bulletY);
		}
	}
}
