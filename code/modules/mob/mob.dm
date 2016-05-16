//Mobs and Verbs

mob/
	icon = 'icons/mob/human.dmi'
	icon_state = "caucasian1_m_s"
	var/w,a,s,d = 0

/*
	Login() //movement
		..()
		winset(client, "w", "parent=macro;name=w;command=keydown+w")
		winset(client, "w+up", "parent=macro;name=w+up;command=keyup+w")

		winset(client, "a", "parent=macro;name=a;command=keydown+a")
		winset(client, "a+up", "parent=macro;name=a+up;command=keyup+a")

		winset(client, "s", "parent=macro;name=s;command=keydown+s")
		winset(client, "s+up", "parent=macro;name=s+up;command=keyup+s")

		winset(client, "d", "parent=macro;name=d;command=keydown+d")
		winset(client, "d+up", "parent=macro;name=d+up;command=keyup+d")

		spawn move_loop()

	verb/set_speed(n as num)
		src.speed = n

	proc/move_loop()
		if(world.time >= move_time) //should we do anything?
			if(!step(src, (s && (SOUTH || s)) | (w && (NORTH || w)) | (a && (WEST || a)) | (d && (EAST || d)))) //try desired direction
				if(!step(src, (s && (SOUTH || s)) | (w && (NORTH || w)))) //that failed, try north or south
					step(src, (a && (WEST || a)) | (d && (EAST || d))) //that failed, try east or west
		spawn(world.tick_lag) move_loop() //return, and do it again

	verb/keydown(k as text)
		set hidden = 1
		set instant = 1
		if(k == "w") w = 1
		if(k == "a") a = 1
		if(k == "s") s = 1
		if(k == "d") d = 1

	verb/keyup(k as text)
		set hidden = 1
		set instant = 1
		if(k == "w") w = 0
		if(k == "a") a = 0
		if(k == "s") s = 0
		if(k == "d") d = 0
		//end movement
*/

mob/verb/smile()
	world <<"[usr] grins."

mob/verb/say(msg as text)
	world << "[usr] says, [msg]"

mob/verb/wall_walk()
	density = 0

/*

mob 	src = usr
obj 	src in usr
turf 	src = view(0)
area 	src = view(0)

usr
usr.loc
usr.contents
usr.group
view() 			- The view() list contains all objects seen by the user up to a specified distance. The special range of -1 includes only the user and contents.
oview() 		- oview() stands for `other' or `outside' view. It is identical to view() except it doesn't include the usr or the usr's contents. In other words, it excludes objects in view(-1), the so-called private or personal range.

mob/verb/get()
	set src in usr.loc
	loc = usr
*/
mob/verb/drop()
	set src in usr
	loc = usr.loc




