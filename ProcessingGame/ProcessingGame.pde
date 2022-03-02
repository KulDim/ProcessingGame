//PVector v1, v2;


IntList keys = new IntList();;

void setup()
{
  size(640, 360);
  frameRate(600);
  
  
}

void draw() 
{
  //println(keyCode + "   " + int(key));
  
  if(keyPressed)
  {
    //keyCode == 0 breal=k !!!!!!!
    if( keys.size() == 0) keys.append(keyCode);
    
    boolean addKey = true;
    for(int i = 0; i < keys.size(); i++)
    {
      if(keys.get(i) == keyCode) {
        println(keys.get(i));
        addKey = false;
        break;
      }
      addKey = true;
    }
    if(addKey) keys.append(keyCode);
  }
  println(keys.size());
}
