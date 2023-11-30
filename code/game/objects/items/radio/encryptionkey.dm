/obj/item/encryptionkey
	name = "Standard Encryption Key"
	desc = "An encryption key for a radio headset."
	icon = 'icons/obj/items/radio.dmi'
	icon_state = "cypherkey"
	item_state = ""
	w_class = WEIGHT_CLASS_TINY
	var/list/channels = list()
	var/independent = FALSE


/obj/item/encryptionkey/engi
	name = "Engineering Radio Encryption Key"
	icon_state = "eng_cypherkey"
	channels = list(RADIO_CHANNEL_ENGINEERING = TRUE,RADIO_CHANNEL_CAS = TRUE)

/obj/item/encryptionkey/cas
	name = "Fire support radio encryption key"
	icon_state = "sec_cypherkey"
	channels = list(RADIO_CHANNEL_CAS = TRUE)

/obj/item/encryptionkey/med
	name = "Medical Radio Encryption Key"
	icon_state = "med_cypherkey"
	channels = list(RADIO_CHANNEL_MEDICAL = TRUE, RADIO_CHANNEL_REQUISITIONS = TRUE)

/obj/item/encryptionkey/cas
	name = "\improper fire support specialist radio encryption key"
	icon_state = "rob_cypherkey"
	channels = list(RADIO_CHANNEL_CAS = TRUE)

/obj/item/encryptionkey/mcom
	name = "\improper Marine Command radio encryption key"
	icon_state = "cap_cypherkey"
	channels = list(RADIO_CHANNEL_COMMAND = TRUE, RADIO_CHANNEL_CAS = TRUE, RADIO_CHANNEL_ALPHA = TRUE, RADIO_CHANNEL_BRAVO = TRUE, RADIO_CHANNEL_CHARLIE = TRUE, RADIO_CHANNEL_DELTA = TRUE, RADIO_CHANNEL_ENGINEERING = TRUE, RADIO_CHANNEL_MEDICAL = TRUE, RADIO_CHANNEL_REQUISITIONS = TRUE)

/obj/item/encryptionkey/mcom/ai //AI only.
	channels = list(RADIO_CHANNEL_COMMAND = TRUE, RADIO_CHANNEL_CAS = TRUE, RADIO_CHANNEL_ALPHA = TRUE, RADIO_CHANNEL_BRAVO = TRUE, RADIO_CHANNEL_CHARLIE = TRUE, RADIO_CHANNEL_DELTA = TRUE, RADIO_CHANNEL_ENGINEERING = TRUE, RADIO_CHANNEL_MEDICAL = TRUE, RADIO_CHANNEL_REQUISITIONS = TRUE)


/obj/item/encryptionkey/squadlead
	name = "\improper Squad Leader encryption key"
	icon_state = "hop_cypherkey"
	channels = list(RADIO_CHANNEL_COMMAND = TRUE,RADIO_CHANNEL_CAS = TRUE)

/obj/item/encryptionkey/alpha
	name = "\improper Alpha Squad radio encryption key"
	icon_state = "eng_cypherkey"
	channels = list(RADIO_CHANNEL_ALPHA = TRUE)

/obj/item/encryptionkey/bravo
	name = "\improper Bravo Squad radio encryption key"
	icon_state = "cypherkey"
	channels = list(RADIO_CHANNEL_BRAVO = TRUE)

/obj/item/encryptionkey/charlie
	name = "\improper Charlie Squad radio encryption key"
	icon_state = "sci_cypherkey"
	channels = list(RADIO_CHANNEL_CHARLIE = TRUE)

/obj/item/encryptionkey/delta
	name = "\improper Delta Squad radio encryption key"
	icon_state = "hos_cypherkey"
	channels = list(RADIO_CHANNEL_DELTA = TRUE)

/obj/item/encryptionkey/general
	name = "\improper General radio encryption key"
	icon_state = "cypherkey"
	channels = list(RADIO_CHANNEL_COMMON = TRUE, RADIO_CHANNEL_REQUISITIONS = TRUE)

/obj/item/encryptionkey/engi/rebel
	channels = list(RADIO_CHANNEL_ENGINEERING_REBEL = TRUE,RADIO_CHANNEL_CAS_REBEL = TRUE, RADIO_CHANNEL_REQUISITIONS_REBEL = TRUE)

/obj/item/encryptionkey/cas/rebel
	channels = list(RADIO_CHANNEL_CAS_REBEL = TRUE)

/obj/item/encryptionkey/med/rebel
	channels = list(RADIO_CHANNEL_MEDICAL_REBEL = TRUE)

