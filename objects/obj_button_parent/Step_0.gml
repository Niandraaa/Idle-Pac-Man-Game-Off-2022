if self.Shake
{
	self.Steps++
	
	x = self.OriginX + irandom_range(-5,5)
	y = self.OriginY + irandom_range(-5,5)
	
	if self.Steps/room_speed >= 0.2
	{
		self.Shake = false
		self.Steps = 0
		x = self.OriginX
		y = self.OriginY
	}
}