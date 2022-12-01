// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clickpowerBuy()
{
	if global.Player_money >= obj_button_clickpower.Cost
	{
		moneySub(obj_button_clickpower.Cost)
		global.Player_clickpower++
		obj_button_clickpower.Cost = round(obj_button_clickpower.Cost * obj_button_clickpower.Increase)
		obj_button_clickpower.Purchases++
	}
}

function clickCheckAmount()
{
	if not global.aUnlocks[unlock_clickpower]
	{
		if global.Tracking_clicks >= 25
		{
			global.aUnlocks[unlock_clickpower] = true
		}
	}
}