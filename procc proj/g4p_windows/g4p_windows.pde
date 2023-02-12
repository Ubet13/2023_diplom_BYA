import g4p_controls.*;
GWindow Screen;

void setup() {
  size(400, 320, P2D);
  Screen =  GWindow.getWindow(this, "Fullscreen", 100, 50, 480, 320, P2D);
  Screen.addDrawHandler(this, "windowDraw");
}

void draw() {
  background(230);
  rectMode(CENTER);
  rect(100, 100, 100, 100);
}

public void windowDraw(PApplet app, GWinData data) {
  app.background(255);
  app.strokeWeight(2);
  app.stroke(0);
  app.line(app.width / 2, app.height/2, app.mouseX, app.mouseY);
}
