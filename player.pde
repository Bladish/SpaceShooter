public class Player extends CharacterBase {
 	PVector movement;
   	float speed = 5;

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
}


