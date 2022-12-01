if place_meeting(x,y,obj_tile_wall) or place_meeting(x,y,obj_sniper_main)
{
	self.Free = false
}
else
{
	if layer_get_visible(layer)
	{
		self.Free = true
	}
	else
	{
		self.Free = false	
	}
}

if layer_get_visible(layer)
{
	if image_alpha < 1
	{
		image_alpha = image_alpha + 0.045
	}
}