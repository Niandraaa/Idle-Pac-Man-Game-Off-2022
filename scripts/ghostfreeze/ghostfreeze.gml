// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ghostfreezeBuy()
{
	if global.Player_money >= obj_button_ghostfreeze.Cost
	{
		moneySub(obj_button_ghostfreeze.Cost)
		obj_button_ghostfreeze.Cost = obj_button_ghostfreeze.Cost * obj_button_ghostfreeze.Increase
		obj_button_ghostfreeze.Purchases++
		
		global.Ghost_shaketicks = global.Ghost_shaketicks + 0.2
	}
}