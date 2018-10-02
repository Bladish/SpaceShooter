public class Controller{
  int enemyCount=3;
	Player player;

    ArrayList<Enemy> enemy=new ArrayList<Enemy>(3);
  
	  EnemySnakey snakey;
	
    public Controller () {
		player = new Player(100,100);

enemy.add(new Enemy(0, 200));

   // enemy=new Enemy(0, 200);

		snakey=new EnemySnakey(0,0);

	}



	void update(){
	player.update();
	player.draw();

//for(int i=0; i<enemyCount; i++){
    Enemy.enemyMovement();
    enemy.draw();
//}

		snakey.snakeyMovement();
		snakey.draw();
	}
}
