// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pacmanCheckForOrbs()
{
	path = path_add()
	
	with obj_food
	{
		if self.TargettedBy == other
		{
			self.TargettedBy =-1	
		}
	}
	
	//var food =  pacmanFindNearestFree()//instance_nearest(x,y,obj_food)
	var food =  instance_nearestP(x,y,obj_food)
	
	if food >= 0
	{
	
	self.MovingObj = food
	food.TargettedBy = self
	
	var _dis = distance_to_object(food)
	
	var found_food = mp_grid_path(global.mp_grid,path,x,y,food.x,food.y,false)
	
	if found_food
	{
		path_start(path,global.Pacman_speed,path_action_stop,false)
	}
	
	}
	
}

function pacmanCheckFacing()
{

	if y == self.PreviousY
	{

	
		if x < self.PreviousX
		{
			image_xscale = -1
		}
		else
		{
			image_xscale = 1	
		}
	
	}
}

function pacmanPausePath()
{
	if path_exists(path)
	{
		path_delete(path)
	}
}


function instance_nearestP(argument0,argument1,argument2)
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
	    if (o.TargettedBy == -1) 
		{ 
			if (nearest == noone || d < dist) 
			{ 
				nearest = o; dist = d; 
			} 
		}
	}
	
	return nearest;
}