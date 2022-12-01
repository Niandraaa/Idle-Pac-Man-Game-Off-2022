draw_self()

draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(Fredoka10)

draw_set_alpha(image_alpha)
draw_text(x+((sprite_width-36)/2),y+((sprite_height-14)/2)-10,"Total clicks: " + string(global.Tracking_clicks))
draw_text(x+((sprite_width-36)/2),y+((sprite_height-14)/2)+20,"Total money: $" + string(global.Tracking_totalmoney))

draw_set_alpha(1)

