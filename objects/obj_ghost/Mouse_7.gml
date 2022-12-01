print(self.State)
print(self.MovingObj)

if self.State != enemy_shake
{
	if self.Shake_cooldown <= 0
	{
		self.ReturnX = x
		self.ReturnY = y
		self.State = enemy_shake
		self.Shake_cooldown = 3
		
		global.Tracking_ghoststabs++
		
		if global.Tracking_ghoststabs >= 5
		{
			if not global.aUnlocks[unlock_ghostfreeze]
			{
				global.aUnlocks[unlock_ghostfreeze] = true	
			}
		}	
	}
}