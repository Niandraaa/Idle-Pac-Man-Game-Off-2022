if self.Owner.AssignedPacman != -1
{
	if other.image_alpha >= 1
	{
		if not self.Owner.PickedUp
		{
			self.Owner.TargettedGhost = other
		}
	}
	/*
	if not self.Owner.PickedUp
	{
		with other
		{
			self.State = enemy_idle
			self.Idle_ticks = 4
			self.Idle_steps = 0
	
			x = self.StartX
			y = self.StartY
	
			self.OriginX = x
			self.OriginY = y
	
			enemyPausePath()
		}
	}
	*/
}