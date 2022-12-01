if self.State != state_sleeping 
{
	if self.State != state_towerin
	{
		self.State = state_eating
		self.EatingObj = other
		other.PacmanEater = self
	}
}