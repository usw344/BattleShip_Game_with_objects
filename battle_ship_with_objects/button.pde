class Button {
  float buttonX,buttonY,buttonHeight,buttonWidth; 
  boolean isButtonClicked;
  
  Button() {
    isButtonClicked = false;
  }
  void displayButton(int x,y,h,w) {
    buttonX = x;
    buttonY = y;
    buttonHeight = h;
    buttonWidth = w;
    if (isButtonClicked) {
      fill(255,57,57);
    }
    else {
      fill(252,0,0);
    }
    rect(buttonX,buttonY,buttonWidth,buttonHeight);  
}
  void isTheButtonBeingClicked(int state) {
    if (mouseX > buttonX && mouseX < buttonX + buttonWidth && mouseY > buttonY && mouseY < buttonY + buttonHeight) {
      isButtonClicked = true;
      if (mousePressed == true) {
        doTheAction(int TheState);
      }
    }
  
  
  }

  void doTheAction(int stateVarNum) {
    
  }







}