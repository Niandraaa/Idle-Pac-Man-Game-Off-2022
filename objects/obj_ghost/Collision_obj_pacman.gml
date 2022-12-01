if other.State != state_sleeping
{
	if other.State != state_towerin
	{
		if self.State != enemy_shake
		{
			other.State = state_sleeping
			self.State = enemy_reset
			self.Idle_ticks = 4
			self.Idle_steps = 0
			

	
			enemyPausePath()
		}
	}
}
