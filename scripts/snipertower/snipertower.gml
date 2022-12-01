// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function snipertowerBuy()
{
	if global.Player_money >= obj_button_snipertowers.Cost
	{
		moneySub(obj_button_snipertowers.Cost)
		obj_button_snipertowers.Cost = obj_button_snipertowers.Cost * obj_button_snipertowers.Increase
		obj_button_snipertowers.Purchases++
		
		instance_create_layer(535,342,"SNIPERS",obj_sniper_main)
	}
}