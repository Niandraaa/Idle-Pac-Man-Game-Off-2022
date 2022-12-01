self.PickedUp = false

self.Extra = instance_create_layer(x,y-35,layer,obj_sniper_extra)
self.Extra.Owner = self


self.Sniper = instance_create_depth(self.Extra.x+35,self.Extra.y-35,depth-1,obj_sniper_gun)
self.Sniper.Owner = self

self.AssignedPacman = 0 
self.TargettedGhost = -1

self.SavedX = x
self.SavedY = y

self.RangeColliding = 0

var starting_x = x-(round(global.Towers_range/2)*35)
var starting_y = (y)-(round(global.Towers_range/2)*35)
self.SniperTilesArray = []
for (i=0;i<global.Towers_range;i++)
{
	for (j=0;j<global.Towers_range;j++)
	{
		var block = instance_create_depth(starting_x+(i*35),starting_y+(j*35),depth+1,obj_sniper_range)
		block.Owner = self
		block.StartingX = x
		block.StartingY = y	
		
		block.DistanceX = block.Owner.x - block.x
		block.DistanceY = block.Owner.y - block.y
		
		self.SniperTilesArray[array_length_1d(self.SniperTilesArray)] = block
		
	}
}


