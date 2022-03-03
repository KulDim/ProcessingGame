Player player = new Player("Player");

void setup()
{
  size(640, 360);
  frameRate(60);
  
  player.position(new PVector(50, 50));
  player.rotation(20, 0);
  player.speed(120);
  player.control(68, 65, 87, 83, 81, 69);  
}

void draw()
{
  background(100);
  ellipse(player.position().x, player.position().y, 20, 20);
  line(player.position().x, player.position().y, player.rotation().x, player.rotation().y);
  ellipse(player.position().x, player.position().y, 10, 10);
  ellipse(player.rotation().x, player.rotation().y, 10, 10);
  player.movement();
  
  //println(Keystrokes());

}
