// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gameLaunched()
{
	
	colourArray()
	randomize()
	
	#macro state_idle 0
	#macro state_moving 1
	#macro state_eating 2
	#macro state_sleeping 3
	#macro state_towergoingto 4
	#macro state_towerin 5
	#macro state_towerleaving 6
	#macro state_pickedup 7
	#macro state_insoil 8
	
	#macro anim_idle 0
	#macro anim_moving 1
	#macro anim_eating 2
	#macro anim_sleeping 2
	
	#macro facing_right 0
	#macro facing_down 1
	#macro facing_left 2
	#macro facing_up 3
	
	#macro enemy_idle 0
	#macro enemy_startchase 1
	#macro enemy_chasing 2
	#macro enemy_shake 3
	#macro enemy_reset 4
	
	//Player
	global.Player_money = 0
	global.Player_prestige = 0
	global.Player_clickpower = 1
	global.Player_eatspeed = 1
	
	//grid
	global.GridAcross = 11
	global.GridDown = 9
	global.GridX = (395-(17))
	global.GridY = 237-(17)
	
	global.GridID = 0
	global.WallID = 0
	global.FoodID = 0
	
	//Game
	global.Game_level = 1
	global.Game_prestige = 0
	
	//Sniper towers
	global.Towers_range = 5
	
	#macro unlock_mans 0
	#macro unlock_clickpower 1
	#macro unlock_pacspeed 2
	#macro unlock_eatspeed 3
	#macro unlock_ghostfreeze 4
	#macro unlock_recovery 5
	#macro unlock_snipertower 6
	
	global.aUnlocks[unlock_mans] = true
	global.aUnlocks[unlock_clickpower] = false
	global.aUnlocks[unlock_pacspeed] = false
	global.aUnlocks[unlock_eatspeed] = false
	global.aUnlocks[unlock_ghostfreeze] = false
	global.aUnlocks[unlock_recovery] = false
	global.aUnlocks[unlock_snipertower] = false
	
	global.Tracking_clicks = 0
	global.Tracking_ghoststabs = 0
	global.Tracking_foodsclicked = 0
	global.Tracking_totalmoney = 0
	
	initPacmans()
	initEnemy()
	ghostSpawns()
	
	room_goto(room_main)
}


function initPacmans()
{
	global.Pacman_speed = 0.3
	global.Pacman_sleep = 3
}

function initEnemy()
{
	global.Ghost_shaketicks = 0.3	
}

function objectPink()
{
	image_blend = make_color_rgb(140,63,93)
	
}

function objectBlue()
{
	image_blend = make_color_rgb(77,166,255)
}

function objectGrey()
{
	image_blend = make_color_rgb(39,39,54)
}

function objectDBlue()
{
	image_blend = make_color_rgb(75,91,171)
}


function scaleReset()
{
	image_xscale = 1
	image_yscale = 1
}

function print(argument0)
{
	show_debug_message(object_get_name(object_index) + ": " + string(argument0))
}

function controllerReset()
{
	instance_destroy(obj_game_controller)
	instance_create_layer(0,0,"GAMECONTROLLER",obj_game_controller)
}

function pacmanReset()
{
	var pacman_x = obj_pacman.x
	var pacman_y = obj_pacman.y
	instance_destroy(obj_pacman)
	instance_create_layer(pacman_x,pacman_y,"CHARACTERS",obj_pacman)	
}

