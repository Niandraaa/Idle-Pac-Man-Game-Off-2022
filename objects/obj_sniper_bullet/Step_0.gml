direction = point_direction(x , y, self.MoveX, self.MoveY);
speed = 4;

self.Steps++

if self.Steps/room_speed >= 10
{
	if image_alpha >= 0
	{
		image_alpha = image_alpha - 0.09
	}
	else
	{
		instance_destroy()	
	}
}