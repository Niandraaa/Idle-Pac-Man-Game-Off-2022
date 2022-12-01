draw_sprite(spr_soil_top,1,x,y)
draw_sprite(spr_soil_bottom,1,x,y+16)


if self.PickedUp
{
	draw_sprite_ext(spr_soil_top, 1, self.SavedX, self.SavedY, 1, 1, 0, c_white,0.5);	
	draw_sprite_ext(spr_soil_bottom, 1, self.SavedX, self.SavedY+16, 1, 1, 0, c_white,0.5);	
}


