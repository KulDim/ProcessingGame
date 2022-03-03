class Player
{
  String namePlayer;
  float x = 0;
  float y = 0;
  float playerSpeed = 0;
  IntDict keysControl = new IntDict();
  
  Player(String namePlayer)
  {
    this.namePlayer = namePlayer;
  }
  
  void position(PVector vector)
  {
     this.x = vector.x;
     this.y = vector.y;
  }
  
  PVector position()
  {
     return new PVector(x, y);
  }
  
  void speed(float playerSpeed)
  {
    this.playerSpeed = playerSpeed;
  }
  
  float speed()
  {
    return this.playerSpeed;
  }
  
  void control(int right, int left, int up, int down)
  {
    this.keysControl.set("RIGHT", right);
    this.keysControl.set("LEFT",  left);
    this.keysControl.set("UP",    up);
    this.keysControl.set("DOWN",  down);
  }
  
  IntDict control()
  {  
    return keysControl;
  }
  
  void movement()
  {
    if(this.keysControl.size() == 0) return;
    float playerSpeed = this.playerSpeed / frameRate;
    
    if(checkPressedKey(this.keysControl.get("RIGHT")))
    {
      y -= playerSpeed;
    }
    if(checkPressedKey(this.keysControl.get("LEFT")))
    {
      x += playerSpeed;
    }
    if(checkPressedKey(this.keysControl.get("UP")))
    {
      x -= playerSpeed;
    }
    if(checkPressedKey(this.keysControl.get("DOWN")))
    {
      y += playerSpeed;
    }
  }
};
