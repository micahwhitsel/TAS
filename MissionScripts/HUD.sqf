if (!isServer) exitWith {}; //Don't let anything but the server use this script.


///////////////////////////////
//			 BAAC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
///////////////////////////////
HUD_BAAC_INSTRUCTOR = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_Deck_Crew_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 
HUD_BAAC_STUDENT = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_T_Soldier_TL_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];

	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_T_Soldier_AR_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];

	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_T_Soldier_GL_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];


	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_T_Soldier_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

///////////////////////////////
//			 AAAC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
/////////////////////////////// 

HUD_AAAC_INSTRUCTOR = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_Deck_Crew_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 

HUD_AAAC_STUDENT = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_T_Soldier_SL_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

///////////////////////////////
//			 BAC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
/////////////////////////////// 
HUD_BAC_INSTRUCTOR = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_Competitor_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 

HUD_BAC_STUDENT = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_Soldier_TL_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];

	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_Soldier_AR_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];

	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_Soldier_GL_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];


	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_Soldier_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

///////////////////////////////
//			 JMC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
/////////////////////////////// 

HUD_JMC_INSTRUCTOR = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_RangeMaster_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 

HUD_JMC_STUDENT = {
	addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "B_soldier_PG_F") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
};

//END OF FILE