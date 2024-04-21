-- Answer to Q2 - Fix or improve the implementation of the below method

-- NOTE:
-- Depending on how memberCount is being retrieved and how we interact with db,
-- it may or may not be necessary to use a prepared statement to prevent SQL injection.
-- Since I didn't have this context, I included 2 versions, one with and one without.

-- WITH prepared statements
function printSmallGuildNames(memberCount)
	-- Prepare query with a placeholder for memberCount.
	local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < ?;"

	-- Use a prepared statement to prevent SQL injection risks
	local statement = db.prepare(selectGuildQuery)
	statement:setInt(1, memberCount)

	-- Execute the query
	local resultId = statement:executeQuery()

	-- Loop through each row in the dataset rather than printing the entire object at once.
	while db.getResult(resultId) do
		local guildName = result.getString("name")
		print(guildName)
	end

	-- Close the statement.
	statement:close()
end

-- WITHOUT prepared statements
function printSmallGuildNames(memberCount)
	-- I moved the string.format to the query definition to make it more readable.
	local selectGuildQuery = string.format("SELECT name FROM guilds WHERE max_members < %d;", memberCount)
	local resultId = db.storeQuery(selectGuildQuery)

	-- Loop through each row in the dataset rather than printing the entire object at once.
	while db.getResult(resultId) do
		local guildName = result.getString("name")
		print(guildName)
	end
end

