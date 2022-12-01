if self.FadeIn
{
	if image_alpha < 1
	{
		image_alpha = image_alpha + 0.09	
	}
	else
	{
		self.FadeIn = false	
	}
}