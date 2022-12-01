switch (self.State)
{
	case state_idle:
		image_speed = 0.2
	break;
	
	case state_sleeping:
		image_speed = 0
	break;
	
	case state_moving:
		image_speed = 0.2
	break;
}

if self.State != state_sleeping
{
	image_blend = c_white
	
	if self.State == state_eating
	{
		self.Eating_Steps++
	
		if self.Eating_Steps/room_speed >= global.Player_eatspeed
		{
			if instance_exists(self.EatingObj)
			{
				with self.EatingObj
				{
					foodClicked(false)
				}
			
				self.Eating_Steps = 0
				self.PersonallyEaten++
			}
			else
			{
				self.State = state_idle	
			}
		}
	}
	else if self.State == state_idle
	{
		self.EatingObj = -1
		if instance_exists(obj_food)
		{
			pacmanCheckForOrbs()
			self.State = state_moving
		}
	}
	else if self.State == state_moving
	{
		if not instance_exists(self.MovingObj)
		{
			pacmanPausePath()
			self.State = state_idle
		}
		else
		{
			pacmanCheckFacing()	
		}
		
		if self.MovingObj == -1
		{
			self.State = state_idle
		}
	}
	else if self.State == state_towerin
	{
		x = self.AssignedTower.Extra.x+17	
		y = self.AssignedTower.y-sprite_height/2
		
		image_xscale = 0.8
		image_yscale = 0.8
		
	}
	else if self.State == state_pickedup
	{
		xx = mouse_x div 35	
		yy = mouse_y div 35	
	
		xx = xx*35
		yy = yy*35
	
		x = xx-8
		y = yy+9			
	}
	else if self.State == state_insoil
	{
		
	}
}
else
{
	//print("SLEEPING")
	if image_blend != c_blue
	{
		image_index = 0
		image_blend = c_blue
		pacmanPausePath()
	}
	
	self.Sleep_steps++
	
	if self.Sleep_steps/room_speed >= global.Pacman_sleep
	{
		image_blend = c_white
		self.State = state_idle
		self.Sleep_steps = 0
	}
}

self.PreviousX = x
self.PreviousY = y
