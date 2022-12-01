if self.Owner.PickedUp
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
		self.Owner.PickedUp = false
	}
	else
	{
		print("resetting!")

		self.Owner.x = self.Owner.SavedX
		self.Owner.y = self.Owner.SavedY
	}
}

self.Owner.PickedUp = false