Controller controller;


void setup() {
	size(600, 800);
	controller = new Controller();
	ellipseMode(CENTER);
//frameRate(30);

}

void draw() {
	background(255);
	controller.update();





}
