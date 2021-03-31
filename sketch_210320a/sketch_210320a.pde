
BMScontrols bms;
PShader edges;
Grid grid;
void settings(){
  size(1200,600);
};

void setup(){
  
  bms = new BMScontrols(this,true);
  grid = new Grid(50,50,width-50,height-50,5,bms);
  grid.toggle = true;
  //grid.debug = true;
  bms.setRadius(5);
};

void draw(){
  
  
  grid.grid_functions();
  bms.run(mouseButton);
  bms.toggleAllMenuButtons();
  bms.setTabvScroll(1,0,200);
};
