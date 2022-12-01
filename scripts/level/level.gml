function levelClear()
{
	
	if instance_exists(obj_food)
	{
		instance_destroy(obj_food)	
	}
	
	var lvl = string(global.Game_level)
	var times_num = 6.8
	
	if string_length(lvl) == 2
	{
		times_num = 60.4
	}
	else if string_length(lvl) == 3
	{
		times_num = 600.4
	}
	
	moneyAdd(round(global.Game_level*times_num))
	global.Game_level++
	levelGenerateRandom(irandom_range(7*global.Game_level,9*global.Game_level))
	//levelGenerateRandom(4)
	//levelGenerateRandom(irandom_range(3,5))
	
	if global.Game_level == 2
	{
		level2()	
	}
	else if global.Game_level == 3
	{
		level3()	
	}
	else if global.Game_level == 4
	{
		var ghost = instance_create_layer(535,132,"GHOSTS",obj_ghost)
		with ghost
		{
			objectBlue()
		}
	}
	else if global.Game_level == 5
	{
		level4()	
	}
	else if global.Game_level == 6
	{
		level5()	
	}
	else if global.Game_level == 7
	{
		level6()	
	}
	else if global.Game_level == 8
	{
		level7()	
	}
	else if global.Game_level == 9
	{
		level10()	
	}
	else if global.Game_level == 10
	{
		layer_set_visible("INFINITE",true)
		obj_infinite.FadeIn = true

		var pos_array;
		pos_array[0] = [220,517]
		pos_array[1] = [115,517]
		pos_array[2] = [185,517]
		pos_array[3] = [150,517]
		pos_array[4] = [150,552]
		pos_array[5] = [185,552]
		pos_array[6] = [220,517]
		pos_array[7] = [220,552]

		with obj_tile_wall
		{

			var i;
			for (i=0;i<array_length_1d(pos_array);i++)
			{
				var index = pos_array[i]
		
				if index[0] == x and index[1] == y
				{
					print("replacing!")
					var newtile = instance_create_layer(index[0],index[1],layer,obj_tile_fakebase)
					newtile.depth = depth
					instance_destroy()
				}
			}
		}		

	}
	
}


function levelGenerateRandom(argument0)
{
	var num = instance_number(obj_tile_base)
	var generated = 0
	
	var free_space = []
	var free_num = 0
	var i;
	for (i=0;i<num;i++)
	{
		with obj_tile_base
		{
			if self.ID == i
			{
				if self.Free
				{
					free_space[array_length_1d(free_space)] = self
					free_num++
				}
			}
		}
	}
	
	var loops_num = argument0
	
	if free_num < argument0
	{
		loop_num = free_num	
	}
	
	if loops_num < 1
	{
		print("No free spaces left! Can't create food.")
		exit
	}

	var previous_number = 0
	while generated < loops_num
	{
		var chosen_number = irandom_range(0,array_length_1d(free_space)-1)
		var index = free_space[chosen_number]
		
		//peepeepoopoo
		if index == -1
		{
			if generated == previous_number
			{
				if generated >= 246
				{
					generated = loops_num + 1
				}
			}
			continue;
		}
		else
		{
			var pellet = instance_create_layer(index.x,index.y,"FOOD",obj_food)
			if instance_exists(obj_pacman)
			{
				pellet.depth = obj_pacman.depth-1
			}
			free_space[chosen_number] = -1
		}
		
		generated++
		
		if generated == previous_number
		{
			//print("loop has gotten stuck B")
		}
		else
		{
			//print("loop has ***NOT*** gotten stuck")
			previous_number++			
		}
		

	
	}

	
}

function leaveGetFreeSpaceNum()
{
	var free_tiles = 0
	var i;
	for (i=0;i<num;i++)
	{
		with obj_tile_base
		{
			if self.ID == i
			{
				if self.Free
				{
					free_tiles++	
				}
			}
		}
	}
	
	return free_tiles
}

function level2()
{	
	layer_set_visible("GAMEBOARD_2",true)
	
	var array;
	array[0] = [395,342]
	array[1] = [395,377]
	array[2] = [710,342]
	array[3] = [710,377]
	
	
	with obj_tile_wall
	{
		var i;
		for (i=0;i<array_length_1d(array);i++)
		{
			var index = array[i]
			
			if index[0] == x and index[1] == y
			{
				self.Destroy = true
				//instance_destroy()
			}
		}
	}
	
	
	global.GridAcross = global.GridAcross + 2
	global.GridDown = global.GridDown + 4
	global.GridX = 325-(17)
	global.GridY = 97-(17)
	controllerReset()
}

