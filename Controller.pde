public class Controller{
	Player player;
  	Enemy enemy;
	Weapon weapon;
	public Controller () {
	player = new Player(100,100);
    enemy=new Enemy(200, 200);
    weapon = new Weapon(player.position.x, player.position.y);
	}



	void update(){
	player.update();
	player.draw();
    enemy.enemyMovement();
    enemy.draw();
    weapon.draw();
	weapon.update(player.position.x, player.position.y);
    }
}
