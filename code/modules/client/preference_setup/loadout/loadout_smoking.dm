/datum/gear/smokingpipe
	display_name = "pipe, smoking"
	path = /obj/item/clothing/mask/smokable/pipe

/datum/gear/cornpipe
	display_name = "pipe, corn"
	path = /obj/item/clothing/mask/smokable/pipe/cobpipe

/datum/gear/matchbook
	display_name = "matchbook"
	path = /obj/item/weapon/storage/box/matches

/datum/gear/zippo
	display_name = "Zippo Selection"
	path = /obj/item/weapon/flame/lighter/zippo

/datum/gear/zippo/New()
	..()
	var/list/zippos = list()
	for(var/zippo in typesof(/obj/item/weapon/flame/lighter/zippo))
		var/obj/item/weapon/flame/lighter/zippo/zippo_type = zippo
		zippos[initial(zippo_type.name)] = zippo_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(zippos))

/datum/gear/ashtray
	display_name = "ashtray, plastic"
	path = /obj/item/weapon/material/ashtray/plastic

/datum/gear/cigar
	display_name = "cigar"
	path = /obj/item/clothing/mask/smokable/cigarette/cigar

/datum/gear/cigarettes
	display_name = "cigarette selection"
	path = /obj/item/weapon/storage/fancy/cigarettes

/datum/gear/cigarettes/New()
	..()
	var/list/cigarettes = list()
	for(var/cigarette in (typesof(/obj/item/weapon/storage/fancy/cigarettes) - typesof(/obj/item/weapon/storage/fancy/cigarettes/killthroat)))
		var/obj/item/weapon/storage/fancy/cigarettes/cigarette_brand = cigarette
		cigarettes[initial(cigarette_brand.name)] = cigarette_brand
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(cigarettes))

/datum/gear/accessory/ecig
	display_name = "Electronic Cigarette"
	path = /obj/item/clothing/mask/smokable/ecig/simple
	cost = 2

/datum/gear/accessory/ecigcart
	display_name = "Electronic Cigarette Cartridge"
	path = /obj/item/weapon/reagent_containers/ecig_cartridge/med_nicotine

/datum/gear/accessory/ecigcart/New()
	..()
	var/list/ecig_cartridge = list()
	ecig_cartridge["tobacco flavour cartridge"] = /obj/item/weapon/reagent_containers/ecig_cartridge/med_nicotine
	ecig_cartridge["high nicotine tobacco flavour cartridge"] = /obj/item/weapon/reagent_containers/ecig_cartridge/high_nicotine
	ecig_cartridge["orange flavour cartridge"] = /obj/item/weapon/reagent_containers/ecig_cartridge/orange
	ecig_cartridge["mint flavour cartridge"] = /obj/item/weapon/reagent_containers/ecig_cartridge/mint
	ecig_cartridge["watermelon flavour cartridge"] = /obj/item/weapon/reagent_containers/ecig_cartridge/watermelon
	ecig_cartridge["grape flavour cartridge"] = /obj/item/weapon/reagent_containers/ecig_cartridge/grape
	gear_tweaks += new/datum/gear_tweak/path(ecig_cartridge)