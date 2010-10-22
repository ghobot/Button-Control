//button control top

Buttons myButtons;


void setup() {
  size(800,600);
  smooth();
  myButtons= new Buttons();
}

void draw() {
  background(0); 
  myButtons.buttonDraw();  
  myButtons.buttonRollover();
  myButtons.buttonDock();
  myButtons.buttonPress();
  myButtons.mousePressed();
}


class Buttons {

  float buttonSize;
  color c; // blue color of buttons
  boolean button1; //triggers for features  
  boolean button2;
  boolean button3;
  boolean button4;
  boolean button5;
  boolean buttonDock;//button dock makes button be on and off 



  Buttons() {

    buttonSize=width/10; //button size
    button1=false; //triggers for features  
    button2=false;
    button3=false;
    button4=false;
    button5=false;
    buttonDock=true;//button dock makes button be on and off 
    strokeJoin(ROUND);
    color c= color (39,91,162); //blue color
  }

void buttonDraw() {
    // draw button1    
    strokeWeight(.5);
    stroke(255);
    fill(39,91,162);
    rect(0,0,buttonSize*2,buttonSize);

    //button2
    strokeWeight(.5);
    stroke(255);
    fill(39,91,162);
    rect(width*.2,0,buttonSize*2,buttonSize);

    //button3
    strokeWeight(.5);
    stroke(255);
    fill(39,91,162);
    rect(width*.4,0,buttonSize*2,buttonSize);

    //button 4
    strokeWeight(.5);
    stroke(255);
    fill(39,91,162);
    rect(width*.6,0,buttonSize*2,buttonSize);

    //button 5
    strokeWeight(.5);
    stroke(255);
    fill(39,91,162);
    rect(width*.8,0,buttonSize*2,buttonSize);
  }  

void buttonRollover() { //animation when mouse is over button
    //button 1 rollover animation
    if (mouseX>0 && mouseX<width*.2 && mouseY<buttonSize) {
      strokeWeight(4);
      stroke(255);
      fill(255,150);
      rect(0,0, buttonSize*2, buttonSize);
    }
    //button2 rollover animation
    if (mouseX<width*.4 && mouseX>width*.2 && mouseY<buttonSize) {
      strokeWeight(4);
      stroke(255);
      fill(255,150);
      rect(width*.2,0, buttonSize*2, buttonSize);
    }
    //button3 rollover animation
    if (mouseX<width*.6 && mouseX>width*.4 && mouseY<buttonSize) {
      strokeWeight(4);
      stroke(255);
      fill(255,150);
      rect(width*.4,0, buttonSize*2, buttonSize);
    }
    //button4 rollover animation
    if (mouseX<width*.8 && mouseX>width*.6 && mouseY<buttonSize) {
      strokeWeight(4);
      stroke(255);
      fill(255,150);
      rect(width*.6,0, buttonSize*2, buttonSize);
    }
    //button5 rollover animation
    if (mouseX<width && mouseX>width*.8 && mouseY<buttonSize) {
      strokeWeight(4);
      stroke(255);
      fill(255,150);
      rect(width*.8,0, buttonSize*2, buttonSize);
    }
  }  

  void buttonDock() {
    if (mouseY>width/5) {
      buttonSize=0;
    }
    else {
      buttonSize=width/10;
    }
  }

void buttonPress() { //animation when button is pressed
   
    //button 1 press function
    if (button1) {
      noStroke();
      fill(255,255,0);
      rect(0,buttonSize/4, buttonSize*2, buttonSize/2);
    }   
    //button 2 press function
    if (button2) {
      noStroke();
      fill(255,255,0);
      rect(width*.2,buttonSize/4, buttonSize*2, buttonSize/2);
    }
    //button 3 press function
    if (button3) {
      noStroke();
      fill(255,255,0);
      rect(width*.4,buttonSize/4, buttonSize*2, buttonSize/2);
    }
    //button 4 press function
    if (button4) {
      noStroke();
      fill(255,255,0);
      rect(width*.6,buttonSize/4, buttonSize*2, buttonSize/2);
    }
    //button 5 press function
    if (button5) {
      noStroke();
      fill(255,255,0);
      rect(width*.8,buttonSize/4, buttonSize*2, buttonSize/2);
    }
  }

  void mousePressed() {

    if (mouseX>0 && mouseX<width*.2 && mouseY>0 && mouseY<buttonSize && mousePressed) {
      button1=!button1;
    }
    if (mouseX<width*.4 && mouseX>width*.2 && mouseY>0 && mouseY<buttonSize && mousePressed) {
      button2=!button2;
    }
    if (mouseX<width*.6 && mouseX>width*.4 && mouseY>0 && mouseY<buttonSize && mousePressed) {
      button3=!button3;
    }
    if (mouseX<width*.8 && mouseX>width*.6 && mouseY>0 && mouseY<buttonSize && mousePressed) {
      button4=!button4;
    }
    if (mouseX<width && mouseX>width*.8 && mouseY>0 && mouseY<buttonSize && mousePressed) {
      button5=!button5;
    }
  }
}

