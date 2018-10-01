public class Weapon extends CharacterBase {
	float weaponSize = 5;
	float weaponSpeed = -7;
	public Weapon (float x, float y) {
		super(x,y);
	}
 	
 	void draw(){
 		fill(255,255,255);
 		ellipse(position.x, position.y, weaponSize, weaponSize);
 	}

 	
 	void update(float x, float y){
 		if(shootFired){
 			position.x = position.x;
 			position.y += weaponSpeed;
 		}
 		else {
	 		position.x = x;
	 		position.y = y;
	 	}
	 		
 	}
}			