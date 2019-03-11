void setup(){
  size(800, 800);
}
float[] a = new float[2];
float[] b = new float[2];
float[] c = new float[2];
float[] d = new float[2];

void draw() {
  background(250);
  noLoop();
  a[0] = 0; 
  a[1] = 0;
  b[0] = width;
  b[1] = 0;
  c[0] = 0;
  c[1] = height;
  d[0] = width;
  d[1] = height;
  
  //fill(85, 107, 47);
  //noStroke();
  //empty rectangle
  //triangle(a[0], a[1], b[0], b[1], d[0], d[1]);
  //triangle(a[0], a[1], b[0], b[1], c[0], c[1]);
  //triangle(b[0], b[1], c[0], c[1], d[0], d[1]);
  //triangle(a[0], a[1], c[0], c[1], d[0], d[1]);
  //rect(a[0], a[1], d[0], d[1]);
  drawGrid(4,6);
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
