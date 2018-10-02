public class Enemy extends CharacterBase {
Enemy enemy;
  float speed=10;


	float speed=10;


	float sinY=random(40, 300);
	float sinB=random(15,40);//random(0.1, 0.3);
	float sinA=random(50, 80);

public Enemy(float x, float y){
	super(x, y);
}

void movement(){
	position.x=position.x+speed;

//I WON, THIS WAVEY BULLSHIT LOST!
	position.y=(sinA * sin((position.x/4)/sinB)+284)+sinY;
	if(position.x>width){

		position.x=0;
	}

	if(position.x>width){

	position.x=0;
	}

	if(position.x<0){
	 position.x=width;
}
}
}