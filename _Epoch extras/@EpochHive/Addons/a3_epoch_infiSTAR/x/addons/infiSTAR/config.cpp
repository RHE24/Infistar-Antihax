class CfgPatches {
	class A3_epoch_infiSTAR {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_server_settings"};
	};
};
class CfgFunctions {
	class inf {
		class main {
			file = "\x\addons\infiSTAR\scripts";
			class start_infiSTAR {
				postInit = 1;
			};
		};
	};
};