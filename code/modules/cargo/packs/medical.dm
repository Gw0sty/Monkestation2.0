/datum/supply_pack/medical
	group = "Medical"
	crate_type = /obj/structure/closet/crate/medical

/datum/supply_pack/medical/bloodpacks
	name = "Blood Pack Variety Crate"
	desc = "Contains ten different blood packs for reintroducing blood to patients."
	cost = CARGO_CRATE_VALUE * 7
	contains = list(/obj/item/reagent_containers/blood = 2,
					/obj/item/reagent_containers/blood/a_plus,
					/obj/item/reagent_containers/blood/a_minus,
					/obj/item/reagent_containers/blood/b_plus,
					/obj/item/reagent_containers/blood/b_minus,
					/obj/item/reagent_containers/blood/o_plus,
					/obj/item/reagent_containers/blood/o_minus,
					/obj/item/reagent_containers/blood/lizard,
					/obj/item/reagent_containers/blood/ethereal,
					/obj/item/reagent_containers/blood/slime
				)
	crate_name = "blood freezer"
	crate_type = /obj/structure/closet/crate/freezer

/datum/supply_pack/medical/medipen_variety
	name = "Medipen Variety-Pak"
	desc = "Contains eight different medipens in three different varieties, \
		to assist in quickly treating seriously injured patients."
	cost = CARGO_CRATE_VALUE * 3.5
	contains = list(/obj/item/reagent_containers/hypospray/medipen = 2,
					/obj/item/reagent_containers/hypospray/medipen/ekit = 3,
					/obj/item/reagent_containers/hypospray/medipen/blood_loss = 3)
	crate_name = "medipen crate"

/datum/supply_pack/medical/chemical
	name = "Chemical Starter Kit Crate"
	desc = "Contains thirteen different chemicals, for all the fun experiments you can make."
	cost = CARGO_CRATE_VALUE * 2.6
	contains = list(/obj/item/reagent_containers/cup/bottle/hydrogen,
					/obj/item/reagent_containers/cup/bottle/carbon,
					/obj/item/reagent_containers/cup/bottle/nitrogen,
					/obj/item/reagent_containers/cup/bottle/oxygen,
					/obj/item/reagent_containers/cup/bottle/fluorine,
					/obj/item/reagent_containers/cup/bottle/phosphorus,
					/obj/item/reagent_containers/cup/bottle/silicon,
					/obj/item/reagent_containers/cup/bottle/chlorine,
					/obj/item/reagent_containers/cup/bottle/radium,
					/obj/item/reagent_containers/cup/bottle/sacid,
					/obj/item/reagent_containers/cup/bottle/ethanol,
					/obj/item/reagent_containers/cup/bottle/potassium,
					/obj/item/reagent_containers/cup/bottle/sugar,
					/obj/item/clothing/glasses/science,
					/obj/item/reagent_containers/dropper,
					/obj/item/storage/box/beakers,
				)
	crate_name = "chemical crate"

/datum/supply_pack/medical/defibs
	name = "Defibrillator Crate"
	desc = "Contains two defibrillators for bringing the recently deceased back to life."
	cost = CARGO_CRATE_VALUE * 5
	contains = list(/obj/item/defibrillator/loaded = 2)
	crate_name = "defibrillator crate"

/datum/supply_pack/medical/iv_drip
	name = "IV Drip Crate"
	desc = "Contains a single IV drip for administering blood to patients."
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/machinery/iv_drip)
	crate_name = "iv drip crate"

/datum/supply_pack/medical/supplies
	name = "Medical Supplies Crate"
	desc = "Contains a random assortment of medical supplies. German doctor not included."
	cost = CARGO_CRATE_VALUE * 4
	contains = list(/obj/item/reagent_containers/cup/bottle/multiver,
					/obj/item/reagent_containers/cup/bottle/epinephrine,
					/obj/item/reagent_containers/cup/bottle/morphine,
					/obj/item/reagent_containers/cup/bottle/toxin,
					/obj/item/reagent_containers/cup/beaker/large,
					/obj/item/reagent_containers/pill/insulin,
					/obj/item/stack/medical/gauze,
					/obj/item/storage/box/beakers,
					/obj/item/storage/box/medigels,
					/obj/item/storage/box/syringes,
					/obj/item/storage/box/bodybags,
					/obj/item/storage/medkit/regular,
					/obj/item/storage/medkit/o2,
					/obj/item/storage/medkit/toxin,
					/obj/item/storage/medkit/brute,
					/obj/item/storage/medkit/fire,
					/obj/item/defibrillator/loaded,
					/obj/item/reagent_containers/blood/o_minus,
					/obj/item/storage/pill_bottle/mining,
					/obj/item/reagent_containers/pill/neurine,
					/obj/item/stack/medical/bone_gel = 2,
					/obj/item/vending_refill/medical,
					/obj/item/vending_refill/drugs,
				)
	crate_name = "medical supplies crate"

/datum/supply_pack/medical/supplies/fill(obj/structure/closet/crate/C)
	for(var/i in 1 to 10)
		var/item = pick(contains)
		new item(C)

/datum/supply_pack/medical/surgery
	name = "Surgical Supplies Crate"
	desc = "Do you want to perform surgery, but don't have one of those fancy \
		shmancy degrees? Just get started with this crate containing a medical duffelbag, \
		Sterilizine spray and collapsible roller bed."
	cost = CARGO_CRATE_VALUE * 6
	contains = list(
		/obj/item/storage/backpack/duffelbag/med/surgery,
		/obj/item/reagent_containers/medigel/sterilizine,
		/obj/item/emergency_bed,
	)
	crate_name = "surgical supplies crate"

/datum/supply_pack/medical/salglucanister
	name = "Heavy-Duty Saline Canister"
	desc = "Contains a bulk supply of saline-glucose condensed into a single canister that \
		should last several days, with a large pump to fill containers with. Direct injection \
		of saline should be left to medical professionals as the pump is capable of overdosing \
		patients."
	cost = CARGO_CRATE_VALUE * 6
	access = ACCESS_MEDICAL
	contains = list(/obj/machinery/iv_drip/saline)

/* Monkestation Removal: Old Virology
/datum/supply_pack/medical/virus
	name = "Virus Crate"
	desc = "Contains twelve different bottles of several viral samples for virology \
		research. Also includes seven beakers and syringes. Balled-up jeans not included."
	cost = CARGO_CRATE_VALUE * 5
	access = ACCESS_CMO
	access_view = ACCESS_VIROLOGY
	contains = list(/obj/item/reagent_containers/cup/bottle/flu_virion,
					/obj/item/reagent_containers/cup/bottle/cold,
					/obj/item/reagent_containers/cup/bottle/random_virus = 4,
					/obj/item/reagent_containers/cup/bottle/fake_gbs,
					/obj/item/reagent_containers/cup/bottle/brainrot,
					/obj/item/storage/box/syringes,
					/obj/item/storage/box/beakers,
					/obj/item/reagent_containers/cup/bottle/mutagen,
				)
	crate_name = "virus crate"
	crate_type = /obj/structure/closet/crate/secure/plasma
	dangerous = TRUE
End Monkestation Removal*/

/datum/supply_pack/medical/arm_implants
	name = "Strong-Arm Implant Set"
	desc = "A crate containing two implants, which can be surgically implanted to empower the strength of human arms. Warranty void if exposed to electromagnetic pulses."
	cost = CARGO_CRATE_VALUE * 6
	contains = list(/obj/item/organ/internal/cyberimp/arm/strongarm = 2)
	crate_name = "Strong-Arm implant crate"
