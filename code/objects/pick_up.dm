obj/item/
	var/pickup = 1

obj/item/Click()
	PICKUPTEXT()

obj/item/proc/PICKUPTEXT(O)

	if(pickup == 1)
		usr << output("You pick up the [name]!")

	else
		usr << output("You can not pick up the [name]")\


