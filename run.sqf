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
/* ********************************************************************************* */
/* ********************************************************************************* */
/* **********************************READ PLEASE************************************ */
/* ********************************************************************************* */
/*
	Default settings are for Arma3 Epoch v0.2.5 with lower security.
	Vehicle check, Item Check, Ammo Check - should all be true if you ask me.
	But they are false by default, so change them to true if you think like me.
	
	Some checks are false even though they would work very well, if they were running (true).
	Simply because some people don't take the time to read the settings/look into this file
	and message me ten times with questions like "tanks explode when normal players join them".
	Yes. If the Vehicle Check "_UVC" is true it destroys vehicles that are used by "normal players",
	when they are in the "_ForbiddenVehicles" array (This array should be working fine for Epoch 0.2.5).
	
	So to get this running you need either some experience or a bit time to figure things out.
	Oh and don't forget to read the readme.txt
*/
/* ********************************************************************************* */
/* **********************************ADMIN CONFIG*********************************** */
/* ********************************************************************************* */
/* "_infiSTAR_Admin_Dialog": you need to have infiSTAR_AdminMenu.hpp in your mpmission and included it into the description.ext */
_infiSTAR_Admin_Dialog = false;
/* "_MOD": Can be 'Epoch', 'AltisLife', 'KOTH', 'Other'     */
_MOD = 'Epoch';
/* "_JSRS": Allow JSRS Addon */
_JSRS = false;
/* "_OPEN_ADMIN_MENU_KEY": Key to open the menu (google DIK_KeyCodes (0x3B is F1))   */
_OPEN_ADMIN_MENU_KEY = 0x3B;
/* What ESCAPE Menu shows */
_ESCMNUTOP = 'AntiHack & AdminTools';
_ESCMNUBOT = 'by infiSTAR.de';
/* "_passwordAdmin": Taken from the servers config.cfg, needed for servercommands     */
_passwordAdmin = 'EnterAdminPasswordFromYourConfigHere';
_adminLevel1_UIDs =
[
	'76561198152111329','76561198118338598','76561198078978377','76561198022320880','76561197960325490'
];
_adminLevel1 =
[
	'spectating','adminconsole','Delete Vehicle','FlyUp','TpDirection','EjectTarget','ToggleVehLock','ShowGear',
	'HealSelf','HealRepairNear','AddAmmoSelf','AdminStart',
	'==== Weapons ====','==== Magazines ====','==== Vehicles ====','==== Loadouts ====','==== AltisLife Money ====',
	'Teleport Target To Me','Teleport To','Copy Gear','Revive','Heal','Repair','Move In My Vehicle','Move In Target Vehicle',
	'Spawn UAV','Spawn Epoch_Cloak_F','Spawn Sapper_F','Spawn GreatWhite_F','Eject','Eject Crew','Kill','Zeus',
	'Force Disconnect','Kick','Ban','Box-ESP','Map-Icons','PlotPole Marker','Vehicle Marker','Construction Marker','DeadPlayer Marker',
	'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
	'Disable Announces','Show FPS','Give All Liscenses','Call EMP','Mass Message','DayTime','NightTime','Add 2500 Crypto',
	'Spawn Box','Spawn Epoch-Box','Spawn Ammo','showinfo'
];
_adminLevel2_UIDs =
[
	'0','0','0'
];
_adminLevel2 =
[
	'spectating','adminconsole','Delete Vehicle','FlyUp','TpDirection','EjectTarget','ToggleVehLock','ShowGear',
	'HealSelf','HealRepairNear','AddAmmoSelf','AdminStart',
	'==== Weapons ====','==== Magazines ====','==== Vehicles ====','==== Loadouts ====','==== AltisLife Money ====',
	'Teleport Target To Me','Teleport To','Copy Gear','Revive','Heal','Repair','Move In My Vehicle','Move In Target Vehicle',
	'Spawn UAV','Spawn Epoch_Cloak_F','Spawn Sapper_F','Spawn GreatWhite_F','Eject','Eject Crew','Kill','Zeus',
	'Force Disconnect','Kick','Ban','Box-ESP','Map-Icons','PlotPole Marker','Vehicle Marker','Construction Marker','DeadPlayer Marker',
	'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
	'Disable Announces','Show FPS','Give All Liscenses','Call EMP','Mass Message','DayTime','NightTime','Add 2500 Crypto',
	'Spawn Box','Spawn Epoch-Box','Spawn Ammo','showinfo'
];
_adminLevel3_UIDs =
[
	'0','0','0'
];
_adminLevel3 =
[
	'spectating','adminconsole','Delete Vehicle','FlyUp','TpDirection','EjectTarget','ToggleVehLock','ShowGear',
	'HealSelf','HealRepairNear','AddAmmoSelf','AdminStart',
	'==== Weapons ====','==== Magazines ====','==== Vehicles ====','==== Loadouts ====','==== AltisLife Money ====',
	'Teleport Target To Me','Teleport To','Copy Gear','Revive','Heal','Repair','Move In My Vehicle','Move In Target Vehicle',
	'Spawn UAV','Spawn Epoch_Cloak_F','Spawn Sapper_F','Spawn GreatWhite_F','Eject','Eject Crew','Kill','Zeus',
	'Force Disconnect','Kick','Ban','Box-ESP','Map-Icons','PlotPole Marker','Vehicle Marker','Construction Marker','DeadPlayer Marker',
	'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
	'Disable Announces','Show FPS','Give All Liscenses','Call EMP','Mass Message','DayTime','NightTime','Add 2500 Crypto',
	'Spawn Box','Spawn Epoch-Box','Spawn Ammo','showinfo'
];

