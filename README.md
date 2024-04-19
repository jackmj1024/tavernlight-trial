# Tavernlight Application Technical Questions
This repository hosts my (Jack Jones) code for the Tavernlight Games software engineer technical questions.

## Repository Structure
The [server](https://github.com/jackmj1024/tavernlight-trial/tree/main/server) directory contains an instance of the TFS server with binaries. Includes the changes made to answer some of the questions. 
<br><br>
The [database](https://github.com/jackmj1024/tavernlight-trial/tree/main/database) directory contains an instance of the SQL database. It includes an account you can use to test:
<br><br>
**Username:** testuser
<br>
**Password:** tavernlight
<br><br>
There are a few characters on this account. The main one I used for testing was the druid named Misterdruid.
<br><br>
The executables for the client were too large to push to GitHub, so you'll need to use your own instance if you want to connect. Make sure to select client version 1098 on the login screen.

## Questions

### Question 5
**Commit:** [185e87cca8ae3522c142c843279fbdb30321fc88](https://github.com/jackmj1024/tavernlight-trial/commit/185e87cca8ae3522c142c843279fbdb30321fc88)<br>
**Video:** [question_5.mp4](https://github.com/jackmj1024/tavernlight-trial/blob/main/questions/question_5.mp4)<br>

#### Files
[server/data/spells/spells.xml](https://github.com/jackmj1024/tavernlight-trial/blob/main/server/data/spells/spells.xml)<br>
Register the new spell with words "frigo".
<br>
<br>
[server/data/spells/lib/spells.lua](https://github.com/jackmj1024/tavernlight-trial/blob/main/server/data/spells/lib/spells.lua)<br>
Add a definition for AREA_FRIGO, which specifies the area of affect for the new spell.
<br>
<br>
[server/data/spells/scripts/attack/custom_ice_spell.lua](https://github.com/jackmj1024/tavernlight-trial/blob/main/server/data/spells/scripts/attack/custom_ice_spell.lua)<br>
Set up spell behaviour.
