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
    if (x < width/2) {
      for (int i = 0; i < cols-10; i++) { // my x,
        for (int j = rows/2; j < rows; j++) { // my y
          float percentOfX = ((i * sizeOfSide)/(x - halfSize)) * 100;
          float percentOfY = ((j * sizeOfSide)/(y - halfSize)) * 100;
           println(percentOfX,percentOfY);
          if (isMovingAllowed && shipMoving) {
            
            if (percentOfX >50 && percentOfY > 50) {
               isMovingAllowed = false;
            }          
        }
        }
      }
    }
  }
  
}