/obj/item/encryptionkey/cas/rebel
	channels = list(RADIO_CHANNEL_CAS_REBEL = TRUE)

/obj/item/encryptionkey/mcom/rebel
	channels = list(RADIO_CHANNEL_COMMAND_REBEL = TRUE, RADIO_CHANNEL_CAS_REBEL = TRUE, RADIO_CHANNEL_ALPHA_REBEL = TRUE, RADIO_CHANNEL_BRAVO_REBEL = TRUE, RADIO_CHANNEL_CHARLIE_REBEL = TRUE, RADIO_CHANNEL_DELTA_REBEL = TRUE, RADIO_CHANNEL_ENGINEERING_REBEL = TRUE, RADIO_CHANNEL_MEDICAL_REBEL = TRUE, RADIO_CHANNEL_REQUISITIONS_REBEL = TRUE)

/obj/item/encryptionkey/mcom/ai/rebel //AI only.
	channels = list(RADIO_CHANNEL_COMMAND_REBEL = TRUE, RADIO_CHANNEL_CAS_REBEL = TRUE, RADIO_CHANNEL_ALPHA_REBEL = TRUE, RADIO_CHANNEL_BRAVO_REBEL = TRUE, RADIO_CHANNEL_CHARLIE_REBEL = TRUE, RADIO_CHANNEL_DELTA_REBEL = TRUE, RADIO_CHANNEL_ENGINEERING_REBEL = TRUE, RADIO_CHANNEL_MEDICAL_REBEL = TRUE, RADIO_CHANNEL_REQUISITIONS_REBEL = TRUE)


/obj/item/encryptionkey/squadlead/rebel
	channels = list(RADIO_CHANNEL_COMMAND_REBEL = TRUE,RADIO_CHANNEL_CAS_REBEL = TRUE)

/obj/item/encryptionkey/alpha/rebel
	channels = list(RADIO_CHANNEL_ALPHA_REBEL = TRUE)

/obj/item/encryptionkey/bravo/rebel
	channels = list(RADIO_CHANNEL_BRAVO_REBEL = TRUE)

/obj/item/encryptionkey/charlie/rebel
	channels = list(RADIO_CHANNEL_CHARLIE_REBEL = TRUE)

/obj/item/encryptionkey/delta/rebel
	channels = list(RADIO_CHANNEL_DELTA_REBEL = TRUE)

/obj/item/encryptionkey/general/rebel
	channels = list(RADIO_CHANNEL_COMMON_REBEL = TRUE, RADIO_CHANNEL_REQUISITIONS_REBEL = TRUE)

//COLONY
/obj/item/encryptionkey/engi/colony
	name = "\improper Mainten encryption key"
	channels = list(RADIO_CHANNEL_ENGINEERING_COLONY = TRUE)
	independent = TRUE

/obj/item/encryptionkey/med/colony
	name = "\improper Medical encryption key"
	channels = list(RADIO_CHANNEL_MEDICAL_COLONY = TRUE)
	independent = TRUE


/obj/item/encryptionkey/mcom/colony
	name = "\improper CMB encryption key"
	channels = list(RADIO_CHANNEL_COMMAND_COLONY = TRUE, RADIO_CHANNEL_ALPHA_COLONY = TRUE, RADIO_CHANNEL_ENGINEERING_COLONY = TRUE, RADIO_CHANNEL_MEDICAL_COLONY = TRUE)
	independent = TRUE

/obj/item/encryptionkey/director/colony
	name = "\improper Director's encryption key"
	channels = list(RADIO_CHANNEL_COLONIST = TRUE, RADIO_CHANNEL_COMMAND_COLONY = TRUE, RADIO_CHANNEL_ALPHA_COLONY = TRUE, RADIO_CHANNEL_ENGINEERING_COLONY = TRUE, RADIO_CHANNEL_MEDICAL_COLONY = TRUE)
	independent = TRUE
// /obj/item/encryptionkey/mcom/ai/colony //To consider for a later date
//	channels = list(RADIO_CHANNEL_COMMAND_COLONY = TRUE, RADIO_CHANNEL_CAS_COLONY = TRUE, RADIO_CHANNEL_ALPHA_COLONY = TRUE, RADIO_CHANNEL_BRAVO_COLONY = TRUE, RADIO_CHANNEL_CHARLIE_COLONY = TRUE, RADIO_CHANNEL_DELTA_COLONY = TRUE, RADIO_CHANNEL_ENGINEERING_COLONY = TRUE, RADIO_CHANNEL_MEDICAL_COLONY = TRUE, RADIO_CHANNEL_REQUISITIONS_COLONY = TRUE)


