int[][] theBoard, theEnemyBoard;
int rows, cols;
int state, lengthOfBoard;
int squareHeight,squareWidth;

//Ship ship1;

void setup() {
  size(600,600);
  state = 1;
  lengthOfBoard = 20;
  
  rows = lengthOfBoard;
  cols = lengthOfBoard;
  

}

void draw() {
  background(255);
  startBoardValues();
  displayBoard();
  displayEnemyBoard();
  //ship1.displayShip();
  
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