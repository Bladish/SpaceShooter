Controller controller;
BackgroundEffects backgroundEffects;

void setup() {
	size(600, 800);
	controller = new Controller();
	ellipseMode(CENTER);

//frameRate(30);

backgroundEffects=new BackgroundEffects(20, 20 ,20);

}

void draw() {
	background(1);
    //backgroundEffects.drawBackground();
	controller.update();





}
