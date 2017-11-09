// to snap make sure, that you divid your shipx by the size of the square. then snap the x cord of the ship that the closest in the array value. 





class Ship {
  // data 
  float x, y, placeForOtherSqaureX, halfSize, placeForOtherSqaureY;
  float sizeOfSide, thevalueOfXDq, thevalueOfYSq;
  boolean shipMoving, isMovingAllowed; 

  Ship() {
    sizeOfSide = width/20;
    x = random(width/2, width);
    y = 0 + 100;
    halfSize = sizeOfSide/2;
    placeForOtherSqaureX = x;
    placeForOtherSqaureY = y + sizeOfSide;
    shipMoving = false;
    isMovingAllowed = true;
  }

  void displayShip() {
    fill(255, 0, 255);
    rectMode(CENTER);
    rect(x, y, sizeOfSide, sizeOfSide);
    rect(placeForOtherSqaureX, placeForOtherSqaureY, sizeOfSide, sizeOfSide);
  }
  void checkToSeeIfClicked() {
    if ((mouseY > y - halfSize && mouseY < y- halfSize + sizeOfSide*2) && (mouseX > x- halfSize && mouseX < x - halfSize + sizeOfSide )) { 
      if (mousePressed && (mouseButton == LEFT) && isMovingAllowed) {
        shipMoving = true;
      } else {
        shipMoving = false;
      }
    }
  }
  void move() { 
    if (shipMoving) {  
      x = mouseX;
      y = mouseY;
      placeForOtherSqaureX = mouseX;
      placeForOtherSqaureY = mouseY + sizeOfSide;
    }
  }

  void snap() {
    int shipXcord, shipYcord;
    shipXcord = int(x - sizeOfSide/2);
    shipYcord = int(y - sizeOfSide/2);
    if (x < width/2) {
      shipXcord = int(shipXcord/sizeOfSide) + 2;
      shipYcord = int(shipYcord / sizeOfSide);
      println(shipXcord,shipYcord);
      theBoard[shipXcord-1][shipYcord+1] = 1;
      theBoard[shipXcord-1][shipYcord+2] = 1;
  }
    
    
      

}
}