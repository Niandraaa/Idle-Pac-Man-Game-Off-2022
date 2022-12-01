draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(FredokaHUD)
draw_text(x,y-(sprite_height/4),"$" + string(global.Player_money))


draw_text(x,y+(sprite_height/4),"Lvl: " + string(global.Game_level))

