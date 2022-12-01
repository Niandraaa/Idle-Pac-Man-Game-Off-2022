draw_self()


if global.aUnlocks[self.ID] == true
{

	sprite_index = spr_button_temporary75
	objectDBlue()
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)

	if image_xscale == 1
	{
	draw_set_font(Fredoka10)	
	}
	else
	{
	draw_set_font(Fredoka8)	
	}


	draw_text(x,y-18, string_upper(self.Name))
	draw_text(x,y+2, "$" + string(self.Cost))
	draw_text(x,y+17, "#" + string(self.Purchases))	

}
else
{
	if not sprite_index == spr_button_locked
	{
		sprite_index = spr_button_locked
	}
	
}