/* ********************************************************************************* */
/*  Use CheatEngine check */ _UCE =  true;	/* true or false */
/*  Use on(Un)Load check  */ _UOL =  true;	/* true or false */
/*  Use MPInterrupt check */ _UMP =  true;	/* true or false */
/*  Use Notification check*/ _UNC =  true;	/* true or false */
/*  Use CfgGlasses check  */ _UCG =  true;	/* true or false */
/*  Use CfgPatches check  */ _UCP =  true;	/* true or false */
/* _cfgPW: if '_UCP' this can be used to white-list entries in the CfgPatches */
_cfgPW =
[
	'CBA','JSRS','Drago','A3Data'
];
/*  Remove Action Plrs   */ _OAP =  true;	/* true or false */
/*  Remove Action Objs   */ _OAO =  true;	/* true or false */	/* needs to be  false  when using IgiLoad */
/*  Forbid VON Sidechat  */ _VON =  true;	/* true or false */	/* talking on sidechat will put out a warning and punish the player */
/*  Use Anti Teleport    */ _UAT =  true;	/* true or false */
/*  Chat-Vote Day/Night  */ _VDN =  true;	/* true or false */
/*  revert onEachFrame   */ _REF =  true;	/* true or false */
/*  check view distance  */ _CVD =  true;	/* true or false */	/* if the viedistance is not 1600 - ban. */
/*  mod PlayerConnect    */ _OPC =  true;	/* true or false */
/*  use check_player.dll */ _KKC = false;	/* true or false */	/* get the dll here http://killzonekid.com/arma-scripting-tutorials-get_friends-check_player-logic/ (implemented it cause several people asked me to.) credits to kkid! */
/*  mod PlayerDisconnect */ _OPD =  true;	/* true or false */	/* modified the onPlayerDisconnect function to log properly in the rpt and partially prevent duping *experimental* */
/*  use Anti Glitch      */ _UAG = false;	/* true or false */	/* a try to stop glitching through walls on Epoch */
/*  onEachFrame function */ _rOEF = {};
/*  CommandingMenu Check */ _CMC =  true;	/* true or false */
/* _cMenu: ALLOWED Commanding Menus */
_cMenu =
[
	'',
	'RscMainMenu','RscMoveHigh','#WATCH','#WATCH0','RscWatchDir','RscWatchMoveDir','#GETIN','#RscStatus','RscCallSupport','#ACTION',
	'RscCombatMode','RscFormations','RscTeam','RscSelectTeam','RscReply','#User:BIS_Menu_GroupCommunication','#CUSTOM_RADIO',
	'RscRadio','RscGroupRootMenu','RscMenuReply','RscMenuStatus','#User:BIS_fnc_addCommMenuItem_menu','RscMenuMove','RscMenuFormations'
];
/*  Check Local Markers  */ _CLM =  true;	/* true or false */
/*  Use _aLocalM array   */ _UMW = false;	/* true or false */	/* use allowed marker array from below (for example AltisLife uses house_ and others in there) */
/* _aLocalM: if '_CLM' && _UMW - this array of names will be allowed */
_aLocalM =
[
	'sek_','_marker','marker_','house_','_dead_marker','um'
];
/*  Use allowed Dialogs ? */ _UDW =  true;	/* true or false */
/* _allowedDialogs: Insert IDDs here to prevent them from being closed! Default ArmA3 and Altis-Life idds should be in already. */
_allowedDialogs = [-1,602];
/* _badDialogsBAN: Forbidden Dialog Idds that will get you Banned by the AH */
_badDialogsBAN = [-1338,-1337,17,19,30,32,45,56,64,69,71,125,132,155,156,157,162,165,166,167,1320,1321,2727,2928,2929,3030,316000];
/* _badDialogsKICK: Forbidden Dialog Idds that will get you Kicked by the AH */
_badDialogsKICK = [-1337];
/* _badDialogsClose: Forbidden Dialog Idds that will get closed by the AH */
_badDialogsClose =
[
	2,3,7,17,19,25,26,27,28,29,30,31,32,37,40,41,43,44,45,51,52,53,74,85,
	106,126,127,129,131,132,146,147,148,150,151,152,153,154,159,163,164,262,
	314,632,1320,2121
];
/*  Use Vehicle Check    */ _UVC = false;	/* true or false */
_ForbiddenVehicles =
[
	'B_Heli_Light_01_armed_F','B_Heli_Attack_01_F','B_Plane_CAS_01_F','B_APC_Tracked_01_rcws_F','B_APC_Tracked_01_CRV_F','B_APC_Tracked_01_AA_F','B_MBT_01_cannon_F',
	'B_MBT_01_arty_F','B_MBT_01_mlrs_F','B_Boat_Armed_01_minigun_F','B_UAV_02_F','B_UAV_02_CAS_F','B_MRAP_01_gmg_F','B_MRAP_01_hmg_F','B_G_Offroad_01_armed_F',
	'B_APC_Wheeled_01_cannon_F','B_MBT_01_TUSK_F','O_Heli_Light_02_F','O_Heli_Attack_02_F','O_Heli_Attack_02_black_F','O_Plane_CAS_02_F','O_APC_Tracked_02_cannon_F',
	'O_APC_Tracked_02_AA_F','O_MBT_02_cannon_F','O_MBT_02_arty_F','O_Boat_Armed_01_hmg_F','O_UAV_02_CAS_F','O_UAV_02_F','O_MRAP_02_hmg_F','O_MRAP_02_gmg_F','O_G_Offroad_01_armed_F',
	'O_APC_Wheeled_02_rcws_F','O_UGV_01_rcws_F','B_UGV_01_rcws_F','I_UGV_01_rcws_F','I_APC_Wheeled_03_cannon_F','I_MRAP_03_gmg_F','I_MRAP_03_hmg_F','I_G_Offroad_01_armed_F',
	'I_UAV_02_CAS_F','I_UAV_02_F','I_Boat_Armed_01_minigun_F','I_MBT_03_cannon_F','I_APC_tracked_03_cannon_F','I_Plane_Fighter_03_AA_F','I_Plane_Fighter_03_CAS_F','I_Heli_light_03_F',
	'B_HMG_01_F','O_HMG_01_F','I_HMG_01_F','B_HMG_01_high_F','O_HMG_01_high_F','I_HMG_01_high_F','B_HMG_01_A_F','O_HMG_01_A_F','I_HMG_01_A_F','B_Mortar_01_F','O_Mortar_01_F',
	'I_Mortar_01_F','I_G_Mortar_01_F','B_G_Mortar_01_F','O_G_Mortar_01_F','B_GMG_01_F','O_GMG_01_F','I_GMG_01_F','B_GMG_01_high_F','O_GMG_01_high_F','I_GMG_01_high_F','B_GMG_01_A_F',
	'O_GMG_01_A_F','I_GMG_01_A_F','B_static_AA_F','O_static_AA_F','I_static_AA_F','B_static_AT_F','O_static_AT_F','I_static_AT_F'
];
/*  Use Item Check   */ _UFI = false;	/* true or false */
_ForbiddenItems =
[
	'autocannon_Base_F','autocannon_30mm','autocannon_35mm','autocannon_40mm_CTWS','autocannon_30mm_CTWS','Bomb_04_Plane_CAS_01_F',
	'Bomb_03_Plane_CAS_02_F','cannon_105mm','cannon_120mm','cannon_120mm_long','cannon_125mm','Cannon_30mm_Plane_CAS_02_F','gatling_20mm',
	'gatling_25mm','gatling_30mm','Gatling_30mm_Plane_CAS_01_F','GBU12BombLauncher','GMG_20mm','GMG_40mm','GMG_UGV_40mm','HMG_127_MBT',
	'HMG_127','HMG_127_APC','HMG_01','HMG_M2','HMG_NSVT','LMG_Minigun2','LMG_RCWS','LMG_M200','LMG_Minigun','LMG_Minigun_heli','LMG_coax',
	'Missile_AGM_02_Plane_CAS_01_F','Missile_AA_04_Plane_CAS_01_F','Missile_AA_03_Plane_CAS_02_F','Missile_AGM_01_Plane_CAS_02_F','missiles_DAGR',
	'missiles_DAR','missiles_ASRAAM','missiles_SCALPEL','missiles_titan','missiles_titan_static','missiles_Zephyr','Mk82BombLauncher','mortar_82mm',
	'mortar_155mm_AMOS','rockets_Skyfire','rockets_230mm_GAT','Rocket_04_HE_Plane_CAS_01_F','Rocket_04_AP_Plane_CAS_01_F','Rocket_03_HE_Plane_CAS_02_F',
	'Rocket_03_AP_Plane_CAS_02_F','Twin_Cannon_20mm'
];
/*  Use Ammo Check   */ _UFA = false;	/* true or false */
_ForbiddenAmmo =
[
	'200Rnd_65x39_Belt','200Rnd_65x39_Belt_Tracer_Red','200Rnd_65x39_Belt_Tracer_Green','200Rnd_65x39_Belt_Tracer_Yellow','2000Rnd_65x39_Belt','2000Rnd_65x39_Belt_Green',
	'2000Rnd_65x39_Belt_Yellow','1000Rnd_65x39_Belt','1000Rnd_65x39_Belt_Green','1000Rnd_65x39_Belt_Yellow','2000Rnd_65x39_Belt_Tracer_Red','2000Rnd_65x39_Belt_Tracer_Green',
	'2000Rnd_65x39_Belt_Tracer_Yellow','1000Rnd_65x39_Belt_Tracer_Red','1000Rnd_65x39_Belt_Tracer_Green','1000Rnd_65x39_Belt_Tracer_Yellow','500Rnd_127x99_mag','500Rnd_127x99_mag_Tracer_Red',
	'500Rnd_127x99_mag_Tracer_Green','500Rnd_127x99_mag_Tracer_Yellow','200Rnd_127x99_mag','200Rnd_127x99_mag_Tracer_Green','200Rnd_127x99_mag_Tracer_Yellow',
	'450Rnd_127x108_Ball','150Rnd_127x108_Ball','50Rnd_127x108_Ball','8Rnd_82mm_Mo_shells','8Rnd_82mm_Mo_guided','8Rnd_82mm_Mo_LG','24Rnd_PG_missiles','12Rnd_PG_missiles','200Rnd_20mm_G_belt',
	'40Rnd_20mm_g_belt','96Rnd_40mm_G_belt','64Rnd_40mm_G_belt','32Rnd_40mm_G_belt','60Rnd_40mm_GPR_shells','60Rnd_40mm_GPR_Tracer_Red_shells','60Rnd_40mm_GPR_Tracer_Green_shells',
	'60Rnd_40mm_GPR_Tracer_Yellow_shells','40Rnd_40mm_APFSDS_shells','40Rnd_40mm_APFSDS_Tracer_Red_shells','40Rnd_40mm_APFSDS_Tracer_Green_shells','40Rnd_40mm_APFSDS_Tracer_Yellow_shells',
	'140Rnd_30mm_MP_shells','140Rnd_30mm_MP_shells_Tracer_Red','140Rnd_30mm_MP_shells_Tracer_Green','140Rnd_30mm_MP_shells_Tracer_Yellow','60Rnd_30mm_APFSDS_shells',
	'60Rnd_30mm_APFSDS_shells_Tracer_Red','60Rnd_30mm_APFSDS_shells_Tracer_Green','60Rnd_30mm_APFSDS_shells_Tracer_Yellow','2000Rnd_20mm_shells','1000Rnd_20mm_shells','300Rnd_20mm_shells',
	'250Rnd_30mm_HE_shells','250Rnd_30mm_APDS_shells','2Rnd_AAA_missiles','2Rnd_AAA_missiles_MI02','4Rnd_AAA_missiles','4Rnd_AAA_missiles_MI02','2Rnd_LG_scalpel','8Rnd_LG_scalpel',
	'6Rnd_LG_scalpel','2Rnd_GAT_missiles','5Rnd_GAT_missiles','4Rnd_GAA_missiles','4Rnd_Titan_long_missiles','14Rnd_80mm_rockets','38Rnd_80mm_rockets','32Rnd_120mm_APFSDS_shells',
	'32Rnd_120mm_APFSDS_shells_Tracer_Red','32Rnd_120mm_APFSDS_shells_Tracer_Green','32Rnd_120mm_APFSDS_shells_Tracer_Yellow','30Rnd_120mm_APFSDS_shells','30Rnd_120mm_APFSDS_shells_Tracer_Red',
	'30Rnd_120mm_APFSDS_shells_Tracer_Green','30Rnd_120mm_APFSDS_shells_Tracer_Yellow','30Rnd_120mm_HE_shells','30Rnd_120mm_HE_shells_Tracer_Red','30Rnd_120mm_HE_shells_Tracer_Green',
	'30Rnd_120mm_HE_shells_Tracer_Yellow','16Rnd_120mm_HE_shells','16Rnd_120mm_HE_shells_Tracer_Red','16Rnd_120mm_HE_shells_Tracer_Green','16Rnd_120mm_HE_shells_Tracer_Yellow',
	'1000Rnd_25mm_shells','300Rnd_25mm_shells','680Rnd_35mm_AA_shells','680Rnd_35mm_AA_shells_Tracer_Red','680Rnd_35mm_AA_shells_Tracer_Green','680Rnd_35mm_AA_shells_Tracer_Yellow',
	'32Rnd_155mm_Mo_shells','2Rnd_155mm_Mo_guided','2Rnd_155mm_Mo_LG','6Rnd_155mm_Mo_mine','2Rnd_155mm_Mo_Cluster','6Rnd_155mm_Mo_AT_mine','1Rnd_GAT_missiles','1Rnd_GAA_missiles',
	'2Rnd_GBU12_LGB','2Rnd_GBU12_LGB_MI10','2Rnd_Mk82','2Rnd_Mk82_MI08','12Rnd_230mm_rockets','140Rnd_30mm_MP_shells','140Rnd_30mm_MP_shells_Tracer_Red','140Rnd_30mm_MP_shells_Tracer_Green',
	'140Rnd_30mm_MP_shells_Tracer_Yellow','60Rnd_30mm_APFSDS_shells','60Rnd_30mm_APFSDS_shells_Tracer_Red','60Rnd_30mm_APFSDS_shells_Tracer_Green','60Rnd_30mm_APFSDS_shells_Tracer_Yellow',
	'28Rnd_120mm_APFSDS_shells','28Rnd_120mm_APFSDS_shells_Tracer_Red','28Rnd_120mm_APFSDS_shells_Tracer_Green','28Rnd_120mm_APFSDS_shells_Tracer_Yellow','14Rnd_120mm_HE_shells',
	'14Rnd_120mm_HE_shells_Tracer_Red','14Rnd_120mm_HE_shells_Tracer_Green','14Rnd_120mm_HE_shells_Tracer_Yellow','24Rnd_125mm_APFSDS','24Rnd_125mm_APFSDS_T_Red','24Rnd_125mm_APFSDS_T_Green',
	'24Rnd_125mm_APFSDS_T_Yellow','12Rnd_125mm_HE','12Rnd_125mm_HE_T_Red','12Rnd_125mm_HE_T_Green','12Rnd_125mm_HE_T_Yellow','12Rnd_125mm_HEAT','12Rnd_125mm_HEAT_T_Red','12Rnd_125mm_HEAT_T_Green',
	'12Rnd_125mm_HEAT_T_Yellow','2000Rnd_20mm_shells','1000Rnd_20mm_shells','300Rnd_20mm_shells','1000Rnd_Gatling_30mm_Plane_CAS_01_F','2Rnd_Missile_AA_04_F','6Rnd_Missile_AGM_02_F',
	'7Rnd_Rocket_04_HE_F','7Rnd_Rocket_04_AP_F','2Rnd_Bomb_03_F','4Rnd_Bomb_04_F','4Rnd_Missile_AGM_01_F','20Rnd_Rocket_03_HE_F','500Rnd_Cannon_30mm_Plane_CAS_02_F','20Rnd_Rocket_03_AP_F',
	'2Rnd_Missile_AA_03_F','500Rnd_127x99_mag','500Rnd_127x99_mag_Tracer_Red','500Rnd_127x99_mag_Tracer_Green','500Rnd_127x99_mag_Tracer_Yellow','200Rnd_127x99_mag',
	'200Rnd_127x99_mag_Tracer_Red','200Rnd_127x99_mag_Tracer_Green','200Rnd_127x99_mag_Tracer_Yellow','40Rnd_105mm_APFSDS','40Rnd_105mm_APFSDS_T_Red','40Rnd_105mm_APFSDS_T_Green',
	'40Rnd_105mm_APFSDS_T_Yellow','20Rnd_105mm_HEAT_MP','20Rnd_105mm_HEAT_MP_T_Red','20Rnd_105mm_HEAT_MP_T_Green','20Rnd_105mm_HEAT_MP_T_Yellow'
];
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ******************************DO NOT TOUCH BELOW********************************* */
if (_MOD == 'AltisLife') then {_OAP = false;_OAO = false;};
EPOCH_server_isPAdmin=compileFinal 'true';
diag_log format['infiSTAR.de %1 - run.sqf - finaled EPOCH_server_isPAdmin: %2',time,EPOCH_server_isPAdmin];
_admins = _adminLevel1_UIDs + _adminLevel2_UIDs + _adminLevel3_UIDs;
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
comment 'Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de - License: (CC)';
diag_log format['infiSTAR.de %1 - run.sqf - including AntiHack',time];
#include "A3AH.sqf"
diag_log format['infiSTAR.de %1 - run.sqf - AntiHack included!',time];

diag_log format['infiSTAR.de %1 - run.sqf - including AdminTools',time];
#include "A3AT.sqf"
diag_log format['infiSTAR.de %1 - run.sqf - AdminTools included!',time];
/* ********************************************************************************* */
/* *********************************www.infiSTAR.de********************************* */
/* *******************Developed by infiSTAR (infiSTAR23@gmail.com)****************** */
/* ******************Copyright © 2014 infiSTAR all rights reserved****************** */
/* ****DayZAntiHack.com***DayZAntiHack.de***ArmaAntiHack.com***Arma3AntiHack.com**** */