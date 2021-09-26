GameMasterModel gameMaster;

void setup()
{
  gameMaster = new GameMasterModel(3,1,5);// number of drops, min speed, max speed

  size (800 , 800);
}

void draw()
{
  background(255);
  gameMaster.catcher.drawCatcher(50);// set Diam of catcher circle
  gameMaster.moveDrops();
  gameMaster.checkColisions();
  gameMaster.ReinitializeDrop();
}
