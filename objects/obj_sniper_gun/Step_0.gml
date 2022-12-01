x = self.Owner.x+35
y = self.Owner.y-10

if instance_exists(obj_ghost)
{
	if self.Owner.TargettedGhost != -1
	{
		var dir = point_direction(x,y,self.Owner.TargettedGhost.x,self.Owner.TargettedGhost.y)
		
		image_angle = dir
	
		self.Steps++
		
		if self.Steps/room_speed >= self.Shoot_ticks
		{
			var bullet = instance_create_depth(x,y,depth,obj_sniper_bullet)
			bullet.MoveX = self.Owner.TargettedGhost.x
			bullet.MoveY = self.Owner.TargettedGhost.y
			
			self.Steps = 0
		}
	}
	else
	{
		self.Steps = 0
		image_angle = 0
	}
}
else
{
	self.Steps = 0
	image_angle = 0	
}