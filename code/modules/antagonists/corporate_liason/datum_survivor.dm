#define TRAITOR_HUMAN "human"

/datum/antagonist/survivor
	name = "Survivor"
	roundend_category = "Survivors"
	var/employer = "Nanotrasen"
	var/give_objectives = TRUE
	var/traitor_kind = TRAITOR_HUMAN //Set on initial assignment

/datum/antagonist/survivor/on_gain()
	if(give_objectives)
		forge_traitor_objectives()
	return ..()

/datum/antagonist/survivor/on_removal()
	return ..()

/datum/antagonist/survivor/proc/add_objective(datum/objective/O)
	objectives += O

/datum/antagonist/survivor/proc/remove_objective(datum/objective/O)
	objectives -= O

/datum/antagonist/survivor/proc/forge_traitor_objectives()
	forge_human_objectives()

/datum/antagonist/survivor/proc/forge_human_objectives()
	var/objective_count
	var/toa = 2
	for(var/i = objective_count, i < toa, i++)
		forge_single_human_objective()

	if(!(locate(/datum/objective/survive) in objectives))
		var/list/objectivelist
		objectivelist = list(
			/datum/objective/winoperation = 2,
			/datum/objective/survive = 7,
			/datum/objective/escape = 2,
		)

		var/datum/objective/selectedobjective = pick_weight_recursive(objectivelist)
		selectedobjective = pick_weight_recursive(objectivelist)
		if(selectedobjective == /datum/objective/winoperation)
			var/datum/objective/winoperation/winoperation_objective = new
			selectedobjective =	winoperation_objective
		if(selectedobjective == /datum/objective/survive)
			var/datum/objective/survive/survive_objective = new
			selectedobjective =	survive_objective
		if(selectedobjective == /datum/objective/escape)
			var/datum/objective/escape/escape_objective = new
			selectedobjective =	escape_objective

		selectedobjective.owner = owner
		add_objective(selectedobjective)
		return

/datum/antagonist/survivor/proc/forge_single_human_objective() //Returns how many objectives are added
	.=1
	var/list/objectivelist
	objectivelist = list(
		/datum/objective/maroon = 1,
		/datum/objective/steal = 3,
		/datum/objective/protect = 3,
		/datum/objective/escape_with = 3,
		/datum/objective/gather_cash = 3,
	)
	var/datum/objective/selectedobjective
	selectedobjective = pick_weight_recursive(objectivelist)

	if(selectedobjective == /datum/objective/steal)
		var/datum/objective/steal/steal_objective = new
		selectedobjective =	steal_objective
	if(selectedobjective == /datum/objective/maroon)
		var/datum/objective/maroon/maroon_objective = new
		selectedobjective =	maroon_objective
	if(selectedobjective == /datum/objective/protect)
		var/datum/objective/protect/protect_objective = new
		selectedobjective =	protect_objective
	if(selectedobjective == /datum/objective/escape_with)
		var/datum/objective/escape_with/escape_with_objective = new
		selectedobjective =	escape_with_objective
	if(selectedobjective == /datum/objective/gather_cash)
		var/datum/objective/gather_cash/gather_cash_objective = new
		selectedobjective =	gather_cash_objective
		selectedobjective.update_explanation_text()

	selectedobjective.find_target()
	if(!selectedobjective.target) //find target returned null, set target to self for sanity
		selectedobjective.target = owner
		selectedobjective.update_explanation_text()
	selectedobjective.owner = owner
	add_objective(selectedobjective)

/datum/antagonist/survivor/greet()
	to_chat(owner, span_boldnotice("Survive and achieve your objectives!"))
	owner.announce_objectives()

//TODO Collate
/datum/antagonist/survivor/roundend_report()
	var/list/result = list()

	var/traitorwin = TRUE

	result += printplayer(owner)

	var/objectives_text = ""
	if(objectives.len)//If the traitor had no objectives, don't need to process this.
		var/count = 1
		for(var/datum/objective/objective in objectives)
			if(objective.check_completion())
				objectives_text += "<br><B>Objective #[count]</B>: [objective.explanation_text] <span class='greentext'>Success!</span>"
			else
				objectives_text += "<br><B>Objective #[count]</B>: [objective.explanation_text] <span class='redtext'>Fail.</span>"
				traitorwin = FALSE
			count++

	result += objectives_text

	var/special_role_text = lowertext(name)

	if(traitorwin)
		result += "<span class='greentext'>The [special_role_text] was successful!</span>"
	else
		result += "<span class='redtext'>The [special_role_text] has failed!</span>"

	return result.Join("<br>")

/datum/antagonist/survivor/roundend_report_footer()
	return

/datum/antagonist/survivor/farewell()
	. = ..()
	to_chat(owner, span_boldnotice("You no longer have any objectives."))

/datum/antagonist/survivor/on_removal()
	. = ..()
	for(var/datum/action/A AS in usr.actions)
		if(istype(A, /datum/action/objectives))
			A.remove_action(usr)
