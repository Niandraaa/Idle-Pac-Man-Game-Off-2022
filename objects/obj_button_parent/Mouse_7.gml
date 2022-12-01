if global.aUnlocks[self.ID] == true
{
	if self.Script != -1
	{
		script_execute(self.Script)
	}
	
}
else
{
	self.Shake = true	
}