// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyCheckForMoves()
{

	path = path_add()
	
	var pacman = instance_nearestT(x,y,obj_pacman)
	self.MovingObj = pacman
	var _dis = distance_to_object(pacman)
	
	var found_food = mp_grid_path(global.mp_grid,path,x,y,pacman.x,pacman.y,false)
	
	
	if found_food
	{
		path_start(path,self.Speed,path_action_stop,false)
	}

}

function enemyPausePath()
{
	if path_exists(path)
	{
		path_delete(path)
	}
}

function instance_nearestT(argument0,argument1,argument2)
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
	    if (o.State != state_towerin) 
		{ 
			if (nearest == noone || d < dist) 
			{ 
				nearest = o; dist = d; 
			} 
		}
	}
	
	return nearest;
}
