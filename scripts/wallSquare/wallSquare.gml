var xx = argument0
var yy = argument1
var ww = argument2
var hh = argument3

for(var ii = 0; ii < ww; ii++) {
	for(var jj = 0; jj < hh; jj++) {
		var wall = instance_create_depth(xx+block*ii,yy+block*jj,0,objWall)	
		wall.feature = true
	}
}