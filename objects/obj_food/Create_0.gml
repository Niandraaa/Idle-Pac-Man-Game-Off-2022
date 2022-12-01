var maximum_health = global.Game_level

if global.Game_level > 10
{
	var chance = irandom_range(1,100)
	
	if chance <= 20
	{
		maximum_health = maximum_health + irandom_range(-2,2)	
	}
	

}

self.MaxHealth = maximum_health
self.Health = self.MaxHealth


var col = global.aColourArray[clamp(self.Health,0,array_length_1d(global.aColourArray))-1]
if self.Health >= 113
{
	col = global.aColourArray[113]
}

image_blend = col


self.PacmanEater = -1
self.TargettedBy = -1

self.ID = global.FoodID
global.FoodID++