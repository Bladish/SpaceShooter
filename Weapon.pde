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

     void draw(){
         fill(17,247,115);
         ellipse(bullets.x, bullets.y, weaponSize, weaponSize);
     }
}
