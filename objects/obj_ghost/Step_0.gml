if layer_get_visible("GAMEBOARD_3")
{

	
	if self.State == enemy_idle
	{
		if image_alpha < 1
		{
			image_alpha = image_alpha + 0.09
		}
		else
		{
			self.Idle_steps++
		
			if self.Idle_steps/room_speed >= self.Idle_ticks
			{
				self.State = enemy_startchase
			}
		}
	}
	else if self.State == enemy_startchase
	{
		if instance_exists(obj_pacman)
		{
			enemyCheckForMoves()
			self.State = enemy_chasing
		}			
	}
	else if self.State == enemy_chasing
	{
		if image_xscale != 1
		{
			image_xscale =1
			image_yscale = 1
			image_angle = 0
		}
		
		if path_position == 1
		{
			self.State = enemy_idle
			self.Idle_ticks = 1.5
		}
		
		 pacmanCheckFacing()
	}
	else if self.State == enemy_reset
	{
		if image_alpha >= 0
		{
			image_alpha = image_alpha - 0.02
			image_angle = image_angle + 4
			image_xscale = image_xscale - 0.02
			image_yscale = image_xscale - 0.02
		}
		else
		{
			if self.Steps == 0
			{
				var chosen_id = global.aGhostSpawns[irandom_range(0,array_length_1d(global.aGhostSpawns)-1)]
	
				x = chosen_id[0]
				y = chosen_id[1]
	
				self.OriginX = x
				self.OriginY = y
				
				image_xscale = 1
				image_yscale = 1
				image_angle = 0
			}
			
			self.Steps++
			
			if self.Steps/room_speed >= self.Sleep_time
			{
				self.State = enemy_idle
				self.Steps = 0
			}
			
			
		}

	}
	else
	{
		if self.State != enemy_shake
		{
			print("state is unknown???")
		}	
	}
	
	if self.State == enemy_shake
	{
		enemyPausePath()
		x = self.OriginX + irandom_range(-3,3)
		y = self.OriginY + irandom_range(-3,3)
		
		self.Shake_steps++
		
		if self.Shake_steps/room_speed >= global.Ghost_shaketicks
		{
			self.State = enemy_idle
			self.Shake_steps = 0
			x = self.ReturnX 
			y = self.ReturnY 
		} 
	}
	else
	{
		self.OriginX = x
		self.OriginY = y
		
		if self.Shake_cooldown > 0
		{
			self.Shake_cooldownS++
			
			if self.Shake_cooldownS/room_speed >= 1
			{
				self.Shake_cooldown--
				self.Shake_cooldownS = 0
			}
		}
		else
		{
			if self.Shake_cooldownS != 0
			{
				self.Shake_cooldownS = 0	
			}
		}
	}


}


self.PreviousX = x
self.PreviousY = y

if self.FadeIn
{
	if image_alpha < 1
	{
		image_alpha = image_alpha + 0.09
	}
	else
	{
		self.FadeIn = false	
	}
}

if self.FadeOut
{
	if image_alpha > 0
	{
		image_alpha = image_alpha - 0.09
	}
	else
	{
		self.FadeOut = false	
	}
}