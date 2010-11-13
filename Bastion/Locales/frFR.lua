local L = BigWigs:NewBossLocale("Cho'gall", "frFR")
if L then
	--heroic
	L.orders = "Ordres de l'ombre/de la flamme"
	L.orders_desc = "Warning for Shadow/Flame Orders"

	--normal
	L.worship_cooldown = "~Vénération"

	L.phase_one = "Phase 1"
	L.phase_two = "Phase 2"
end

L = BigWigs:NewBossLocale("Valiona and Theralion", "frFR")
if L then
	L.phase_switch = "Changement de phase"
	L.phase_switch_desc = "Prévient quand la rencontre change de phase."

	L.engulfingmagic_say = "Magie enveloppante sur moi !"

	L.devouringflames_cooldown = "~Flammes dévorantes"

	L.valiona_trigger = "Theralion, I will engulf the hallway. Cover their escape!" -- récupérer transcription

	L.twilight_shift = "%2$dx Transferts du Crépuscule sur %1$s"
end

L = BigWigs:NewBossLocale("Halfus Wyrmbreaker", "frFR")
if L then

end

L = BigWigs:NewBossLocale("Sinestra", "frFR")
if L then

end

L = BigWigs:NewBossLocale("Twilight Ascendants", "frFR")
if L then
	L.static_overload_say = "Surcharge statique sur moi !"
	L.health_report = "%s est à %d%% de vie, changement imminent !"

	L.switch_trigger = "We will handle them!" -- récupérer transcription

	L.quake_trigger = "The ground beneath you rumbles ominously...." -- récupérer transcription
	L.thudershock_trigger = "The surrounding air crackles with energy...." -- récupérer transcription

	L.searing_winds_message = "Get Searing Winds !" -- pas encore traduit dans beta
	L.grounded_message = "Get Grounded !" -- pas encore traduit dans beta

	L.heart_of_ice = "Coeur de glace sur %s !"
	L.burning_blood = "Sang brûlant sur %s !"

	L.last_phase_trigger = "BEHOLD YOUR DOOM!" -- récupérer transcription

	L.last_phase = "Dernière phase"
end