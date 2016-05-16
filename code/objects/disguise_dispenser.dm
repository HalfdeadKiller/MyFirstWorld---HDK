/obj/structure/disguise
        name = "disguise dispenser"
        icon = 'icons.dmi'
        icon_state = "disguise_dispenser" //world icon

/obj/structure/disguise/verb/wear()
        set name = "Wear Disguise"
        set src in orange(1)

        if(usr.contents.Find(/obj/disguise))
                var/obj/disguise/O = new /obj/disguise
                O.old_icon = usr.icon_state
                usr.contents += O
                usr.icon_state = "player_disguise"
                usr << "You put on the disguise"
        else
                usr << "You are already wearing a disguise!"
/obj/disguise
        name = "disguise"
        icon = 'icons.dmi'
        icon_state = "object_disguise"

        var/old_icon

/obj/disguise/verb/remove()
        set name = "Remove Disguise"
        set src in usr

        usr << "You remove the disguise!"
        usr.icon_state = old_icon
        del(src)