$fn = 100;

//(a)
module calibrate(outer_d, inner_d){

    difference(){

    cylinder(d = outer_d, h = 0.1);

    translate([0, 0, -1]) cylinder(d = inner_d, h = 3);
        }
}

calibrate(10,5);


//(b)
module calibrate(outer_d, inner_d){

    difference(){

    cylinder(d = outer_d, h = 0.1);

    translate([0, 0, -1]) cylinder(d = inner_d, h = 3);
        }
}

calibrate(10,3);

//(c)
module calibrate(wallthickness, inner_d, distance){

    difference(){

    translate([0, distance, 0])cylinder(d = wallthickness+inner_d, h = 0.1);

    translate([0, distance, -1]) cylinder(d = inner_d, h = 3);
        }
}

inner_d = [4,5];
distance = 7;
wallthickness = 1;
for(i =0:N-1, inner_d[0]+inner_d[1]+wallthickness > distance)
    calibrate(wallthickness, inner_d[i], distance);
