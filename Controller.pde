public class Controller{
	Player player;
  Enemy enemy;
	public Controller () {
		player = new Player(100,100);
    enemy=new Enemy(200, 200);
	}



	void update(){
		player.update();
		player.draw();
    enemy.enemyMovement();
    enemy.draw();
	}
}
