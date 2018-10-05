public  class CharacterBase{
	PVector position;
	float size;
CharacterBase(){
}

	CharacterBase(float x, float y, float size){
		position = new PVector(x,y);
		this.size = size;
	}


}
