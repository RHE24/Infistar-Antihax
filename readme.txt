/*
	File: run.sqf
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	-
	#92
	Make sure to have proper settings!
*/
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* ******************Copyright © 2014 infiSTAR all rights reserved****************** */
/* *********************************www.infiSTAR.de********************************* */
--------------------------------------------------------------------------------
TERMS AND CONDITIONS
The script (which is a plain written text) stays property of infiSTAR.
As author he is the only one allowed to modify, share (sell, post, [..]) it.
You are not allowed to copy/modify any kind of intellectual property of infiSTAR (this),
unless you are permitted by infiSTAR.
Commercial use is prohibited unless it is permitted by infiSTAR.

REFUND POLICY
You agree that infiSTAR offers no refunds and all payments for Services are final. 
Furthermore, you shall not institute any form or charge-back for any fees paid to infiSTAR. 
You acknowledge that you have read and agree to the above Policy.
--------------------------------------------------------------------------------
Once you purchase, your paypal email will be added to my Updater.
As soon as I am online again I will send you the most recent version, 
as that is always newer then what I have on the store (for several reasons).

CONTACT INFO
http://dayzantihack.com/form.html (infiSTAR23@gmail.com)
--------------------------------------------------------------------------------
pbo manager I use on windows 7 64bit:
http://files.dayzantihack.de/PBO Manager v.1.4 beta.zip


It is very important that you read through the "run.sqf".
Most people want to run this on AltisLife and forget to change the settings for AltisLife in the "run.sqf".


Installation-Guide:
===================

ALL MODS - infiSTAR_AdminMenu:
	 To use the infiSTAR_AdminMenu Dialog you will need to edit your current MPMission.
	 Go into your servers MPMissions folder and open the "description.ext" and add this at the very top:
	 #include "infiSTAR_AdminMenu.hpp"
	 after doign this, you need to copy the "infiSTAR_AdminMenu.hpp" file from "MPMission Addition(s)" into the MPMission.
	 Now open your "run.sqf" (which is basically the config file for the AntiHack & AdminTool) and set this
	 "_infiSTAR_Admin_Dialog = true;"





ArmA3 Epoch 0.2.5.1:
01. Disable default AntiHack (SkaroKid copy paste *1) by going into "@EpochHive\epochAH.hpp"
	  antihack_Enabled = false; // built-in Anti-Hack
	  antihack_addOnCheck = false; //addon check
02. Go into your "infiSTAR.de_A3\_Epoch extras\@EpochHive\Addons" folder and copy paste "a3_epoch_infiSTAR.pbo" on your server
	 in the server pbo directory:
	 "@EpochHive\Addons"
	 so it is in the same folder as "a3_epoch_server.pbo"
	 
	 Like this:
	 http://infiSTAR.de/readme/a3_epoch_infiSTAR_location_picture.png
	 
03. Put the following files right next to your "arma3server.exe" (on the Server!).
     A3AH.sqf
     A3AT.sqf
     run.sqf
     all dlls
	  
	  examples:
	  http://infiSTAR.de/readme/AH_files_location_picture.png
	  http://infiSTAR.de/readme/AH_files_location_picture2.png
	  
04. Open the "run.sqf" and add your AdminUID(s), then check if the different settings are fine for you :) - do not edit the other files.
05. Upload the BattleEye Filters from my folder "infiSTAR.de_A3\_Epoch extras\BattlEye\ArmA3 Epoch 0.2.5"
	 into your instance folder (it should have a BEServer cfg file) - overwrite the existing filters but do not delete any file in this folder!
06. ***NEW***
	 To use the infiSTAR_AdminMenu Dialog you will need to edit your current MPMission.
	 Go into your servers MPMissions folder and open the "description.ext" and add this at the very top:
	 #include "infiSTAR_AdminMenu.hpp"
	 after doign this, you need to copy the "infiSTAR_AdminMenu.hpp" file from "MPMission Addition(s)" into the MPMission.
	 Now open your "run.sqf" (which is basically the config file for the AntiHack & AdminTool) and set this
	 "_infiSTAR_Admin_Dialog = true;"