/obj/item/encryptionkey/squadlead/colony
	name = "\improper Security encryption key"
	channels = list(RADIO_CHANNEL_COMMAND_COLONY = TRUE)
	independent = TRUE

/obj/item/encryptionkey/alpha/colony
	name = "\improper Service encryption key"
	channels = list(RADIO_CHANNEL_ALPHA_COLONY = TRUE)
	independent = TRUE

/obj/item/encryptionkey/general/colony
	name = "\improper Colonist encryption key"
	channels = list(RADIO_CHANNEL_COLONIST = TRUE)
	independent = TRUE


//ERT
/obj/item/encryptionkey/dutch
	name = "\improper Colonist encryption key"
	channels = list(RADIO_CHANNEL_COLONIST = TRUE)
	independent = TRUE


/obj/item/encryptionkey/PMC
	name = "\improper Nanotrasen encryption key"
	channels = list(RADIO_CHANNEL_PMC = TRUE)
	independent = TRUE


/obj/item/encryptionkey/usl
	name = "\improper USL encryption key"
	channels = list(RADIO_CHANNEL_USL = TRUE)
	independent = TRUE


/obj/item/encryptionkey/commando
	name = "\improper NT commando encryption key"
	channels = list(RADIO_CHANNEL_DEATHSQUAD = TRUE)
	independent = TRUE


/obj/item/encryptionkey/imperial
	name = "\improper Imperial encryption key"
	channels = list(RADIO_CHANNEL_IMPERIAL = TRUE)
	independent = TRUE


/obj/item/encryptionkey/som
	name = "\improper Sons of Mars encryption key"
	channels = list(RADIO_CHANNEL_SOM = TRUE)
	independent = TRUE


/obj/item/encryptionkey/sectoid
	name = "\improper alien encryption key"
	channels = list(RADIO_CHANNEL_SECTOID = TRUE)
	independent = TRUE

/obj/item/encryptionkey/echo
	name = "\improper Echo Task Force encryption key"
	channels = list(RADIO_CHANNEL_ECHO = TRUE, RADIO_CHANNEL_COMMAND = TRUE, RADIO_CHANNEL_CAS = TRUE, RADIO_CHANNEL_ALPHA = TRUE, RADIO_CHANNEL_BRAVO = TRUE, RADIO_CHANNEL_CHARLIE = TRUE, RADIO_CHANNEL_DELTA = TRUE, RADIO_CHANNEL_ENGINEERING = TRUE, RADIO_CHANNEL_MEDICAL = TRUE, RADIO_CHANNEL_REQUISITIONS = TRUE)
	independent = TRUE

//SOM

/obj/item/encryptionkey/engi/som
	channels = list(RADIO_CHANNEL_ENGINEERING_SOM = TRUE)

/obj/item/encryptionkey/med/som
	channels = list(RADIO_CHANNEL_MEDICAL_SOM = TRUE)

/obj/item/encryptionkey/mcom/som
	channels = list(RADIO_CHANNEL_SOM = TRUE, RADIO_CHANNEL_COMMAND_SOM = TRUE, RADIO_CHANNEL_ZULU = TRUE, RADIO_CHANNEL_YANKEE = TRUE, RADIO_CHANNEL_XRAY = TRUE, RADIO_CHANNEL_WHISKEY = TRUE, RADIO_CHANNEL_ENGINEERING_SOM = TRUE, RADIO_CHANNEL_MEDICAL_SOM = TRUE)

/obj/item/encryptionkey/squadlead/som
	channels = list(RADIO_CHANNEL_COMMAND_SOM = TRUE)

/obj/item/encryptionkey/zulu
	name = "\improper Zulu Squad radio encryption key"
	icon_state = "cypherkey"
	channels = list(RADIO_CHANNEL_ZULU = TRUE)

/obj/item/encryptionkey/yankee
	name = "\improper Yankee Squad radio encryption key"
	icon_state = "cypherkey"
	channels = list(RADIO_CHANNEL_YANKEE = TRUE)

/obj/item/encryptionkey/xray
	name = "\improper X-ray Squad radio encryption key"
	icon_state = "cypherkey"
	channels = list(RADIO_CHANNEL_XRAY = TRUE)

/obj/item/encryptionkey/whiskey
	name = "\improper Whiskey Squad radio encryption key"
	icon_state = "cypherkey"
	channels = list(RADIO_CHANNEL_WHISKEY = TRUE)

/obj/item/encryptionkey/general/som
	name = "\improper SOM general radio encryption key"
	icon_state = "cypherkey"
	channels = list(RADIO_CHANNEL_SOM = TRUE)