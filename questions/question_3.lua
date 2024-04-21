-- Answer to Q3 - Fix or improve the name and the implementation of the below method

-- Renamed to "removeMemberFromPlayerParty" to clearly indicate purpose.
-- Renamed "membername" to "memberName" to follow standard naming conventions.
function removeMemberFromPlayerParty(playerId, memberName)
	-- Use the player to get a reference to that player's party.
	player = Player(playerId)
	local party = player:getParty()
	
	-- Based on the existence of memberName, I'm making the assumption that
	-- the player being removed is different from the playerId passed in.
	-- If this isn't the case, then memberName would not be needed since
	-- we could just remove by it comparing playerId values.

	-- Iterate through the party members.
	-- Rename k & v to key & member for clarity/readability.
	for key, member in pairs(party:getMembers()) do
		-- Compare name values rather than comparing object references.
		if member:getName() == memberName then
			-- We don't need to retrieve the reference by name again because we already have one.
			party:removeMember(member)
			
			-- Return early to prevent unneeded iteration.
			return true
		end
	end

	-- Return false to indicate that the member could not be found.
	return false
end
