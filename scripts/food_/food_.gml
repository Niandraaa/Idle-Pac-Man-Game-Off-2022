// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function foodColour()
{
	return make_color_rgb(60,152,112)
}

function foodClicked(argument0)
{
	
	if argument0 == true
	{
		var health_cap = clamp(global.Player_clickpower,0,self.Health)
		self.Health = self.Health - global.Player_clickpower
		moneyAdd(health_cap*2)
		global.Tracking_clicks++
		global.Tracking_foodsclicked = global.Tracking_foodsclicked + health_cap
		
		clickCheckAmount()
	}
	else
	{
		self.Health--
		global.Tracking_foodsclicked++
		moneyAdd(2)
	}
	
	if global.Tracking_foodsclicked >= 100
	{
		if not global.aUnlocks[unlock_eatspeed]
		{
			global.aUnlocks[unlock_eatspeed] = true	
		}
	}
	
	var col;
	if self.Health >= 113
	{
		col = global.aColourArray[113]
	}
	else
	{
		if self.Health < 0
		{
			self.Health = 0	
		}
		col = global.aColourArray[self.Health]
	}
	
	image_blend = col


	if self.Health <= 0
	{
		if self.PacmanEater != -1
		{
			with self.PacmanEater
			{
				if self.State != state_sleeping
				{
					self.State = state_idle
					self.Anim = state_moving
				}
			}
		}
		
		
		instance_destroy()
		
		if instance_number(obj_food) < 1
		{
			print("level clear!")
			levelClear()		
		}
	}	
}
