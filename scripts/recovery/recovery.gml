// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recoveryBuy()
{
	if global.Player_money >= obj_button_recovery.Cost
	{
		moneySub(obj_button_recovery.Cost)
		obj_button_recovery.Cost = round(obj_button_recovery.Cost * obj_button_recovery.Increase)
		obj_button_recovery.Purchases++
		
		global.Pacman_sleep = global.Pacman_sleep - 0.1
	}
}