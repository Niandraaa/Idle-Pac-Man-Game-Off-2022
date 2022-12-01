draw_self()

draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

if global.aUnlocks[self.ID]
{
	draw_set_font(Fredoka8)
	draw_text(x+10,y+5,"Description:")
	draw_set_font(Fredoka10)
	draw_text(x+10,y+20,self.Text_unlocked + ".")	
}
else
{
	draw_set_font(Fredoka8)
	draw_text(x+10,y+5,"How to unlock:")
	draw_set_font(Fredoka10)
	draw_text(x+10,y+20,self.Text_locked + ".")	
}



draw_set_alpha(1)