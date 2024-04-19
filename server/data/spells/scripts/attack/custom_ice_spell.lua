-- Behaviour for custom frigo spell (Question 5)

local combat = Combat()

-- Set damage type to ice.
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)

-- Set animation to ice tornado.
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)

-- Use the custom area defined in data/spells/lib/spells.lua
combat:setArea(createCombatArea(AREA_FRIGO))

function onGetFormulaValues(player, level, magicLevel)
	-- Arbitrary formula values
	return 99999999, 99999999
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
