/datum/expansion/multitool/store/interact(var/obj/item/device/multitool/M, var/mob/user)
	if(CanUseTopic(user) != UI_INTERACTIVE)
		return

	if(M.get_buffer() == holder)
		M.set_buffer(null)
		user << "<span class='warning'>You purge the connection data of \the [holder] from \the [M].</span>"
	else
		M.set_buffer(holder)
		user << "<span class='notice'>You load connection data from \the [holder] to \the [M].</span>"