self.Steps++
if self.Steps/room_speed >= 8
{
	self.FadeIn = false
	self.FadeOut = true
}

if self.FadeIn
{
	if image_alpha < 1
	{
		image_alpha = image_alpha + 0.03	
	}
	else
	{
		self.FadeIn = false
	}
}

if self.FadeOut
{
	if image_alpha > 0
	{
		image_alpha = image_alpha - 0.09
	}
	else
	{
		instance_destroy()
	}
}