function level3()
{	
	layer_set_visible("GAMEBOARD_3",true)
	
	var array;
	array[0] = [535,167]
	array[1] = [570,167]
	
	
	with obj_tile_wall
	{
		var i;
		for (i=0;i<array_length_1d(array);i++)
		{
			var index = array[i]
			
			if index[0] == x and index[1] == y
			{
				self.Destroy = true
				//instance_destroy()
			}
		}
	}
	
	
	global.GridAcross = global.GridAcross + 2
	global.GridDown = global.GridDown + 4
	global.GridX = 325-(17)
	global.GridY = 97-(17)
	controllerReset()
	
	instance_create_layer(251,607,"NOTIFY",obj_notify_base)
}

function level4()
{	
	layer_set_visible("GAMEBOARD_4",true)
	
	var array;
	array[0] = [780,307]
	array[1] = [780,272]
	
	
	with obj_tile_wall
	{
		var i;
		for (i=0;i<array_length_1d(array);i++)
		{
			var index = array[i]
			
			if index[0] == x and index[1] == y
			{
				self.Destroy = true
				//instance_destroy()
			}
		}
	}
	
	
	global.aGhostSpawns[array_length_1d(global.aGhostSpawns)] = [640,97]	
	global.aGhostSpawns[array_length_1d(global.aGhostSpawns)] = [640,132]	

	
	global.GridAcross = global.GridAcross + 8
	global.GridDown = global.GridDown + 4
	global.GridX = 325-(17)
	global.GridY = 62-(17)
	controllerReset()
}

function level5()
{	
	layer_set_visible("GAMEBOARD_5",true)
	
	var array;
	array[0] = [780,412]
	array[1] = [780,447]
	array[2] = [885,342]
	array[3] = [920,342]
	
	
	with obj_tile_wall
	{
		var i;
		for (i=0;i<array_length_1d(array);i++)
		{
			var index = array[i]
			
			if index[0] == x and index[1] == y
			{
				self.Destroy = true
				//instance_destroy()
			}
		}
	}
	

	global.aGhostSpawns[array_length_1d(global.aGhostSpawns)] = [900,587]

	controllerReset()
}



function level6()
{	
	layer_set_visible("GAMEBOARD_6",true)
	
	var array;
	array[0] = [780,587]
	array[1] = [325,377]
	array[2] = [325,412]
	
	
	with obj_tile_wall
	{
		var i;
		for (i=0;i<array_length_1d(array);i++)
		{
			var index = array[i]
			
			if index[0] == x and index[1] == y
			{
				self.Destroy = true
				//instance_destroy()
			}
		}
	}
	
	
	var ghost = instance_create_layer(115,622,"GHOSTS",obj_ghost)
	ghost.State = enemy_reset

	with ghost
	{
		self.Check = true
		objectPink()
	}
	
	
	global.aUnlocks[unlock_pacspeed] = true
	global.aGhostSpawns[array_length_1d(global.aGhostSpawns)] = [115,622]

	
	global.GridAcross = global.GridAcross + 7
	global.GridDown = global.GridDown + 1
	global.GridX = 80-17
	//global.GridY = 1025
	controllerReset()
}

function level7()
{	
	layer_set_visible("GAMEBOARD_7",true)
	
	var array;
	array[0] = [325,237]
	array[1] = [325,272]
	
	
	with obj_tile_wall
	{
		var i;
		for (i=0;i<array_length_1d(array);i++)
		{
			var index = array[i]
			
			if index[0] == x and index[1] == y
			{
				self.Destroy = true
				//instance_destroy()
			}
		}
	}
	
	var ghost = instance_create_layer(115,622,"GHOSTS",obj_ghost)
	with ghost
	{
		image_blend = make_color_rgb(255,145,102)
	}
	
	global.aGhostSpawns[array_length_1d(global.aGhostSpawns)] = [115,97]
	global.aGhostSpawns[array_length_1d(global.aGhostSpawns)] = [465,97]
	
	controllerReset()
}

function level10()
{
	if not global.aUnlocks[unlock_snipertower]
	{
		global.aUnlocks[unlock_snipertower] = true	
	}
}