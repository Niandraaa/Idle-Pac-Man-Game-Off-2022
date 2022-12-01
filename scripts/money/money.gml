function moneyAdd(argument0)
{
	global.Player_money = global.Player_money + argument0
	
	global.Tracking_totalmoney = global.Tracking_totalmoney + argument0
	
	if global.Tracking_totalmoney >= 500
	{
		if not global.aUnlocks[unlock_recovery]
		{
			global.aUnlocks[unlock_recovery] = true
		}
	}
}

function moneySub(argument0)
{
	global.Player_money = global.Player_money - argument0
}

function moneyGet()
{
	return global.Player_money
}