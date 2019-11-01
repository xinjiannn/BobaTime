 //declare bacteria variables here   
 Bacteria [] boba;
 int myX, myY, myColor;

 int mX = 270;
 void setup()   
 {     
 	//initialize bacteria variables here
 	frameRate(12);
 	size(600,600);
 	background(255,182,193);  
 	boba = new Bacteria [10];
 	for (int i = 0; i < boba.length; i++){
 		boba[i] = new Bacteria();
 	}

 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(255,182,193);
 	fill(0);
 	stroke(255);
 	strokeWeight(4);
 	// cup
 	beginShape();
   	vertex(150,200);
   	vertex(182,480);
   	vertex(370,480);
   	vertex(402,200);
   	endShape(CLOSE);
   	// straw
   	fill(137, 207, 240);
   	//rect(270, 80, 15, 300);
   	//rect(mouseX, mouseY, 15, 300);
   	if (mouseX < 210){
   		mX = 210;
   	} else if ( mouseX > 352) {
   		mX = 352;
   	} else {
   		mX = mouseX;
   	}
   	beginShape();
   	vertex(270,80);
   	vertex(mX,380);
   	vertex(mX+18,380);
   	vertex(288,80);
   	endShape(CLOSE);
   	// milk tea
   	fill(222,184,135);
   	noStroke();
   	beginShape();
   	vertex(166,270);
   	vertex(188,475);
   	vertex(365,475);
   	vertex(388,270);
   	endShape(CLOSE);
   	// boba
   	for (int i = 0; i < boba.length; i++){
   		boba[i].show();
   		boba[i].walk();
   	}

 } 	 
 void mousePressed()
{
	System.out.println(mouseX);
	System.out.println(mouseY);
	redraw();
}
 class Bacteria    
 {     
 	//lots of java! 
 	int myX, myY, myColor;
 	Bacteria(){
 		if ((int)(Math.random()*2) == 0){
 			myColor = color(139,69,19);
 		} else {
 			myColor = color(130,69,19);
 		}
 		myX = 166 + (int)(Math.random()*220);
 		myY = 350 + (int)(Math.random()*120);
 	}

 	void walk(){
 		//x
   		if ( myX > mouseX && myX > 218 ){
 			myX = myX - (int)(Math.random()*38)+10;
 		} else if( myX < mouseX && myX < 337 ) {
 			myX = myX + (int)(Math.random()*38)-10;
 		}
 		// y
 		if ( myY > mouseY && myY > 317 ){
 			myY = myY - (int)(Math.random()*38)-10;
 		} else if( myY < mouseY && myY < 440 ) {
 			myY = myY + (int)(Math.random()*38)-10;
 		}
 		
 		//myY = mouseY + (int)(Math.random()*120) -70;
 	}

 	void show(){
 		fill(myColor);
 		strokeWeight(2);
 		stroke(255);
 		ellipse(myX, myY, 30, 30);
 		
 	}


 }    