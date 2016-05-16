
obj/item/torch/
	name = "Unlit Torch"
	icon = 'icons.dmi'
	icon_state = "Torch_Off"


obj/item/torch/verb/light()
	set src in view(1)
	luminosity = 5
	name = "Lit Torch"
	icon_state = "Torch_On"

obj/item/torch/verb/extinguish()
	set src in view(1)
	luminosity = 0
	name ="Unlit Torch"
	icon_state = "Torch_Off"

obj/item/torch/verb/get()
	set src in usr.loc
	loc = usr


