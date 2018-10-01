public class Weapon extends CharacterBase {
	float weaponSize = 5;
	public Weapon (float x, float y) {
		super(x,y);
	}
 	
 	void draw(){
 		fill(255,255,255);
 		ellipse(player.position.x, player.position.y, weaponSize, weaponSize);
 	}
}			