function colourArray()
{	
	//Greens
	global.aColourArray[0] = make_color_rgb(60,163,112)
	global.aColourArray[1] = make_color_rgb(62,163,125)
	global.aColourArray[2] = make_color_rgb(63,164,138)
	global.aColourArray[3] = make_color_rgb(65,164,151)
	global.aColourArray[4] = make_color_rgb(66,164,164)
	global.aColourArray[5] = make_color_rgb(68,164,177)	
	global.aColourArray[6] = make_color_rgb(69,165,190)
	global.aColourArray[7] = make_color_rgb(71,165,203)	
	global.aColourArray[8] = make_color_rgb(72,165,216)
	global.aColourArray[9] = make_color_rgb(74,165,229)
	global.aColourArray[10] = make_color_rgb(75,166,242)
	global.aColourArray[11] = make_color_rgb(77,166,255)
	
	global.aColourArray[12] = make_color_rgb(77,159,247)
	global.aColourArray[13] = make_color_rgb(77,152,240)
	global.aColourArray[14] = make_color_rgb(76,146,232)
	global.aColourArray[15] = make_color_rgb(76,139,224)
	global.aColourArray[16] = make_color_rgb(76,132,217)
	global.aColourArray[17] = make_color_rgb(76,125,209)
	global.aColourArray[18] = make_color_rgb(76,118,202)
	global.aColourArray[19] = make_color_rgb(76,111,194)
	global.aColourArray[20] = make_color_rgb(75,105,186)
	global.aColourArray[21] = make_color_rgb(75,98,179)
	global.aColourArray[22] = make_color_rgb(75,91,171)
	
	global.aColourArray[23] = make_color_rgb(73,87,164)
	global.aColourArray[24] = make_color_rgb(71,82,158)
	global.aColourArray[25] = make_color_rgb(70,78,151)
	global.aColourArray[26] = make_color_rgb(70,78,151)
	global.aColourArray[27] = make_color_rgb(68,74,145)
	global.aColourArray[28] = make_color_rgb(68,74,145)
	global.aColourArray[29] = make_color_rgb(66,70,138)
	global.aColourArray[30] = make_color_rgb(64,65,132)
	global.aColourArray[31] = make_color_rgb(62,61,125)
	global.aColourArray[32] = make_color_rgb(60,57,119)
	global.aColourArray[33] = make_color_rgb(59,53,112)
	global.aColourArray[34] = make_color_rgb(57,48,106)
	global.aColourArray[35] = make_color_rgb(55,44,99)
	
	global.aColourArray[36] = make_color_rgb(61,49,108)
	global.aColourArray[37] = make_color_rgb(67,55,118)
	global.aColourArray[38] = make_color_rgb(73,60,127)
	global.aColourArray[39] = make_color_rgb(79,65,136)
	global.aColourArray[40] = make_color_rgb(85,70,145)
	global.aColourArray[41] = make_color_rgb(92,76,155)
	global.aColourArray[42] = make_color_rgb(98,81,164)
	global.aColourArray[43] = make_color_rgb(104,86,173)
	global.aColourArray[44] = make_color_rgb(110,91,182)
	global.aColourArray[45] = make_color_rgb(116,97,192)
	global.aColourArray[46] = make_color_rgb(122,102,201)
	
	global.aColourArray[47] = make_color_rgb(134,102,196)
	global.aColourArray[48] = make_color_rgb(146,103,192)
	global.aColourArray[49] = make_color_rgb(158,103,187)
	global.aColourArray[50] = make_color_rgb(170,104,183)
	global.aColourArray[51] = make_color_rgb(182,104,178)
	global.aColourArray[52] = make_color_rgb(195,105,174)
	global.aColourArray[53] = make_color_rgb(207,105,169)
	global.aColourArray[54] = make_color_rgb(219,106,165)
	global.aColourArray[55] = make_color_rgb(231,106,160)
	global.aColourArray[56] = make_color_rgb(243,107,156)
	global.aColourArray[57] = make_color_rgb(255,107,151)
	
	global.aColourArray[58] = make_color_rgb(242,101,146)
	global.aColourArray[59] = make_color_rgb(230,95,140)
	global.aColourArray[60] = make_color_rgb(217,88,135)
	global.aColourArray[61] = make_color_rgb(204,82,130)
	global.aColourArray[62] = make_color_rgb(191,76,124)
	global.aColourArray[63] = make_color_rgb(179,70,119)
	global.aColourArray[64] = make_color_rgb(166,64,113)
	global.aColourArray[65] = make_color_rgb(153,58,108)
	global.aColourArray[66] = make_color_rgb(140,51,103)
	global.aColourArray[67] = make_color_rgb(128,45,97)
	global.aColourArray[68] = make_color_rgb(115,39,92)
	
	global.aColourArray[69] = make_color_rgb(121,40,92)
	global.aColourArray[71] = make_color_rgb(126,41,92)
	global.aColourArray[72] = make_color_rgb(132,41,92)
	global.aColourArray[73] = make_color_rgb(137,42,92)
	global.aColourArray[74] = make_color_rgb(143,43,92)
	global.aColourArray[75] = make_color_rgb(148,44,92)
	global.aColourArray[76] = make_color_rgb(154,45,92)
	global.aColourArray[77] = make_color_rgb(159,46,92)
	global.aColourArray[78] = make_color_rgb(165,46,92)
	global.aColourArray[79] = make_color_rgb(170,47,92)
	global.aColourArray[80] = make_color_rgb(176,48,92)
	
	global.aColourArray[81] = make_color_rgb(182,50,89)
	global.aColourArray[82] = make_color_rgb(188,51,87)
	global.aColourArray[83] = make_color_rgb(194,53,84)
	global.aColourArray[84] = make_color_rgb(200,55,82)
	global.aColourArray[85] = make_color_rgb(206,56,79)
	global.aColourArray[86] = make_color_rgb(213,58,77)
	global.aColourArray[87] = make_color_rgb(219,59,74)
	global.aColourArray[88] = make_color_rgb(225,61,72)
	global.aColourArray[89] = make_color_rgb(231,63,69)
	global.aColourArray[90] = make_color_rgb(237,64,67)
	global.aColourArray[91] = make_color_rgb(243,66,64)
	
	global.aColourArray[92] = make_color_rgb(237,63,62)
	global.aColourArray[93] = make_color_rgb(231,59,60)
	global.aColourArray[94] = make_color_rgb(225,56,59)
	global.aColourArray[95] = make_color_rgb(219,52,57)
	global.aColourArray[96] = make_color_rgb(213,49,55)
	global.aColourArray[97] = make_color_rgb(206,45,53)
	global.aColourArray[98] = make_color_rgb(200,42,51)
	global.aColourArray[99] = make_color_rgb(194,38,49)
	global.aColourArray[100] = make_color_rgb(188,35,48)
	global.aColourArray[101] = make_color_rgb(182,31,46)
	global.aColourArray[102] = make_color_rgb(176,28,44)
	
	
	global.aColourArray[103] = make_color_rgb(161,27,42)
	global.aColourArray[104] = make_color_rgb(147,26,41)
	global.aColourArray[105] = make_color_rgb(132,25,39)
	global.aColourArray[106] = make_color_rgb(118,24,38)
	global.aColourArray[107] = make_color_rgb(103,23,36)
	global.aColourArray[108] = make_color_rgb(89,21,35)
	global.aColourArray[109] = make_color_rgb(74,20,33)
	global.aColourArray[110] = make_color_rgb(60,19,32)
	global.aColourArray[111] = make_color_rgb(45,18,30)
	global.aColourArray[112] = make_color_rgb(31,17,29)
	global.aColourArray[113] = make_color_rgb(16,16,27)

}

function ghostSpawns()
{
	global.aGhostSpawns[0] = [535,132]
	global.aGhostSpawns[1] = [570,132]
}


function percentageGet(argument0,argument1)
{
	var number = argument1
	var percentage = argument0/100
	
	return percentage * number
	
	
}