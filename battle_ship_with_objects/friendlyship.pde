class Ship {
  // data 
  float x,y,placeForOtherSqaureX,halfSize, placeForOtherSqaureY;
  float sizeOfSide;
  boolean shipMoving; 

  Ship() {
    sizeOfSide = width/20;
    x = random(width/2, width);
    y = 0 + 100;
    halfSize = sizeOfSide/2;
    placeForOtherSqaureX = x;
    placeForOtherSqaureY = y + sizeOfSide;
    shipMoving = false;
  }
  
  void displayShip() {
    fill(255,0,255);
    rectMode(CENTER);
    rect(x,y,sizeOfSide,sizeOfSide);
    rect(placeForOtherSqaureX,placeForOtherSqaureY,sizeOfSide,sizeOfSide);
    
    
   
  }
  void checkToSeeIfClicked() {
   if ((mouseY > y - halfSize && mouseY < y- halfSize + sizeOfSide*2) && (mouseX > x- halfSize && mouseX < x - halfSize + sizeOfSide )) { 
    if (mousePressed && (mouseButton == LEFT)) {
      shipMoving = true;
    }
    else {
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







}