/*
if self.AssignedPacman == -1
{
	var nearest_pacman = instance_nearest(x,y,obj_pacman)
	
	nearest_pacman.State = state_towerin
	
	with nearest_pacman
	{
		pacmanPausePath()
		self.AssignedTower = other
	}
	
	self.AssignedPacman = nearest_pacman

}
else
{
	var nearest_block = instance_nearestFREE(x,y,obj_tile_base)
	
	self.AssignedPacman.image_xscale = 1
	self.AssignedPacman.image_yscale = 1
	self.AssignedPacman.x = nearest_block.x
	self.AssignedPacman.y = nearest_block.y
	self.AssignedPacman.State = state_idle
	self.AssignedPacman = -1
}
*/