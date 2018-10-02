public class Controller{
  	int enemyCount = 3;
	Player player;

    ArrayList<Enemy> enemyList = new ArrayList<Enemy>();

	  EnemySnakey snakey;

    public Controller () {
		player = new Player(width / 2,height - 100, 30);
		snakey=new EnemySnakey(0, 0, 20);

		for (int i = 0; i < enemyCount; i++) {
			enemyList.add(new Enemy(random(0, width), 0, 40));
		}
	}



	void update(){
		player.update();
		player.draw();
		player.fireWeapon();
		snakey.snakeyMovement();
		snakey.draw();
		for (Enemy enemy : enemyList) {
			enemy.movement();
			enemy.draw();
		}
	}
}
