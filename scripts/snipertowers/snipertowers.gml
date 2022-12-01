function instance_nearestFREE(argument0,argument1,argument2)
{
	var xx, yy, objj, nearest;
	xx = argument[0];
	yy = argument[1];
	objj = argument[2];
	nearest = noone;
	dist = 100000;
	for (ii=0; ii<instance_number(objj); ii+=1) 
	{
	    var o, d;
	    o = instance_find(objj, ii);
	    d = point_distance(xx, yy, o.x, o.y);
	    if (o.Free) 
		{ 
			if (nearest == noone || d < dist) 
			{ 
				nearest = o; dist = d; 
			} 
		}
	}
	
	return nearest;
}