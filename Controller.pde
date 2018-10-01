public class Controller{
	Player player;

	public Controller () {
		player = new Player(100,100);
	}

	void update(){
		player.update();
		player.draw();
	}
}