class Boyd{
  float boydSize=boydCenterY/2; //total size of boyd in ellipse
  float offsetY=boydSize/6; //boyd parts in relation to size
  float offsetX=boydSize/4;
  float boydEye= boydSize/1.2; //size of boyds eyes
  float n=1.2; //special ratio
  float r= random (0,255);
  float g= random (0,255);
  float b= random (0,255);
  float pop1= random (a,c); //eye popping factor
  float pop2= random (a,c); // eye popping factor
  smooth();
  
  

void drawBoyd(float a, float c, float boydCenterX, float boydCenterY) {
  //float boydCenterX; //center of figure
  //float boydCenterY;//center of figure
  

  //body to help draw boyd and hair
  strokeWeight(14);
  stroke(255,0,128);
  ellipse(boydCenterX, boydCenterY, boydSize, n*boydSize); //body guide
  strokeWeight(6);
  stroke(0,0,255);
  fill(255);
  ellipse(boydCenterX, boydCenterY, boydSize, n*boydSize); //hair


  //ears
  noStroke();
  fill (100,65,20);
  ellipse((boydCenterX+2*n*offsetX), (boydCenterY-(2*n*offsetY)), boydEye*n,boydEye*n); //right ear
  ellipse((boydCenterX-2*n*offsetX), (boydCenterY-(2*n*offsetY)), boydEye*n,boydEye*n); //left ear
  //boyd nose
  fill(182,152,115);
  rectMode(CENTER);
  rect(boydCenterX, boydCenterY+2*offsetY,n*offsetX,n*offsetX); //nose

  //teeth
  stroke(0);
  strokeWeight(1);
  fill(255,255,175);
  rect(boydCenterX, boydCenterY+5*offsetY, 30*n, 20*n); 

  float i;
  strokeWeight(1);
  for(i=boydCenterX-(15*n); i<=boydCenterX+(15*n); i+=(5*n)) {
    line(i, boydCenterY+3*offsetY,i, boydCenterY+6*offsetY+2*n);
  }

  //cheeks
  noStroke();
  fill (144,85,12);
  ellipse((boydCenterX+n*offsetX), (boydCenterY+(n*offsetX)), boydEye*n,boydEye*n); //right cheek
  ellipse((boydCenterX-n*offsetX), (boydCenterY+(n*offsetX)), boydEye*n,boydEye*n); //left cheek

  //eyes
  noStroke();
  fill(255);
  ellipse((boydCenterX+n*offsetX), (boydCenterY-offsetY), boydEye/n, boydEye); //right eye
  ellipse((boydCenterX-n*offsetX), (boydCenterY-offsetY), boydEye/n, boydEye); //left eye

    //boyd nose
  noStroke();
  fill(82,52,15);
  rectMode(CENTER);
  rect(boydCenterX, boydCenterY+2*offsetY,n*offsetX,n*offsetX); //nose

  //boyd pupils
  fill(r,g,b);
  ellipse((boydCenterX+n*offsetX), (boydCenterY-offsetY),pop1*8*n,pop1*8*n);
  ellipse((boydCenterX-n*offsetX), (boydCenterY-offsetY), pop2*8*n,pop2*8*n);

  //whiskers
  strokeWeight(2);
  stroke(0);
  line(boydCenterX-(2*n*offsetX), boydCenterY+(2*n*offsetY), boydCenterX-(4*n*offsetX),boydCenterY+(2*n*offsetY)); //left whiskers
  line(boydCenterX-(2*n*offsetX), boydCenterY+(2*n*offsetY), boydCenterX-(4*n*offsetX),boydCenterY+(3*n*offsetY));
  line(boydCenterX-(2*n*offsetX), boydCenterY+(2*n*offsetY), boydCenterX-(4*n*offsetX),boydCenterY+(offsetY));

  line(boydCenterX+(2*n*offsetX), boydCenterY+(2*n*offsetY), boydCenterX+(4*n*offsetX),boydCenterY+(2*n*offsetY)); //rightt whiskers
  line(boydCenterX+(2*n*offsetX), boydCenterY+(2*n*offsetY), boydCenterX+(4*n*offsetX),boydCenterY+(3*n*offsetY));
  line(boydCenterX+(2*n*offsetX), boydCenterY+(2*n*offsetY), boydCenterX+(4*n*offsetX),boydCenterY+(offsetY));
}




