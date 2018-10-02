public class Enemy extends CharacterBase {

	float speed=10;

//kontrollerar fiendens position i y-led
	float sinY=random(40, 300);

	//kontrollerar avstånd mellan vågorna
	float sinB=random(15,40);//random(0.1, 0.3);

	//Kontrollerar höjd på vågorna
	float sinA=random(50, 80);

public Enemy(float x, float y, float size){
	super(x, y, size);
}

void movement(){
	position.x=position.x+speed;

//I WON, THIS WAVEY BULLSHIT LOST!
	position.y=(sinA * sin((position.x/4)/sinB)+284)-sinY;


	if(position.x>width){

		position.x=0;
	}

	if(position.x<0){
		position.x=width;
	}
}

  void draw(){
	fill(0,0,255);
  	ellipse(position.x, position.y, size, size);
	}
}
