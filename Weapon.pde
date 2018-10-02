Player player;

public class Weapon extends CharacterBase {
	float weaponSize = 5;
	
	public Weapon (float x, float y) {
		super(x,y);
	}
 	
 	void draw(float x, float y){
 		fill(255,255,255);
 		ellipse(x, y, weaponSize, weaponSize);
 	}
}
