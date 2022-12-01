// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tickerCreate(argument0, argument1)
{
	var x_range = irandom_range(x-sprite_width/2,x+sprite_width/2)
	
	var ticker = instance_create_layer(x_range,y-sprite_height,"INFINITE",obj_infinite_ticker)
	ticker.Text = argument0
	ticker.Colour = argument1
}