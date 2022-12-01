if self.State == state_pickedup
{
	print("RELEASED!")
	var is_valid = false
	
	if place_meeting(x,y,obj_soil)
	{
		print("FOUND SOIL!")
		is_valid = true
	}
	
	if is_valid
	{
		print("IN SOIL!!")
		self.State = state_insoil
		image_blend = c_green
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
	
		self.State = state_idle
}

