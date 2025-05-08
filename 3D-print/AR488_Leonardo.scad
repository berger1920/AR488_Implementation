// Case for AR488 with Arduino Leonardo
// rev.1 by Gerardo M. (aka Berger)

$fn=64;

xx=68.6;  // PCBs length
yy=53.3;  // PCBs width
zz=27.0;  // PCBs height
wall=2.0;
gap=1.0;  // Around the PCB.
gap2=0.1; // Cover. Depends on the printing.


// Case
difference() {
  
  union() {  
    difference() {
      cube([xx+gap*2+wall*2, yy+gap*2+wall*2, zz+wall+3.0]);
      translate([wall, wall, wall])
        cube([xx+gap*2, yy+gap*2, zz+3.0]);
    }
    
    // Fixings
    translate([wall+gap+14.0, wall+gap+2.5, 0]) {
      cylinder(h=wall+3.0, d=5, center=false);
      cylinder(h=wall+5.0, d=2.9, center=false);
    }
    translate([wall+gap+15.3, wall+gap+50.7, 0]) {
      cylinder(h=wall+3.0, d=5, center=false);
      cylinder(h=wall+5.0, d=2.9, center=false);
    }
    translate([wall+gap+66.1, wall+gap+7.6, 0]) {
      cylinder(h=wall+3.0, d=5, center=false);
      cylinder(h=wall+5.0, d=2.9, center=false);
    }
    translate([wall+gap+66.1, wall+gap+35.5, 0]) {
      cylinder(h=wall+3.0, d=5, center=false);
      cylinder(h=wall+5.0, d=2.9, center=false);
    }
  }
  
  // DC opening
  translate([0, wall+gap+3.5, wall+3.0+1.5])
    cube([wall, 9.5, 11.5]);
  
  // USB opening
  translate([0, wall+gap+33, wall+3.0])
    cube([wall, 10, 6.0]);
  
  // LEDs opening
  translate([0, wall+gap+14, wall+3.0+1.5])
    cube([wall, 15, 5.0]);
  
  // Cable
  translate([xx+gap*2+wall, (yy+gap*2+wall*2)/2, wall+3.0+1.5+13+11/2])
    rotate([0, 90, 0])
    cylinder(h=wall, d=11, center=false);
  translate([xx+gap*2+wall, (yy+gap*2+wall*2)/2-11/2, wall+3.0+1.5+13+11/2])
    cube([wall, 11, 10]);
  
}

/*
// Cover
difference() {
  union() {
  cube([xx+gap*2+wall*2, yy+gap*2+wall*2, wall]);
    translate([wall+gap2, wall+gap2, wall])
      cube([xx+gap*2-gap2*2, yy+gap*2-gap2*2, 12.2]);
  }
  translate([wall+gap2+1.8, wall+gap2+1.8, wall])
    cube([xx+gap*2-gap2*2-1.8*2, yy+gap*2-gap2*2-1.8*2, 12.2]);
  translate([xx+gap*2, (yy+gap*2+wall*2)/2-11/2, wall])
    cube([wall, 11, 12.2]);
  translate([11, 34.5, 0])
    cylinder(h=wall, d=4.2, center=false);
}
*/
