int clear = 255;

void setup(){
  size(1080, 1080);
} //end of setup()



void draw() {
  background(clear);
  noLoop();
  
  int n = 2;
  int p = 9;
  boolean test = false;
  if (test) {
    testCase(6,7,6,7,n,1000);
  }
  else {
    //loop through all the nodes in k
    for (int a1 = 0; a1 < p; a1++) {
      for (int a2 = 0; a2 < p; a2++) { 
        for (int a3 = 0; a3 < p; a3++) {
          for (int a4 = 0; a4 < p; a4++) {
            //loop through all the possibilities for each square in the grid
            
            //k is a matrix for one of the n^2 possible patterns
            int[][] k = { {a1, a3},
                          {a2, a4} };
                       
            //now we loop through squares and create the current possibility              
            for (int j = 0; j < n; j++) {
              
              for (int i = 0; i < n; i++) {
                
                if (k[i][j] < p) {
                drawPattern(k[i][j], i, j, n);
                }
                else {
                  break;
                }//finish drawing square at (i,j)
              }//end loop through i
            }//end loop through j
            
            //Finally we save the iteration
            String pattern = str(a1)+str(a2)+str(a3)+str(a4);
            save("export-revised-jpg/"+str(n)+"x"+str(n)+"-"+pattern+".jpg");
            delay(500);
            
            background(clear);
          }//end loop through a4
        }//end loop through a3
      }//end loop through a2
    }//end loop through a1
    println("all done");
  }//end of test/real if loop
} //end of draw()

void drawPattern(int k0, int i0, int j0, int n) {
  noStroke();
  fill(0);
  float ax = (i0 * width)/n;
  float ay = (j0 * height)/n;
  float bx = ((i0 + 1) * width)/n;
  float by = ay;
  float cx = ax;
  float cy = ((j0 + 1) * height)/n;
  float dx = bx;
  float dy = cy;
  
  float side = width/n;
  float side2 = width/(2*n);
  
  if (k0 == 1) {
    //full rectangle
    rect(ax,ay,side, side);
  }
  else if (k0 == 2) {
    //upper-left, lower-right diagonal, left shaded
    triangle(ax, ay, cx, cy, dx,dy);
  }
  else if (k0 == 3) {
    //upper-left, lower-right diagonal, right shaded
    triangle(ax, ay, bx, by, dx,dy);
  }
  else if (k0 == 4) {
    //lower-left, upper-right diagonal, left shaded
    triangle(bx, by, ax, ay, cx,cy);
  }
  else if (k0 == 5) {
    //lower-left, upper-right diagonal, right shaded
    triangle(cx, cy, bx, by, dx,dy);  
  }
  else if (k0 == 6) {
    //left half
    rect(ax, ay, side2, height/n);
  }
  else if (k0 == 7) {
    //right half
    rect( 0.5 * (ax + bx),ay,side2,height/n);
  }
  else if (k0 == 8) {
    //upper half
    rect(ax, ay, width/n, side2);
  }
  else {
    fill(clear);
    rect(ax,ay,side, side);
  }
  
}//end of drawPattern

void testCase(int a1, int a2, int a3, int a4, int n, int p) {
      int[][] k = { {a1, a3},
                    {a2, a4}  };
      
      for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
          if (k[i][j] < p){
            drawPattern(k[i][j], i, j, n);
          }
          else {
            break;
          }

        }
      }
      
} //end of testCase()
