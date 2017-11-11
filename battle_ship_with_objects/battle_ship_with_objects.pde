// Muhammad Ahmed
// November 14 2017
// Compsci 30 fall 2017
// 2d array
// extra for exp = objects : ) dont know how i lived without them.


int[][] theBoard, theEnemyBoard, theFinalBoard;

int rows, cols,state,lengthOfBoard,squareHeight, squareWidth;

boolean letTheGameBegin;

Ship ship1, ship2, ship3;

Button startButton, readyButton;

void setup() {
  size(600, 600);
  state = 0; // default being the start screen
  
  lengthOfBoard = 20;
  
  newObjects();// starting all my objects
  

  rows = lengthOfBoard;
  cols = lengthOfBoard;
}

void draw() {
  background(255);

  if (state == 0) { // This is the start Menu code. 
    startButton.displayButton(width/2, height/2, 200, 200);
    startButton. isTheButtonBeingClicked(1);
    startButton.theText("start");
  }

  if (state == 1) { // ) where the ships are setup;
    startBoardValues(); // these are setting up the board and values that go with it. 
    displayBoard();

    readyButtonHandler(); // putting all my object code into functions. 
    shipHandler();

    displayFinalShips(); // showing real time where all the ships are
  }
  
  if (state == 2) { 
    letTheGameBegin(); // starting my second array to handel the final placements of the ships.
  }


  if (state == 3) { // the main game code.
    drawChangingBoard();

}


}




///////  misc

void letTheGameBegin() {
  println("true");
  theBoard = theFinalBoard;
  
  state = 3;
}


////// starting all the values functions

void newObjects() {
  ship1 = new Ship();
  ship2 = new Ship();
  ship3 = new Ship();

  startButton = new Button();
  readyButton = new Button();
}
void readyButtonHandler() {
  readyButton.displayButton(0 + width/5, 0 + height/4, 200, 100);
  readyButton.isTheButtonBeingClicked(2);
  readyButton.theText("Battle!!");
}


void shipHandler() {
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
}


void startBoardValues() {
  theBoard = new int [cols*2][rows*2];
  theEnemyBoard = new int [cols] [rows];
  theFinalBoard = new int [cols*2][rows*2];
  squareWidth = width/cols;
  squareHeight =height/rows;
}


///////// all Code that concerns board drawing
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


///// playerHandler 

void drawChangingBoard() {

  for (int x = 1; x < cols; x++) {
    for (int y = 1; y < rows; y++) {
     // println(theFinalBoard[x][y]);
      if (theBoard[x][y] == 1) {
        fill(0);
        rect(x*squareWidth, y*squareHeight, squareWidth, squareHeight);
      }
      else {
        fill(255);
        rect(x*squareWidth, y*squareHeight, squareWidth, squareHeight);
      }
    }
  }

}