public class Controller{
  	int enemyCount = 6;
    int starCount=50;

	Player player;
    BackgroundEffects backgroundEffects;
    EnemySnakey snakey;

    //ArrayList<BackgroundEffects> starList=new ArrayList<BackgroundEffects>();
    ArrayList<Enemy> enemyList = new ArrayList<Enemy>();

    public Controller () {
    backgroundEffects = new BackgroundEffects(20, 20, 20);
		player = new Player(width / 2,height - 100, 30);
		//snakey=new EnemySnakey(0, 0, 20);

	   /* for (int v=0; v<starCount; v++){
	      starList.add(new BackgroundEffects(40, 40, 40));
	    }*/
		for (int i = 0; i < enemyCount; i++) {
			enemyList.add(new Enemy(random(0, width), 0, 40));
		}
	}



	void update(){
		player.update();
		player.draw();
		player.fireWeapon();

		// snakey.snakeyMovement();
		// snakey.draw();

	//	for(BackgroundEffects stars : starList ){
		    //stars.backgroundUpdate();
		    //stars.draw();
	//	}

		for (Enemy enemy : enemyList) {
				enemy.movement();
				enemy.draw();
				enemy.killedPlayer(player.position.x, player.position.y, player.size);
		}
	}
}
