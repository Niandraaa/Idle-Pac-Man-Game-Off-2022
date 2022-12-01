function pacmanLeft()
{
	if self.State == state_eating
	{
		exit	
	}
	
	if self.Facing != facing_left
	{
		image_angle = 0
		image_xscale = -1
		self.Facing = facing_left
	}
	
	if not place_meeting(x-35,y,obj_tile_wall)
	{
		x = x - 35
	}
}

function pacmanRight()
{
	if self.State == state_eating
	{
		exit	
	}

	if self.Facing != facing_right
	{
		image_angle = 0
		image_xscale = 1
		self.Facing = facing_right
	}
	
	if not place_meeting(x+35,y,obj_tile_wall)
	{
		x = x + 35
	}
}

function pacmanUp()
{
	
	if self.State == state_eating
	{
		exit	
	}
	
	if self.Facing != facing_up
	{
		image_xscale = 1
		image_angle =  0
		image_angle = image_angle + 90
		self.Facing = facing_up
	}
	
	if not place_meeting(x,y-35,obj_tile_wall)
	{
		y = y - 35
	}
}

function pacmanDown()
{
	
	if self.State == state_eating
	{
		exit	
	}
	
	if self.Facing != facing_down
	{
		image_xscale = 1
		image_angle =  0
		image_angle = image_angle - 90
		self.Facing = facing_down
	}
	
	if not place_meeting(x,y+35,obj_tile_wall)
	{
		y = y + 35
	}
}