class Player
{
  String namePlayer;
  float x = 0;
  float y = 0;
  float playerSpeed = 0;
  IntDict keysControl = new IntDict();
  float anglex = 0;
  float angley = 0;
  float beamLength = 0;
  float angle = 0;
  
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
  
  void rotation(float beamLength, float angle)
  {
    this.beamLength = beamLength;
    this.angle = angle;
  }
  
  PVector rotation()
  {
    this.anglex = this.x + this.beamLength * cos(this.angle);
    this.angley = this.y + this.beamLength * sin(this.angle);
    return new PVector(this.anglex, this.angley);
  }
  
  void speed(float playerSpeed)
  {
    this.playerSpeed = playerSpeed;
  }
  
  float speed()
  {
    return this.playerSpeed;
  }
  
  void control(int right, int left, int up, int down, int q, int e)
  {
    this.keysControl.set("RIGHT", right);
    this.keysControl.set("LEFT",  left);
    this.keysControl.set("UP",    up);
    this.keysControl.set("DOWN",  down);
    this.keysControl.set("Q",  q);
    this.keysControl.set("E",  e);
  }
  
  IntDict control()
  {  
    return keysControl;
  }
  
  void movement()
  {
    if(this.keysControl.size() == 0) return;
    float playerSpeed = this.playerSpeed / frameRate;
    // !!!! formyla    
    float angleSpeed = (this.playerSpeed/10) / frameRate;
    
    float sin_a = sin(this.angle);
    float cos_a = cos(this.angle);
    
    if(checkPressedKey(this.keysControl.get("RIGHT")))
    {
      println("RIGHT");
      this.x -= playerSpeed * sin_a;
      this.y += playerSpeed * cos_a;
    }
    if(checkPressedKey(this.keysControl.get("LEFT")))
    {
      println("LEFT");
      this.x += playerSpeed * sin_a;
      this.y -= playerSpeed * cos_a;
    }
    if(checkPressedKey(this.keysControl.get("UP")))
    {
      println("UP");
      this.x += playerSpeed * cos_a;
      this.y += playerSpeed * sin_a;
    }
    if(checkPressedKey(this.keysControl.get("DOWN")))
    {
      println("DOWN");
      this.x -= playerSpeed * cos_a;
      this.y -= playerSpeed * sin_a;
    }
    if(checkPressedKey(this.keysControl.get("Q")))
    {
      this.angle -= angleSpeed;
    }
    if(checkPressedKey(this.keysControl.get("E")))
    {
      this.angle += angleSpeed;
    }
  }
};
