if self.Destroy
{
	x = self.OriginX + irandom_range(-4,4)	
	y = self.OriginY + irandom_range(-4,4)
	
	image_alpha = image_alpha - 0.018
	
	if image_alpha <= 0
	{
		instance_destroy()
		controllerReset()
	}
}


if layer_get_visible(layer)
{
	if not self.Destroy
	{
		if image_alpha < 1
		{
			image_alpha = image_alpha + 0.045
		}
	}
}