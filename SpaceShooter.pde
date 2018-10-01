Controller controller;


void setup() {
	size(600, 800);
	controller = new Controller();
	ellipseMode(CENTER);
}

void draw() {
	background(255);
	controller.update();





}
