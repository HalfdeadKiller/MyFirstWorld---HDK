/obj/structure/number_thing
	name = "Number Thing"
	icon = 'icons.dmi'
	icon_state = "number_thing"
	density = 1

	var/testv = 0

/obj/structure/number_thing/proc/numbercheck()
	if (testv == 1)
		usr << output("Success!")
	else
		usr << output("Failure.")
	..()

/obj/structure/number_thing/verb/input_number()
	set src in view(1)
	set name = "Input Number"
	testv = input(usr) as num
	numbercheck()

