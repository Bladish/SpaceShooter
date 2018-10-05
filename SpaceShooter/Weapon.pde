PImage PlasmaBolt;
PImage LaserBlast;
public class Weapon extends CharacterBase {
	float weaponSize;
	PVector bullets;
	float r;
	float b;
	float g;
	boolean imageLoaded=false;
	public Weapon (float x, float y, float size, float r, float b, float g) {
		bullets = new PVector(x,y);
		this.weaponSize = size;
		this.r = r;
		this.b = b;
		this.g = g;
	}

 	void update(int bulletSpeed){

   if(imageLoaded==false){
		PlasmaBolt = new PImage();
		PlasmaBolt = loadImage("PlasmaBolt00.png");
	  LaserBlast = loadImage("LaserBlast.png");
        imageLoaded=true;
   }
 		bullets.y += bulletSpeed;
 	}

 	void draw(){
 		fill(r, b, g);
 
	  if(r==255){
      image(LaserBlast, bullets.x, bullets.y);
      //Earrape varning
      //laserBlastSound.play();
    }

   else if(r==17){
     image(PlasmaBolt, bullets.x, bullets.y);
      
    }
 	
 	}
}
