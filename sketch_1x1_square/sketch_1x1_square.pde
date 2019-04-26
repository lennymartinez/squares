void setup(){
  size(100, 100);
}

void draw() {
  background(250);
  noLoop();
  noStroke();
  fill(0);
  
  int n = 1;
  int i0 = 0;
  int j0 = 0;
  
  
  float ax = (i0 * width)/n;
  float ay = (j0 * height)/n;
  float bx = ((i0 + 1) * width)/n;
  float by = ay;
  float cx = ax;
  float cy = ((j0 + 1) * height)/n;
  float dx = bx;
  float dy = cy;
  
  triangle(bx, by, ax, ay, cx,cy);
}

//void drawColumns(float numberOfColumns) {
//  float n = numberOfColumns;
//  for(int i = 0; i < n + 1; i = i+1) {
//    float x = (i*width)/n;
//    print(x," ");
//    line(x,0,x,height);
//  } 
//}

//void drawRows(float numberOfRows) {
//  float n = numberOfRows;
//  for(int i = 0; i < n + 1; i = i+1) {
//    float y = (i*height)/n;
//    print(y," ");
//    line(0,y,height,y);
//  } 
//}

//void drawGrid(float numRows, float numCols) {
//  drawColumns(numCols);
//  drawRows(numRows);
//}
