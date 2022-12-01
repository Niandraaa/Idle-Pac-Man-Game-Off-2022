

self.ID = global.WallID
global.WallID++

self.Destroy = false
self.OriginX = x
self.OriginY = y

if layer_get_visible(layer)
{

	image_alpha = 1	
}
else
{
	image_alpha = 0	
}

sprite_index = spr_wall