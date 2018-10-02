public class Player extends CharacterBase {
 	PVector movement;
   	float speed = 5;
   	ArrayList<Weapon> bulletList = new ArrayList<Weapon>();
   	
	public Player (float x, float y) {
		super(x,y);
		movement = new PVector(0,0);
	}

	void draw(){
		fill(255,0,0);
		ellipse(position.x, position.y, 30, 30);
		for (Weapon bullet : bulletList) {
			bullet.draw();
		}
	}

	void update(){
		movement.x = getAxisRaw("Horizontal");
		movement.y = getAxisRaw("Vertical");
		movement.normalize();
		position.x += movement.x * speed;
		position.y += movement.y * speed;
		for (Weapon bullet : bulletList) {
			bullet.update();
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
			bulletList.add(new Weapon(position.x, position.y));
		}
	}
}

