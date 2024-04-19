/*
 * Answer to Q4 - Assume all method calls work fine. Fix the memory leak issue in below method
*/

void Game::addItemToPlayer(const std::string& recipient, uint16_t itemId) {
	Player* player = g_game.getPlayerByName(recipient);
	if (!player) {
		// Calling new() instantiates a new Player object, which allocates memory to store it.
		player = new Player(nullptr);
		if (!IOLoginData::loadPlayerByName(player, recipient)) {
			// If we return here, then the newly allocated heap space for player is never used.
			// We must allow that space to be unallocated before returning to prevent memory leaks:
			delete player;
			return;
		}
	}

	Item* item = Item::CreateItem(itemId);
	if(!item) {
		return;
	}
	
	g_game.internalAddItem(player->getInbox(), item, INDEX_WHEREEVER, FLAG_NOLIMIT);
	if(player->isOffline()) {
		IOLoginData::savePlayer(player);
	}
} 
