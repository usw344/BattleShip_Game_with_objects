int[][] theBoard, theEnemyBoard, theFinalBoard;
int rows, cols;
int state, lengthOfBoard;
int squareHeight, squareWidth;
boolean letTheGameBegin;
Ship ship1, ship2, ship3;

void setup() {
  size(600, 600);
  state = 1;
  lengthOfBoard = 20;
  ship1 = new Ship();
  ship2 = new Ship();
  ship3 = new Ship();

  rows = lengthOfBoard;
  cols = lengthOfBoard;
}

void draw() {
  background(255);
  if (state == 1) { // period prep to war. where the ships are setup;
    startBoardValues();
    displayBoard();
    //displayEnemyBoard();
    
    ship1.displayShip();
    ship2.displayShip();
    ship3.displayShip();
  
  
    ship1.checkToSeeIfClicked();
    ship1.move();
    ship1.snap();
  
    ship2.checkToSeeIfClicked();
    ship2.move();
    ship2.snap();
  
    ship3.checkToSeeIfClicked();
    ship3.move();
    ship3.snap();
    displayFinalShips();
  }
}



void startBoardValues() {
  theBoard = new int [cols*2][rows*2];
  theEnemyBoard = new int [cols] [rows];
  theFinalBoard = new int [cols*2][rows*2];
  squareWidth = width/cols;
  squareHeight =height/rows;
}
void displayEnemyBoard() {
  for (int x = 1; x < cols+1-10; x++) {
    for (int y = 1; y < rows/2; y++) {
      if (y == lengthOfBoard/2) {
        fill(0);
      } else {
        fill(255);
      }
      rect(x*squareWidth, y*squareHeight, squareWidth, squareHeight);
    }
  }
}
void displayBoard() {
  for (int x = 1; x < cols+1-10; x++) {
    for (int y = rows/2; y < rows; y++) {
      //println(" the value Of x is: " + x +  " the Value of y is: " + y);
      if (y == lengthOfBoard/2) {
        fill(0);
      } else {
        fill(255);
      }
      rect(x*squareWidth, y*squareHeight, squareWidth, squareHeight);
    }
  }
}
void displayFinalShips() {
  for (int x = 1; x < cols; x++) {
    for (int y = 1; y < rows; y++) {
      if (theBoard[x][y] == 1) {
        fill(0);
        rect(x*squareWidth, y*squareHeight, squareWidth, squareHeight);
      }
    }
  }
}

void letTheGameBegin() {
  if (letTheGameBegin) {
    theBoard = theFinalBoard;
    letTheGameBegin = false;
  }
  for (int x = 1; x < cols; x++) {
    for (int y = 1; y < rows; y++) {
      if (theBoard[x][y] == 1) {
        fill(0);
        rect(x*squareWidth, y*squareHeight, squareWidth, squareHeight);
      }
    }
  }
}