07. Default Open Menu Key is F1





USING THIS ON ALTIS-LIFE WITH SPYGLASS:
01. First we need to modify spyglass, so we are not getting banned from our own server..
     Open the Altis-Life MPMission folder and move to "SpyGlass\fn_menuCheck.sqf" and replace it from the one in the folder called "_AltisLife extras".
     Open "initPlayerLocal.sqf" and add these lines at the very top:
	  life_adminlevel = nil;life_coplevel = nil;life_donator = nil;
02. Make sure the folder you downloaded the pbo from "AltisLife\@life_server\Addons", only has the life_server.pbo in it.
     If that folder has a subfolder or the unpacked pbo in it -> DELETE that.
	  
	  should be looking like this:
	  http://infiSTAR.de/readme/life_server_pbo_location.png
	  
03. Once you are done, unpack your pbo file (google pbo manager or semilar)
04. go into "life_server" folder and open "init.sqf" (note - we are in the server pbo and not in the MPMission anymore..)
	  
	  this is how the location looks like:
	  http://infiSTAR.de/readme/init.sqf_location.png
	  
05. copy paste
     [] execVM "run.sqf";
     in the first line.
	  
	  should be looking like this:
	  http://infiSTAR.de/readme/firstline.png
	  
06. Put the following files right next to your "arma3server.exe" (on the Server!).
     A3AH.sqf
     A3AT.sqf
     run.sqf
     all dlls
	  
	  examples:
	  http://infiSTAR.de/readme/AH_files_location_picture.png
	  http://infiSTAR.de/readme/AH_files_location_picture2.png
	  
07. Open the "run.sqf" and add your AdminUID(s), then check if the different settings are fine for you :) - do not edit the other files.
08. Upload the BattleEye Filters from my folder "_AltisLife extras\BattlEye"
	 into your instance folder (it should have a BEServer cfg file) - overwrite the existing filters but do not delete any file in this folder!
09. Default Open Menu Key is F1





Good to know:
1. You can spectate by double clicking the name of a player in the admin menu.
2. Keybinds:
     F1 - Default AdminMenu Key
     F6 - Heal Yourself
     F7 - Heal & Repair withing 15m
     F10 - Stop Spectating
     F11 - Add Ammo for current weapon
     5 - Teleport in looking direction
     6 - Eject CursorTarget
     7 - Lock & Unlock closest vehicle you are aiming at.
     SHIFT & F2 - Adminconsole
     SHIFT & DELETE - Delete CursorTarget
     SHIFT & 4 - Fly Up
     SHIFT & TAB - Open Map
	  DIK_PGUP (PageUP) - Flip CursorTarget Vehicle
3. If the map is opened and you hold LEFT-ALT key, you can click on the map and teleport there!
4. If you are added in the run.sqf as an admin, you are able to change from admin to a normal player and back by typing !admin in the chat.




 *1 As some of you may already know, Skaronator is trying to discredit me wherever he can.
    I am not sure if that is just childish behavior or because of the fact that he knows that copy pasting is not the right way to get things done.
    He also has a past(?) as a "hacker" and the default antihack that is within the default arma3 epoch files has a backdoor in it that makes him, avwol and someone else admin on your server.
    Also it allows skaronator to open his custom files/hackmenu.
    Do not believe the rumor or lies spread by him and his friends..
    
    That is how his menu looks like now: http://puu.sh/cyYwV/fab3e36568.png
    not just my old color them, also the same text (admin functions) in the same order and with the same description.
    Even same capital letters that I used :P (totally not copy paste.. *irony*).. http://puu.sh/czcR0/9e7a55a2f4.png
	 
	 Epoch devs are trying to defame me and probably others to be able to copy paste their work and use it as theirs.
	 As we know they are taking part in the contest of "make arma not war" and there is much money in the pot..
	 more about this on http://infistar.de/epoch.html


cheers,
chris aka infiSTAR
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* ******************Copyright © 2014 infiSTAR all rights reserved****************** */
/* *********************************www.infiSTAR.de********************************* */