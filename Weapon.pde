public class Weapon extends CharacterBase {
	float weaponSize;
	PVector bullets;
	float r;
	float b;
	float g;
	
	public Weapon (float x, float y, float size, float r, float b, float g) {
		bullets = new PVector(x,y);
		this.weaponSize = size;
		this.r = r;
		this.b = b;
		this.g = g;
	}
 	
 	void update(int bulletSpeed){
 		bullets.y += bulletSpeed;
 	}

 	void draw(){
 		fill(r, b, g);
 		ellipse(bullets.x, bullets.y, weaponSize, weaponSize);
 	}
}