class Ship {
  // data 
  float x,y,placeForOtherSqaureX, placeForOtherSqaureY;
  float sizeOfSide;
  boolean isShipMoving; 

  Ship() {
    sizeOfSide = 20;
    x = width - width/3 - width/12;
    y = 0 + 100;
    placeForOtherSqaureX = x;
    placeForOtherSqaureY = y + sizeOfSide;
  }
  
  void displayShip() {
    rect(x,y,sizeOfSide,sizeOfSide);
    rect(placeForOtherSqaureX,placeForOtherSqaureY,sizeOfSide,sizeOfSide);
  }








}