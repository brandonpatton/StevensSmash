/// @description draw HUD

var p = global.numPlayers;
var hudBuffer = room_width / (p + 1);
var hudX = room_width / 2 - hudBuffer / 2;
var hudY = room_height * 0.9

for (var i = 0; i < p; i++)
{
	var thisX = hudX + hudBuffer * i;
	draw_sprite_ext(spr_characterIcon, characters[i].characterID, thisX, hudY, 0.6, 0.6, 0, c_white, 1);
	
	var percent = characters[i].damage_percent * 2.55;
	var damageColor = make_color_rgb(255, 255 - percent, 255 - percent);
	draw_text_outline(hudX, hudY, c_black, damageColor, string(characters[i].damage_percent) + "%");
	
	draw_text_outline(hudX, hudY + 50, c_black, c_white, charGetName(characters[i].characterID));
}