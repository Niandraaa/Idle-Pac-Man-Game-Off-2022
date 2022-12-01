if instance_exists(obj_pacman)
{
	depth = obj_pacman.depth+1
}

if self.PickedUp
{
	xx = mouse_x div 35	
	yy = mouse_y div 35	
	
	xx = xx*35
	yy = yy*35
	
	x = xx-8
	y = yy+9
}


if self.TargettedGhost != -1
{
	self.RangeColliding = 0
	for (i=0;i<array_length_1d(self.SniperTilesArray);i++)
	{
		with self.SniperTilesArray[i]
		{
			if place_meeting(x,y,other.TargettedGhost)
			{
				other.RangeColliding++
				self.DebugDraw = true
			}
		}
	}
	
	print(self.RangeColliding)
	if self.RangeColliding > 0
	{
		print("ghost is in range!")
	}
	else
	{
		print("GHOST NOT IN RANGE ANYMORE")
		self.TargettedGhost = -1
	}
}

