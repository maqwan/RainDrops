class GameMasterModel
{

  int numOfdrops;
  Drop drop;
  CatcherModel catcher;
  Drop[] drops;
  int minSpeed;
  int MaxSpeed;

  GameMasterModel(int TempNumOfdrops, int tempMinSpeed, int tempMaxSpeed)
  {
    numOfdrops = TempNumOfdrops; 
    drops = new Drop[numOfdrops];
    minSpeed = tempMinSpeed;
    MaxSpeed = tempMaxSpeed;

    initializeDrops();

    catcher = new CatcherModel();
  }

  void initializeDrops()
  {

    for (int i = 0; i < numOfdrops; i++)
    {
      drop = new Drop(minSpeed, MaxSpeed);
      drops[i] = drop;
    }
  }

  void moveDrops()
  {
    for (int i = 0; i < numOfdrops; i++)
    {
      drops[i].moveDrop();
      drops[i].drawDrop();
    }
  }
  void ReinitializeDrop()
  {
    for (int i = 0; i < numOfdrops; i++)
    {
      if (drops[i].y >= height)
      {
        drop = new Drop(minSpeed, MaxSpeed);
        drops[i] = drop;
      }
    }
  }
  void checkColisions()
  {
    for (int i = 0; i < gameMaster.numOfdrops; i++)
    {
      float D = dist(catcher.x, catcher.y, gameMaster.drops[i].x, gameMaster.drops[i].y);

      if (D <= gameMaster.drops[i].diam/2 + catcher.cathcerDiam/2)
      {
        gameMaster.drops[i].y = height+20; // set y outside the screen to have it initialized when we exit checkColisions(); and move to gameMaster.ReinitializeDrop();
     
      }
    }
  }
}
