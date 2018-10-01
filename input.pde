boolean moveLeft;
boolean moveRight;
boolean moveUp;
boolean moveDown;

void keyPressed(){
	if(key == 'w') moveUp = true;
	if(key == 's') moveDown = true;
	if(key == 'a') moveLeft = true;
	if(key == 'd') moveRight = true;
}

void keyReleased(){
	if(key == 'w') moveUp = false;
	if(key == 's') moveDown = false;
	if(key == 'a') moveLeft = false;
	if(key == 'd') moveRight = false;	
}