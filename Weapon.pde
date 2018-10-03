public class Weapon extends CharacterBase {
<<<<<<< HEAD
    float weaponSize;
    PVector bullets;


    public Weapon (float x, float y, float size) {
        bullets = new PVector(x,y);
        this.weaponSize = size;
    }

     void update(int bulletSpeed){
         bullets.y += bulletSpeed;
     }
=======
	float weaponSize;
	PVector bullets;

	
	public Weapon (float x, float y, float size) {
		bullets = new PVector(x,y);
		this.weaponSize = size;
	}
 	
 	void update(int bulletSpeed){
 		bullets.y += bulletSpeed;
 	}
>>>>>>> 10afe64ff0a0aa7a12b54df22751c1800ac281b9

     void draw(){
         fill(17,247,115);
         ellipse(bullets.x, bullets.y, weaponSize, weaponSize);
     }
}
