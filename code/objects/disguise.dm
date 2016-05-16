
obj/disguise
	var/old_icon
	var/disguise_on = 0

	name = "disguise"
	icon = 'icons.dmi'
	icon_state = "object_disguise" //world icon


obj/disguise/verb/wear()
	set src in view(1) //Make it so you can only wear it when near it
	old_icon = usr.icon_state //tracks what the old icon_state was, will be used to revert to the old icon upon removing
	usr.icon_state = "player_disguise" //player icon
	disguise_on = 1 //attempt at a variable to track if the disguise was put on

	//Current attempt is to add a remove verb, only if the disguise has been worn

