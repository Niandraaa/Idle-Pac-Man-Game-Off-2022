if image_alpha >= 1
{
	
	var lowest_percentage = 0.2
	var highest_percentage = 2
	var ticker_colour = 0
	
	var random_number = irandom_range(1,100)
	
	if random_number <= 5
	{
		print("ULTRA RARE!")
		lowest_percentage = 10
		highest_percentage = 25
		ticker_colour = 1
	}
	else if random_number <= 10
	{
		print("SEMI RARE!")
		lowest_percentage = 5
		highest_percentage = 8
		ticker_colour = 2
	}
	
	var lowest_cap = percentageGet(lowest_percentage,moneyGet())
	var highest_cap = percentageGet(highest_percentage,moneyGet())
	
	var amount = irandom_range(lowest_cap,highest_cap)
	if amount < 1
	{
		amount = 1	
	}

	moneyAdd(amount)
	tickerCreate("+" + string(amount),ticker_colour)
}