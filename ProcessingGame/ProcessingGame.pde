Player player = new Player("player");

void setup()
{
  size(640, 360);
  frameRate(60);
  player.position(new PVector(50, 50));
  
  player.rotation(50, 0);
  
  player.speed(120);
  player.control(87,68,65,83);  
}

void draw()
{
  background(100);
  ellipse(player.position().x, player.position().y, 20, 20);
  line(player.position().x, player.position().y, player.rotation().x, player.rotation().y);
  player.movement();
}
