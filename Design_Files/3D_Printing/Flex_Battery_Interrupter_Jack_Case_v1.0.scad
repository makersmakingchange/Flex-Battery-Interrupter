 $fn=30;
jackBox();
translate ([15,0,0])jackSabot();



//******************************* SUBROUTINES **********************************

module jackBox(){
translate ([0,0,16/2])difference(){
roundedCube (14,11,16,1);
translate ([0,0,1]) cube([14-2,11-2,16-2], center = true); //remove jack area
translate ([0,-1.0,-16/2])cylinder(d=6,h=3,$fn=24);	 //main jack bore

translate ([0,-1.0,-6.5])cylinder(d1=6,d2=7.5,h=1.5,center = true,$fn=24);	 //jack thread EZ find bevel
}


}//module

module jackSabot(){
translate ([0,0,2.4/2])difference(){
cube([14-.4,12-.4,2.4], center = true);
    hull() { //jack end slot
    translate ([5,0,1])cylinder(d=3,h=8, center = true);//jack end hole
    translate ([5+3,0,1])cylinder(d=3,h=8, center = true);
}//
	
   hull() { //strip end slot
    translate ([-3,4.5,1])cylinder(d=3,h=8, center = true); //strip end hole
    translate ([-3,4+3.5,1])cylinder(d=3,h=8, center = true); //strip end hole
}//

 
  hull() { //middle slot
    translate ([1.5,-4.5,1])cylinder(d=3,h=8, center = true);//middle hole
    translate ([1.5,-4.5-3,1])cylinder(d=3,h=8, center = true);//middle hole
}//
 
}//difference
}//module 


module roundedCube (myBoxWidth,myBoxDepth,myBoxHeight,minkRadius)
//** By Derrick Andrews Same as regular cube, but with rounded sides and bottom
//** maintains proper 'cube' dimensions due to compensation for object expansion 
//** that normally occurs while using Minkowski operations in OpenSCAD)
{
union()
{

minkowski(){
cube([myBoxWidth-minkRadius*2,myBoxDepth-minkRadius*2,myBoxHeight-minkRadius*2], center = true);//Main plate   original cube([90,testSize8,8.5]
sphere(r=minkRadius,$fn=30);
}  //end mink


}//end union
}//end module roundedCube