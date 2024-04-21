-- Answer to Q1 - Fix or improve the implementation of the below methods 

-- Add a storage key argument in case this method ever needs to be reused for a different value.
function releaseStorage(player, storageKey)
	player:setStorageValue(storageKey, -1)
end

function onLogout(player)
	-- Define the storage key as a constant to avoid magic numbers.
	local STORAGE_KEY = 1000

	-- Define eventDelay separately to clarify that it is different 
	-- from the STORAGE_KEY value, which is also 1000.
	local EVENT_DELAY = 1000

	-- Alter condition to check for any value that isn't already released.
	if player:getStorageValue(1000) ~= -1 then
		addEvent(releaseStorage, EVENT_DELAY, player, STORAGE_KEY)
	end

	return true
end
