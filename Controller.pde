public class Controller{
  int enemyCount=3;
	Player player;

  Enemy[] enemy;
	EnemySnakey snakey;
	public Controller () {
		player = new Player(100,100);
    //enemy=new Enemy(0, 200);

for(int i=0; i<enemyCount; i++){
    enemy=new Enemy(0, 200);
}
		snakey=new EnemySnakey(0,0);

	}



	void update(){
	player.update();
	player.draw();

for(int i=0; i<enemyCount; i++){
    enemy[i].enemyMovement();
    enemy[i].draw();
} 

		snakey.snakeyMovement();
		snakey.draw();
	}
}
