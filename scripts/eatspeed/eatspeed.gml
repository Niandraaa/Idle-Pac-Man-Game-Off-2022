// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function eatspeedBuy()
{
	if global.Player_money >= obj_button_eatspeed.Cost
	{
		moneySub(obj_button_eatspeed.Cost)
		global.Player_eatspeed = global.Player_eatspeed - 0.075
		obj_button_eatspeed.Cost = round(obj_button_eatspeed.Cost * obj_button_eatspeed.Increase)
		obj_button_eatspeed.Purchases++
	}
}