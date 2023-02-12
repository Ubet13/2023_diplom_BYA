import g4p_controls.*;
GWindow Screen;

Table table;
int n=3000000;
float [][][] xx = new float[n][5][4];
float [][][] xd = new float[n][5][4];

int ee=0;
int ee1;
int k,k1;
void setup() {
  size(900,900,P3D);
  table = loadTable("data.csv", "header");
  Screen =  GWindow.getWindow(this, "Fullscreen", 100, 50, 480, 320, P2D);
  Screen.addDrawHandler(this, "windowDraw");
  k1=0;
  k=0;
  println(table.getRowCount() + " total rows in table");

  for (TableRow row : table.rows()) {
   
   ee = row.getInt(0);   

    k1=k1+1;

     xx[k1][0][0] = row.getFloat(1)*0.03;
     xx[k1][1][0] = row.getFloat(2)*0.03;
     xx[k1][2][0] = row.getFloat(3)*0.03;
     xx[k1][3][0] = row.getFloat(4)*0.03;
      
     xx[k1][0][1] = row.getFloat(5)*0.03;
     xx[k1][1][1] = row.getFloat(6)*0.03;
     xx[k1][2][1] = row.getFloat(7)*0.03;
     xx[k1][3][1] = row.getFloat(8)*0.03;
    
     xx[k1][0][2] = row.getFloat(9)*0.03;
     xx[k1][1][2] = row.getFloat(10)*0.03;
     xx[k1][2][2] = row.getFloat(11)*0.03;
     xx[k1][3][2] = row.getFloat(12)*0.03;
      
     xd[k1][0][0] = row.getFloat(13)*0.002;
     xd[k1][0][1] = row.getFloat(17)*0.002;
     xd[k1][0][2] = row.getFloat(21)*0.002;

  }
 println(k1);
}


void draw(){
  
  background(0);
  translate(width/2, height*0.8);
  rotateX(PI/2);
    rotateZ(PI/4);
  if (mousePressed){
}

 fill(255);
   stroke(255);
  for (int i = 0; i < n; i++) {
  
  
point(xx[i][0][0]+xd[i][0][0]*float(mouseX-width/2) ,xx[i][0][1]+xd[i][0][1]*float(mouseX-width/2) , xx[i][0][2]+xd[i][0][2]*float(mouseX-width/2));
  

}
}

public void windowDraw(PApplet app, GWinData data) {
  app.background(255);
  app.strokeWeight(2);
  app.stroke(0);
  app.line(app.width / 2, app.height/2, app.mouseX, app.mouseY);
}
