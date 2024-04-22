# Tavernlight Application Technical Questions
This repository hosts my (Jack Jones) code for the Tavernlight Games software engineer technical questions.

## Repository Structure
In order to commit my changes to the [client](https://github.com/jackmj1024/otclient/), I created a fork of the original edubart repository and added it to this one as a submodule. Make sure to clone this repository recursively if you want to test the changes locally:
<br><br>
`git clone --recursive git@github.com:jackmj1024/tavernlight-trial.git`
<br><br>
**Note:** The client binaries are too large to push to GitHub, so it'll need to be compiled locally if you wish to run it. I compiled the x64 Release version. Likewise, the Tibia dat/spr files in data/things/ are also too large, so they will need to be downloaded and added manually. I used the data files for the 1098 client version, which you can find [here](https://downloads.ots.me/data/tibia-clients/dat_and_spr/1098.zip).
<br><br>
The [server](https://github.com/jackmj1024/tavernlight-trial/tree/main/server) directory contains an instance of the TFS server with binaries. Includes the changes made to answer some of the questions. 
<br><br>
The [database](https://github.com/jackmj1024/tavernlight-trial/tree/main/database) directory contains an instance of the SQL database. It includes an account you can use to test:
<br><br>
**Username:** testuser
<br>
**Password:** tavernlight
<br><br>
There are a few characters on this account. The main one I used for testing was the druid named Misterdruid.

## Questions

### Questions 1-4
**Q1:** [question_1.lua](https://github.com/jackmj1024/tavernlight-trial/blob/main/questions/question_1.lua)<br>
**Q2:** [question_2.lua](https://github.com/jackmj1024/tavernlight-trial/blob/main/questions/question_2.lua)<br>
**Q3:** [question_3.lua](https://github.com/jackmj1024/tavernlight-trial/blob/main/questions/question_3.lua)<br>
**Q4:** [question_4.cpp](https://github.com/jackmj1024/tavernlight-trial/blob/main/questions/question_4.cpp)

### Question 5
You can test this behaviour by typing "frigo" in the chat window.
<br>
<br>
**Commit:** [185e87cca8ae3522c142c843279fbdb30321fc88](https://github.com/jackmj1024/tavernlight-trial/commit/185e87cca8ae3522c142c843279fbdb30321fc88)<br>
**Video:** [question_5.mp4](https://github.com/jackmj1024/tavernlight-trial/blob/main/questions/question_5.mp4)<br>

#### Files:
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
]

### Question 6
Skipped; was unable to fully implement this within the limited time I had to understand the OTC codebase.

### Question 7
You can test this behaviour by typing "jump game" in the chat window.
<br>
<br>
**Commit:** [37d475f0dce365e13c5fb04b021a4cb56a871dde](https://github.com/jackmj1024/tavernlight-trial/commit/37d475f0dce365e13c5fb04b021a4cb56a871dde)<br>
**Video:** [question_7.mp4](https://github.com/jackmj1024/tavernlight-trial/blob/main/questions/question_7.mp4)<br>
**Hotfix Commit:** [6daefadd96ca2853fc88bb04f833d9d0ada6eb7a](https://github.com/jackmj1024/tavernlight-trial/commit/6daefadd96ca2853fc88bb04f833d9d0ada6eb7a)<br><br>
*For the hotfix, all I did was fix a warning that would appear in the client console after closing the jump window. I also slightly reformatted the spells.xml file to make it more readable.*
#### Files:
[client/modules/game_jumpwindow/jumpwindow.lua](https://github.com/jackmj1024/otclient/blob/master/modules/game_jumpwindow/jumpwindow.lua)<br>
Main behaviour script for the jumpwindow module.
<br>
<br>
[client/modules/game_jumpwindow/jumpwindow.otui](https://github.com/jackmj1024/otclient/blob/master/modules/game_jumpwindow/jumpwindow.otui)<br>
Define UI window layout/components for the jumpwindow module.
<br>
<br>
[client/modules/game_jumpwindow/jumpwindow.otmod](https://github.com/jackmj1024/otclient/blob/master/modules/game_jumpwindow/jumpwindow.otmod)<br>
Register the jumpwindow module and set it to autoload.
<br>
<br>
[server/data/lib/compat/compat.lua](https://github.com/jackmj1024/tavernlight-trial/blob/main/server/data/lib/compat/compat.lua)<br>
Add compat data for onJumpWindow.
<br>
<br>
[server/data/spells/spells.xml](https://github.com/jackmj1024/tavernlight-trial/blob/main/server/data/spells/spells.xml)<br>
Register a new spell for opening the window with words "jump game".
<br>
<br>
[server/data/spells/scripts/custom/jump_game.lua](https://github.com/jackmj1024/tavernlight-trial/blob/main/server/data/spells/scripts/custom/jump_game.lua)<br>
Set up spell behaviour.
