Player player;


void setup() {
	size(600, 800);
	ellipseMode(CENTER);
	player = new Player(100,100);
}

void draw() {
	background(255);
	player.playerMovement();
	player.draw();
}

