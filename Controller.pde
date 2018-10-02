public class Controller{
	Player player;

  Enemy enemy;
		EnemySnakey snakey;
		public Controller () {
		player = new Player(100,100);
		enemy=new Enemy(0, 200);
		snakey=new EnemySnakey(0,0);

	}



	void update(){
		player.update();
		player.draw();
		player.update();
		player.draw();
		player.fireWeapon();
		enemy.enemyMovement();
		enemy.draw();
		snakey.snakeyMovement();
		snakey.draw();
	}
}
