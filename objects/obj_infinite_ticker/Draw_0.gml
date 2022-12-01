draw_set_color(self.Cols[self.Colour])
draw_set_alpha(self.DrawAlpha)
draw_text(x,y,self.Text)

y = y - 1
self.DrawAlpha = self.DrawAlpha - 0.009

if self.DrawAlpha <= 0
{
	instance_destroy()	
}

draw_set_alpha(1)