class Drop
{

  int x;
  int y;
  int diam;
  int speed;
  int colourR;
  int colourG;
  int colourB;

  Drop(int tempMinSpeed,int tempMaxSpeed)
  {
    diam = int (random(10, 25));
    x = int (random(0+diam, width-diam)); // diam to keep it inside the screen
    y = -diam; // start outside the screen
    speed =  setRndValue(tempMinSpeed, tempMaxSpeed);
    colourR = setRndValue(0, 100); // set to stay in the blue colour range
    colourG = setRndValue(0, 100);  // set to stay in the blue colour range
    colourB = setRndValue(255, 255);  // set to stay in the blue colour range
  }

  void drawDrop()
  {
    colorMode(RGB);
    fill(colourR, colourG, colourB);
    triangle(x, y-diam, x+diam/2, y, x-diam/2, y);
    arc(x, y, diam, diam, radians(0), radians(180));
  }
  void moveDrop()
  {
    y = y+speed;
  }

  int setRndValue(int tempMin, int tempMax)
  {
    int i = int (random(tempMin, tempMax));

    return i;
  }
}
