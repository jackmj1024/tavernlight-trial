-- Behaviour for the Jump! modal window (Question 7)
function onCastSpell(creature, variant)
	-- Send an opcode to client which tells it to open the window.
	creature:sendExtendedOpcode(99)
	return true;
end
