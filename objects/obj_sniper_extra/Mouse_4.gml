if not self.Owner.PickedUp
{
	self.Owner.SavedX = x
	self.Owner.SavedY = y
}

self.Owner.PickedUp = true