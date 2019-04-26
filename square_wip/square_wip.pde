void setup(){
  size(800, 800);
}
int clear = 255;
void draw() {
  background(clear);
  noLoop();
  
  int n = 2;
  //int[] nodes = new int[n * n];
  int p = 2;
  
  //for (int i = 0; i < (n * n); i++){
  //  nodes[i] = 0;
  //  print(nodes[i]);
  //}
  
  //loop through all the nodes in k
  for (int a1 = 0; a1 < p; a1++) {
    for (int a2 = 0; a2 < p; a2++) { 
      for (int a3 = 0; a3 < p; a3++) {
        for (int a4 = 0; a4 < p; a4++) {
          //loop through all the possibilities for each square in the grid
          
          //k is a matrix for one of the n^2 possible patterns
          int[][] k = { {a1, a2},
                        {a3, a4} };
                     
                        
          //now we loop through squares and create the current possibility              
          for (int j = 0; j < n; j++) {
            //loop through rows slowly...
            for (int i = 0; i < n; i++) {
              //and then through columns quickly
              
              if (k[i][j] < p) {
              drawPattern(k[i][j], i, j, n);
              }
              else {
                break;
              }
            }
          }
          
          //Finally we save the iteration
          String pattern = str(a1)+str(a2)+str(a3)+str(a4);
          save(str(n)+"x"+str(n)+"-"+pattern+".png");
        }
      }
    }
  }
  
}

void drawPattern(int k0, int i0, int j0, int n) {
  noStroke();
  // define the four corners of each square in the grid based on the upper left node i,j
  float ax = (i0 * width)/n;
  float ay = (j0 * height)/n;
  float bx = ax;
  float by = ((j0 + 1) * height)/n;
  float cx = ((i0 + 1) * width)/n;
  float cy = ay;
  float dx = cx;
  float dy = by;
  
  if (k0 == 0) {
    fill(clear);
    float side = width/n;
    rect(ax,ay,side, side);
  }
  else if (k0 == 1) {
    //full rectangle
    fill(0);
    float side = width/n;
    rect(ax,ay,side, side);
  }
  else if (k0 == 2) {
    //upper-left, lower right diagonal, left shaded
    fill(0);
  }
  else {
    println("no more patterns");
  }
  


}
  


void drawColumns(float numberOfColumns) {
  float n = numberOfColumns;
  for(int i = 0; i < n + 1; i = i+1) {
    float x = (i*width)/n;
    print(x," ");
    line(x,0,x,height);
  } 
}

void drawRows(float numberOfRows) {
  float n = numberOfRows;
  for(int i = 0; i < n + 1; i = i+1) {
    float y = (i*height)/n;
    print(y," ");
    line(0,y,height,y);
  } 
}

void drawGrid(float numRows, float numCols) {
  drawColumns(numCols);
  drawRows(numRows);
}
