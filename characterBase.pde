public abstract class CharacterBase{
	PVector position;
	float velocity;

	CharacterBase(float x, float y, float vC){
		position = new PVector(x,y);
		velocity = vC;
	}
}
