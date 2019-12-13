$fn = 1000;


module posts(number, diameter, distance, height){
    
 distance2=[for (i = [0:distance:distance*number]) i];


        for(i = [0:number-1])
    translate([distance2[i], 0, 0]) cylinder(d = diameter, h = height);

    hull(){
        for(j = [0:number-1])
    translate([distance2[j], 0, 0]) cylinder(d = diameter+3, h = height-5);
    }
 
 }
 
 // radius = 10
 
 posts(5, 10, 15, 10);
 
 // radius = 5
 
 // posts(5, 5, 15, 10);
