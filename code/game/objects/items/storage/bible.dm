/obj/item/storage/bible
	name = "bible"
	desc = "Apply to head repeatedly."
	icon_state ="bible"
	throw_speed = 1
	throw_range = 5
	w_class = WEIGHT_CLASS_NORMAL
	flags_equip_slot = ITEM_SLOT_BELT
	var/mob/affecting = null
	var/deity_name = "Christ"

/obj/item/storage/bible/koran
	name = "koran"
	icon_state = "koran"
	deity_name = "Allah"

/obj/item/storage/bible/booze
	name = "bible"
	desc = "To be applied to the head repeatedly."
	icon_state ="bible"

/obj/item/storage/bible/booze/Initialize(mapload, ...)
	. = ..()
	new /obj/item/reagent_containers/food/drinks/cans/beer(src)
	new /obj/item/reagent_containers/food/drinks/cans/beer(src)
	new /obj/item/spacecash(src)
	new /obj/item/spacecash(src)
	new /obj/item/spacecash(src)

/obj/item/storage/bible/guide/Initialize(mapload, ...)
	. = ..()
	new /obj/item/paper/bible(src)
	new /obj/item/reagent_containers/food/drinks/bottle/wine(src)
	new /obj/item/ammo_magazine/handful/buckshot(src)
	new /obj/item/ammo_magazine/handful/buckshot(src)
	new /obj/item/ammo_magazine/handful/buckshot(src)

/obj/item/storage/bible/afterattack(atom/A, mob/user, proximity)
	if(!proximity || !isliving(user))
		return
	var/mob/living/living_user = user
	if(ischaplainjob(living_user.job) || ispriestjob(living_user.job))
		if(A.reagents && A.reagents.has_reagent(/datum/reagent/water)) //blesses all the water in the holder
			to_chat(user, span_notice("You bless [A]."))
			var/water2holy = A.reagents.get_reagent_amount(/datum/reagent/water)
			A.reagents.del_reagent(/datum/reagent/water)
			A.reagents.add_reagent(/datum/reagent/consumable/honey,water2holy)
		if(A.reagents && A.reagents.has_reagent(/datum/reagent/medicine/inaprovaline))
			to_chat(user, span_notice("You bless [A]."))
			var/inaprovaline2somolent = A.reagents.get_reagent_amount(/datum/reagent/medicine/inaprovaline)
			A.reagents.del_reagent(/datum/reagent/medicine/inaprovaline)
			A.reagents.add_reagent(/datum/reagent/medicine/research/somolent,inaprovaline2somolent)

/obj/item/storage/bible/attackby(obj/item/I, mob/user, params)
	. = ..()

	if(use_sound)
		playsound(loc, use_sound, 25, 1, 6)
