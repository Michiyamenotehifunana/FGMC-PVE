/datum/action/xeno_action/activable/scatter_spit/uv/lasergecko
	name = "Xray Cannon"
	action_icon_state = "scatter_spit"
	mechanics_text = "Shoots a single xray projectile."
	ability_name = "xray blast"
	cooldown_timer = 8 SECONDS
	windup_time = 1.5 SECONDS

/datum/action/xeno_action/activable/scatter_spit/uv/lasergecko/use_ability(atom/target)
	var/mob/living/carbon/xenomorph/X = owner

	if(!do_after(X, windup_time, FALSE, target, BUSY_ICON_DANGER))
		return fail_activate()

	//Shoot at the thing
	playsound(X.loc, 'sound/weapons/guns/fire/Laser overcharge standard.ogg', 50, 1)

	var/datum/ammo/energy/lasgun/marine/xray/piercing/xray_blast = GLOB.ammo_list[/datum/ammo/energy/lasgun/marine/xray/piercing/uv]

	var/obj/projectile/newspit = new /obj/projectile(get_turf(X))
	newspit.generate_bullet(xray_blast)
	newspit.def_zone = X.get_limbzone_target()

	newspit.fire_at(target, X, null, newspit.ammo.max_range)

	succeed_activate()
	add_cooldown()

/// FLASHBANG. MUCH FUN. ///

/datum/action/xeno_action/activable/neurogas_grenade/uvstun/use_ability(atom/A)
	var/mob/living/carbon/xenomorph/X = owner

	if(!do_after(X, 1 SECONDS, TRUE, target, BUSY_ICON_DANGER))
		return fail_activate()

	succeed_activate()
	add_cooldown()

	var/obj/item/explosive/grenade/flashbang/stun/uv/nade = new(get_turf(owner))
	nade.throw_at(A, 5, 1, owner, TRUE)
	nade.activate(owner)

	owner.visible_message(span_warning("[owner] Dispenses a stun grenade and launches it at [A]!"), span_warning("We send a stun grenade towards [A]!"))
