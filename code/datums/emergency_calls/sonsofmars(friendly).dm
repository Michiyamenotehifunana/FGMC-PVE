//Sons of Mars Friendly
/datum/emergency_call/som
	name = "Sons of Mars Squad(Friendly)"
	base_probability = 26
	alignement_factor = -1


/datum/emergency_call/som/print_backstory(mob/living/carbon/human/H)
	to_chat(H, "<B>You [pick("grew up in the mines working in horrible conditions until signing up to", "were part of a poor family until you decided to leave to join", "were born on a colony on Mars to a family of several brothers and sisters before leaving to", "worked at horrible conditions in the mines until deciding to leave to join")] the Sons of Mars (SoM).</b>")
	to_chat(H, "<B>As part of the vessel 'Mighty' crew you are considered friendly with TGMC due to recent xenomorph attacks </b>")
	to_chat(H, "<B>The SoM rebels were able to overpower the Space Authority, discovering an engine capable of Faster Than Light travel, but the Space Authority Marine Corps succeeded in prevented them from stealing the engine. Currently, the SoM have the biggest ICC fleet outside of the Sol system.</b>")
	to_chat(H, "")
	to_chat(H, "<B>Today, a TGMC vessel, [SSmapping.configs[SHIP_MAP].map_name], has sent out a distress signal on the orbit of [SSmapping.configs[GROUND_MAP].map_name]. Get there and help your capitalist friends!</b>")
	to_chat(H, "<B>Help the TGMC, eliminate all possible threats.</B>")


/datum/emergency_call/som/create_member(datum/mind/M)
	. = ..()
	if(!.)
		return

	var/mob/original = M.current
	var/mob/living/carbon/human/H = .

	M.transfer_to(H, TRUE)

	if(original)
		qdel(original)

	print_backstory(H)

	if(!leader)
		leader = H
		var/datum/job/J = SSjob.GetJobType(/datum/job/special_forces/som/leader)
		H.apply_assigned_role_to_spawn(J)
		to_chat(H, "<p style='font-size:1.5em'>[span_notice("You are a member of the Sons of Mars assigned to lead this fireteam to the TGMC distress signal sent out nearby. Lead your fireteam to top-working conidition!")]</p>")
		return

	if(medics < max_medics)
		var/datum/job/J = SSjob.GetJobType(/datum/job/special_forces/som/medic)
		H.apply_assigned_role_to_spawn(J)
		to_chat(H, "<p style='font-size:1.5em'>[span_notice("You are a Sons of Mars medic assigned to this fireteam to respond to the TGMC distress signal sent out nearby. Keep your squad alive in this fight!")]</p>")
		medics++
		return

	if(prob(65))
		var/datum/job/J = SSjob.GetJobType(/datum/job/special_forces/som/veteran)
		H.apply_assigned_role_to_spawn(J)
		to_chat(H, "<p style='font-size:1.5em'>[span_notice("You are a veteran of the Sons of Mars and are assigned to this fireteam to respond to the TGMC distress signal sent out nearby. Do them proud and kill all who stand in your teams way!")]</p>")
		return

	var/datum/job/J = SSjob.GetJobType(/datum/job/special_forces/som/standart)
	H.apply_assigned_role_to_spawn(J)
	to_chat(H, span_notice("You are a member of the Sons of Mars assigned to compose this fireteam to the TGMC distress signal sent out nearby. Protect yourself and your other teammembers, kill all who stand in your team's way!"))
