int[][] theBoard, theEnemyBoard;
int rows, cols;
int state, lengthOfBoard;
int squareHeight,squareWidth;

Ship ship1,ship2,ship3;

void setup() {
  size(600,600);
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
  startBoardValues();
  displayBoard();
  displayEnemyBoard();
  ship1.displayShip();
  ship2.displayShip();
  ship3.displayShip();

  
  ship1.checkToSeeIfClicked();
  ship1.move();
  
  ship2.checkToSeeIfClicked();
  ship2.move();
  
  ship3.checkToSeeIfClicked();
  ship3.move();
  
}



void startBoardValues() {
  theBoard = new int [cols][rows];
  theEnemyBoard = new int [cols] [rows];
  squareWidth = width/cols;
  squareHeight = height/rows;
  
  
}
void displayEnemyBoard() {
  for (int x = 0; x < cols-10; x++) {
    for (int y = 0; y < rows/2; y++) {
      if (y == lengthOfBoard/2) {
        fill(0);
      }
      else {
        fill(255);
      }
      rect(x*squareWidth,y*squareHeight,squareWidth,squareHeight);  
  }
    
  
  }
}
void displayBoard() {
  for (int x = 0; x < cols-10; x++) {
    for (int y = rows/2; y < rows; y++) {
      if (y == lengthOfBoard/2) {
        fill(0);
      }
      else {
        fill(255);
      }
      rect(x*squareWidth,y*squareHeight,squareWidth,squareHeight);
    }
  
  }
}