turf
	luminosity = 0

	//Turf Click() X, Y Output
turf/Click(turf) //Output coordinates of click
		usr << output("X = [x]")
		usr << output("Y = [y]")
		..()


turf/floor
	icon = 'icons.dmi'
	icon_state = "floor"

turf/wall
	icon = 'icons.dmi'
	icon_state = "wall"
	density = 1
	opacity = 1

turf/start
	icon = 'icons.dmi'
	icon_state = "start"

turf/trap
	pit
	quicksand
	glue