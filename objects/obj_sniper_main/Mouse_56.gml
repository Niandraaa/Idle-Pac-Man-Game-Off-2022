if self.PickedUp
{
	var is_valid = true
	
	if place_meeting(x,y,obj_tile_wall)
	{
		print("not valid!")
		is_valid = false
	}
	
	if not place_meeting(x,y,obj_tile_base)
	{
		is_valid = false
	}	
	
	if is_valid
	{
		print("valid place!")
		self.PickedUp = false
	}
	else
	{
		print("resetting!")
		print(x)
		print(y)
		print(self.SavedX)
		print(self.SavedY)
		x = self.SavedX
		y = self.SavedY
	}
}

self.PickedUp = false