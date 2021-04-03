
BMScontrols bms;
fileInput f;
PShader edges;
Grid grid;
void settings(){
  size(1200,600);
};

void setup(){
  
  bms = new BMScontrols(this,true);
  bms.initColors();
  //bms.debug = true;
  //bms.begin();
  //f = new fileInput(bms);
  Grid grid = new Grid(50,50,width-100,height-100,5,bms);
  grid.toggle = true;
  grid.sUpdate = true;
  //grid.debug = true;
  bms.add(grid);
  bms.setRadius(5);
  //bms.boundaries.get(0).debug = true;
  bms.boundaries.get(0).open = true;
  //bms.boundaries.get(0).toggle = true;
  bms.boundaries.get(0).visible = true;
  //bms.boundaries.get(0).setupPallete();
  //bms.main.Boundaries.get(0).open = true;
  Boundary b1 = new Boundary(0,0,width,height,2,bms);
  b1.id = 0;
  b1.visible = true;
  bms.add(b1);
  //bms.boundaries.get(0).Boundaries.add(b1);
  //bms.debug = true;
  String []s1 = {"test 1", "test 2","test 1", "test 2"};
  sliderBox sl1 = new sliderBox(200,200,90,90,10,s1,bms);
  sl1.setGrid(2,2,10,10);
  sl1.setPieSquare();
  //bms.add(sl1);
  bms.showGrid = true;
  println(bms.boundaries.get(0).Boundaries.size());
};

void draw(){
  
  bms.run(mouseButton);
  //bms.main.render();
  //bms.boundaries.get(0).Boundaries.get(0).draw2();
  //bms.boundaries.get(0).draw();
  //grid.grid_functions();
  bms.toggleAllMenuButtons();
  //bms.setTabvScroll(1,0,200);
  fill(0);
  text(frameRate,100,100);
};
