// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pacspeedBuy()
{
	if global.Player_money >= obj_button_pacspeed.Cost
	{
		moneySub(obj_button_pacspeed.Cost)
		global.Pacman_speed = global.Pacman_speed * 1.6
		obj_button_pacspeed.Cost = round(obj_button_pacspeed.Cost * obj_button_pacspeed.Increase)
		obj_button_pacspeed.Purchases++
		
		with obj_pacman
		{
			if self.State == state_moving
			{
				self.State = state_idle	
			}
		}
	}
}