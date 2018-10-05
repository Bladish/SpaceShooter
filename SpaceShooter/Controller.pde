
public class Controller{
  	int enemyCount = 6;
	  Player player;
    BackgroundEffects backgroundEffects;
    EnemySnakey snakey;
    boolean gameOn = true;


    ArrayList<Enemy> enemyList = new ArrayList<Enemy>();

    public Controller () {
      
    	backgroundEffects = new BackgroundEffects(20, 20, 20);
		  player = new Player(width / 2,height - 100, 30);
		//snakey=new EnemySnakey(0, 0, 20);


		for (int i = 0; i < enemyCount; i++) {
			enemyList.add(new Enemy(random(0, width), 0, 40));
		}
	}

	void update(){
  
		if(gameOn){
 
	  		backgroundEffects.drawBackground();
			player.update();
			player.draw();
			player.fireWeapon();
			player.killedEnemy(enemyList);

			for (Enemy enemy : enemyList) {
				if (gameOn) {
					enemy.movement();
					enemy.draw();
					gameOn = enemy.killedPlayer(player.position.x, player.position.y, player.size, enemyList);
				}
			}
		}
			else{drawGameOverScreen();}
	}
}
