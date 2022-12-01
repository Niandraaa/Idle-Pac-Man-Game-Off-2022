draw_self()

if self.Owner.PickedUp
{
	draw_sprite_ext(spr_sniper_top_1, 1, self.Owner.SavedX, self.Owner.SavedY-35, 1, 1, 0, c_white,0.5);	
}

