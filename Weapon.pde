Player player;

public class Weapon extends CharacterBase {
	float weaponSize = 5;
	PVector bullets;
	
	public Weapon (float x, float y) {
		bullets = new PVector(x,y);
	}
 	
 	void update(){
 		bullets.y += -7;
 	}

 	void draw(){
 		fill(255,255,255);
 		ellipse(bullets.x, bullets.y, weaponSize, weaponSize);
 	}
}
