// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moremansBuy()
{
	if global.Player_money >= obj_button_moremans.Cost
	{
		moneySub(obj_button_moremans.Cost)
		obj_button_moremans.Cost = round(obj_button_moremans.Cost * obj_button_moremans.Increase)
		obj_button_moremans.Purchases++
		
		if global.Game_level <= 2
		{
			var pos_array;
			pos_array[0] = [535,342]
			pos_array[1] = [570,342]
			pos_array[2] = [535,377]
			pos_array[3] = [570,377]
			
			var picked = pos_array[irandom_range(0,3)]
			
			var pellet = instance_create_layer(picked[0],picked[1],"CHARACTERS",obj_pacman)			
		}
		else
		{
			 pacmanRandomSpawn()			
		}

		//instance_create_layer(535,342,"CHARACTERS",obj_pacman)
		
		if instance_exists(obj_ghost)
		{
			obj_ghost.State = enemy_idle
		}
	}
}

function pacmanRandomSpawn()
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
	

	while generated < 1
	{
		var chosen_number = irandom_range(0,array_length_1d(free_space)-1)
		var index = free_space[chosen_number]
		
		if index == -1
		{
			print("already selected!")
			continue;
		}
		else
		{
			var pellet = instance_create_layer(index.x,index.y,"CHARACTERS",obj_pacman)
			free_space[chosen_number] = -1
			generated++
		}
	}

	
}