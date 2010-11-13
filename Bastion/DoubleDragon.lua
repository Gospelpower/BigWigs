if not GetSpellInfo(90000) then return end
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod = BigWigs:NewBoss("Valiona and Theralion", "The Bastion of Twilight")
if not mod then return end
mod:RegisterEnableMob(45992, 45993)
mod.toggleOptions = {93051, {86788, "ICON", "FLASHSHAKE", "WHISPER"}, {88518, "ICON", "FLASHSHAKE"}, 86059, 86840, {86622, "ICON", "FLASHSHAKE", "WHISPER"}, "proximity", "phase_switch", "bosskill"}
mod.optionHeaders = {
	[93051] = "heroic",
	[86788] = "Valiona",
	[86622] = "Theralion",
	proximity = "general",
}

--------------------------------------------------------------------------------
-- Locals
--

local lastDestruction = 0
local pName = UnitName("player")
local marked = GetSpellInfo(88518)
local markWarned = false

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.phase_switch = "Phase Switch"
	L.phase_switch_desc = "Warning for Phase Switches"

	L.engulfingmagic_say = "Engulfing Magic on ME!"

	L.devouringflames_cooldown = "~Devouring Flames"

	L.valiona_trigger = "Theralion, I will engulf the hallway. Cover their escape!"

	L.twilight_shift = "%2$dx Twilight Shift on %1$s"
end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:OnBossEnable()
	-- Heroic
	self:Log("SPELL_AURA_APPLIED_DOSE", "TwilightShift", 93051)

	-- Phase Switch -- should be able to do this easier once we get Transcriptor logs
	self:Log("SPELL_CAST_START", "DazzlingDestruction", 86408)
	self:Yell("DeepBreath", L["valiona_trigger"])

	self:Log("SPELL_AURA_APPLIED", "BlackoutApplied", 86788, 92877)
	self:Log("SPELL_AURA_REMOVED", "BlackoutRemoved", 86788, 92877)
	self:Log("SPELL_CAST_START", "DevouringFlames", 86840)

	self:Log("SPELL_AURA_APPLIED", "EngulfingMagicApplied", 86622, 95640)
	self:Log("SPELL_AURA_REMOVED", "EngulfingMagicRemoved", 86622, 95640)

	self:RegisterEvent("PLAYER_REGEN_DISABLED", "CheckForEngage")
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")

	self:RegisterEvent("UNIT_AURA")

	self:Death("Win", 45992) -- They Share HP, they die at the same time
end


function mod:OnEngage(diff)
	lastDestruction = 0
	markWarned = false
	self:Bar(86840, L["devouringflames_cooldown"], 25, 86840)
	self:Bar(86788, (GetSpellInfo(86788)), 20, 86788)
	self:Bar("phase_switch", "Theralion", 95, 86408)
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:TwilightShift(player, spellId, _, _, spellName, stack)
	if stack > 3 then
		self:TargetMessage(93051, L["twilight_shift"], player, "Important", spellId, nil, stack)
	end
end

function mod:DazzlingDestruction()
	if (GetTime() - lastDestruction) > 6 then
		self:SendMessage("BigWigs_StopBar", self, (GetSpellInfo(86788)))
		self:SendMessage("BigWigs_StopBar", self, L["devouringflames_cooldown"])
		self:Bar("phase_switch", "Valiona", 113, 86788) -- probably inaccurate, also need better icon
	end
	lastDestruction = GetTime()
end

function mod:DeepBreath()
	self:Message(86059, (GetSpellInfo(86059)), "Important", 86059, "Alert")
	self:Bar("phase_switch", "Valiona", 137, 86622) -- probably inaccurate, also need better icon
	self:Bar(86788, (GetSpellInfo(86788)), 60, 86788) -- probably inaccurate
	self:Bar(86840, L["devouringflames_cooldown"], 75, 86840) -- probably inaccurate
end

function mod:BlackoutApplied(player, spellId, _, _, spellName)
	if UnitIsUnit(player, "player") then
		self:FlashShake(86788)
	end
	self:TargetMessage(86788, spellName, player, "Personal", spellId, "Alarm")
	self:Whisper(86788, player, spellName)
	self:PrimaryIcon(86788, player)
	self:Bar(86788, spellName, 45, 86788)
	self:CloseProximity()
end

function mod:BlackoutRemoved(player, spellId, _, _, spellName)
	self:OpenProximity(8)
	self:Bar(86788, spellName, 40, spellId) -- make sure to remove bar when it takes off
end

function mod:UNIT_AURA(event, unit)
	for i = 1, GetNumRaidMembers() do
		local _, _, _, _, _, _, expires = UnitDebuff("raid"..i, marked)
		if expires and (GetTime() - expires) > 5 then
			-- make sure we only mark people with marks that are not older than 1 sec, might need more marks for 25 man
			self:SecondaryIcon(88518, "raid"..i)
		end
	end
	if unit == "player" then
		if UnitDebuff("player", marked) and not markWarned then
			self:FlashShake(88518)
			self:LocalMessage(88518, marked, pName, "Personal", 88518, "Alarm")
			markWarned = true
		end
	end
end

function mod:DevouringFlames(_, spellId, _, _, spellName)
	self:Bar(86840, L["devouringflames_cooldown"], 42, spellId) -- make sure to remove bar when it takes off
	self:Message(86840, spellName, "Important", spellId, "Alert")
end

function mod:EngulfingMagicApplied(player, spellId, _, _, spellName)
	if UnitIsUnit(player, "player") then
		self:Say(86622, L["engulfingmagic_say"])
		self:FlashShake(86622)
		self:OpenProximity(10)
	end
	self:TargetMessage(86622, spellName, player, "Personal", spellId, "Alarm")
	self:Whisper(86622, player, spellName)
	self:PrimaryIcon(86622, player)
end

function mod:EngulfingMagicRemoved(player)
	if UnitIsUnit(player, "player") then
		self:CloseProximity()
	end
end

