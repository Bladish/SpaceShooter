import processing.sound.*;

Controller controller;
BackgroundEffects backgroundEffects;

SoundFile ufoExplosionSound;
SoundFile laserBlastSound;
SoundFile music;

void setup() {
	size(600, 800);
  
	controller = new Controller();
	ellipseMode(CENTER);

//frameRate(30);
  backgroundEffects=new BackgroundEffects(20, 20 ,20);
  
  laserBlastSound = new SoundFile(this, "LaserBlastSound.mp3");
  ufoExplosionSound=new SoundFile(this, "UfoExplosionSound.mp3");
  music = new SoundFile(this, "MusicLoopv2.mp3");
  
  music.loop();
  

}

void draw() {
	background(1);
  
	controller.update();

}
