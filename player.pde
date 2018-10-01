public class Player extends CharacterBase {
   	boolean moveLeft;
   	boolean moveRight;
   	boolean moveUp;
   	boolean moveDown;
   	float speed = 5;

	public Player (float x, float y) {
		super(x,y);
	}

	void draw(){
		fill(255,0,0);
		ellipse(position.x, position.y, 30, 30);
	}

	void playerMovement(){
	float xMovement = getAxisRaw("Horizontal") * speed;
	float yMovement = getAxisRaw("Vertical") * speed;
	position.x += xMovement;
	position.y +=yMovement;
	}

	void keyPressed(){
		if(key == 'w') moveUp = true;
		if(key == 's') moveDown = true;
		if(key == 'a') moveLeft = true;
		if(key == 'd') moveRight = true;
	}

	void keyReleased(){
		if(key == 'w') moveUp = false;
		if(key == 's') moveDown = false;
		if(key == 'a') moveLeft = false;
		if(key == 'd') moveRight = false;	
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