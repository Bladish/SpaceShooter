public class Controller{
	Player player;
  	Enemy enemy;
	Weapon weapon;
	public Controller () {
<<<<<<< HEAD
	player = new Player(100,100);
    enemy=new Enemy(200, 200);
    weapon = new Weapon(player.position.x, player.position.y);
=======
>>>>>>> 248a07a45952a11f0ae040f6b2a6e8e9b53b4f68
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
