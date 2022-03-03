class Map
{
  StringList structureMap = new StringList();
  IntList structureMapInt_i = new IntList();
  IntList structureMapInt_j = new IntList();
   
  Map()
  {
    this.mapLoading();
  }
  
  void mapLoading()
  {
    structureMap.append("wwwwwwwwww");
    structureMap.append("w........w");
    structureMap.append("w........w");
    structureMap.append("w........w");
    structureMap.append("w........w");
    structureMap.append("wwwwwwwwww");
    
    // пизлец тут нужно вектор для i j массив векторов пизданутся кароче 
    for(int i = 0; i < structureMap.size(); i++)
    {
      String line = structureMap.get(i);
      for(int j = 0; j < line.length(); j++)
      {
         if(line.charAt(j) == 'w')
         {
           structureMapInt_i.append(i * 200);
           structureMapInt_j.append(j * 200);
         }
      }
      println(structureMapInt_i);
    }
    
  }
 
};
