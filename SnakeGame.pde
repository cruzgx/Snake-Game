ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();

int w = 30, h = 30, blocks = 20, direction = 2;
int[] x_direction = {0,0,1,-1}, y_direction = {1,-1,0,0};

void setup(){
  size(600,600); //draws our window
  x.add(0); 
  y.add(15);
}

void draw(){
  /*
  background(102, 102, 153); //sets the color of the bckgrnd
  
  //An ellipse is basically a circle
  fill(214, 133, 99); //fills in the color of the ellipse; or circle
  ellipse(200, 200, 80, 80); 
  
 //creation of a second ellipse with the position of our mouse & rand color
 fill(random(255), random(255), random(255));
 ellipse(mouseX,mouseY,80,80);
  */
  
  background(0);
  fill(56,168,50);  
  for(int i = 0; i < x.size(); i++) rect(x.get(i) * blocks, y.get(i) * blocks, blocks, blocks);
  
  if(frameCount % 8 == 0){
    x.add(0, x.get(0) + x_direction[direction]);
    y.add(0, y.get(0) + y_direction[direction]); 
    
    x.remove(x.size() - 1);
    y.remove(y.size() - 1);
  }
}

void keyPressed(){
   int newdir=keyCode == DOWN? 0:(keyCode == UP?1:(keyCode == RIGHT?2:(keyCode == LEFT?3:-1)));
  if(newdir != 1) direction = newdir;
}
