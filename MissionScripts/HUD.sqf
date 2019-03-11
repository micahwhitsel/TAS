if (!isServer) exitWith {}; //Don't let anything but the server use this script.


// Marker format "<prefix><name>_<label/icon>_<min-distance>_<max-distance>_<size-in-meters>_<font-family>"
// Prefix must be of format "string_string_", e.g. "HUD_Pilot_"
//
//Put down an invisible marker, then name the marker something like the following to show the hud.
//Example of Text: HUD_Staging_Infantry_Staging Area
//Example of Image: HUD_A1_Infantry_Weapon 

// Example for S3 SOI 
// HUD_BAACI_Staging Area
// HUD_BAACS_Staging Area 

HUD_Enabled = true;

HUD_Icons =
[
	["Microphone", ["\a3\ui_f\data\GUI\Rsc\RscDisplayArsenal\voice_ca.paa", 32]],
	["Radio", ["\a3\ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa", 32]],
	["Weapon", ["\a3\ui_f\data\IGUI\cfg\Actions\Obsolete\ui_action_gear_ca.paa", 32]],
	["VehicleRepair", ["\a3\ui_f\data\IGUI\cfg\Cursors\iconRepairVehicle_ca.paa", 32]],
	["VehicleFuel", ["\a3\ui_f\data\IGUI\cfg\Cursors\iconRefuelAt_ca.paa", 32]],
	["Base", ["\a3\ui_f\data\IGUI\cfg\IslandMap\iconSensor_ca.paa", 32]],
	["Move", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move_ca.paa", 32]],
	["Move1", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move1_ca.paa", 32]],
	["Move2", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move2_ca.paa", 32]],
	["Move3", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move3_ca.paa", 32]],
	["Move4", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move4_ca.paa", 32]],
	["Move5", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move4_ca.paa", 32]]
];

// UserTexture_1x2_F
// UserTexture10m_F
// UserTexture1m_F

// Icon descriptor:
// [position, string-or-texture-descriptor, current-color, min-distance, max-distance, size-in-meters, font]

#define FADE_DURATION 0.5

HUD_DrawIcon =
{
	params ["_descriptor"];

	private _position = _descriptor select 0;

	private _distance = player distance _position;
	private _color = _descriptor select 2;
	private _alpha = _color select 3;

	if (_distance >= _descriptor select 3 && { _distance <= _descriptor select 4 }) then
	{
		_alpha = (_alpha + (1 / diag_fps) / FADE_DURATION) min 1.0;
		_color set [3, _alpha];
		_descriptor set [2, _color];
	}
	else
	{
		if (_alpha > 0.0) then
		{
			_alpha = (_alpha - (1 / diag_fps) / FADE_DURATION) max 0.0;
			_color set [3, _alpha];
			_descriptor set [2, _color];
		};
	};

	if (_alpha > 0.0) then
	{
		private _v1 = worldToScreen _position;
		if (count _v1 > 0) then
		{
			_v1 set [2, 0];

			private _right = vectorNormalized ((getCameraViewDirection player) vectorCrossProduct [0,0,1]);

			private _v2 = worldToScreen (_position vectorAdd (_right vectorMultiply (_descriptor select 5)));
			if (count _v2 > 0) then
			{
				_v2 set [2, 0];

				private _size = vectorMagnitude (_v1 vectorDiff _v2);
				if ((_descriptor select 1) isEqualType "") then
				{
					drawIcon3D ["", _color, _position, 0.0, 0.0, 0, _descriptor select 1, 1, _size, _descriptor select 6];
				}
				else
				{
					_size = (_size * (getResolution select 3) / safeZoneH) / (_descriptor select 1 select 1);
					drawIcon3D [_descriptor select 1 select 0, _color, _position, _size, _size, 0];
				};
			};
		};
	};
};

HUD_GetMarkerIcons =
{
	params ["_prefix", "_icons"]; // Prefix must be of format "string_string_", e.g. "HUD_Pilot_"

	private _pieces = [];
	private _descriptor = [];
	private _key = "";
	private _color = [];
	private _minDistance = 0;
	private _maxDistance = 0;
	private _sizeInMeters = 0;

	// Marker format "<prefix><name>_<label/icon>_<min-distance>_<max-distance>_<size-in-meters>_<font-family>"
	private _newIcons = allMapMarkers select { _x find "HUD_" == 0 } apply
		{
			_pieces = _x splitString "_";

			if (count _pieces < 3) then
			{
				[]
			}
			else
			{
				_pieces params ["_unused", "_name", "_prefixes", "_key", ["_minDistance", "10", [""]], ["_maxDistance", "100", [""]], ["_sizeInMeters", "2", [""]], ["_font", "PuristaLight", [""]]];

				_prefixes = _prefixes splitString ",";
				if (not (_prefix in _prefixes)) then
				{
					[]
				}
				else
				{
					_icon = [HUD_Icons, _key] call BIS_fnc_getFromPairs;
					if (not isNil "_icon") then { _key = _icon };

					_color = getArray (configFile >> "CfgMarkerColors" >> getMarkerColor _x >> "color");
					_color = _color apply { if (_x isEqualType 0) then { _x } else { [] call compile _x } };

					_minDistance = parseNumber _minDistance;
					_maxDistance = parseNumber _maxDistance;
					_sizeInMeters = parseNumber _sizeInMeters;

					[(getMarkerPos _x) vectorAdd [0, 0, _sizeInMeters / 2], _key, _color, _minDistance, _maxDistance, _sizeInMeters, _font]
				};
			};
		};

	_icons append (_newIcons select { count _x > 0 });
};

///////////////////////////////
//			 BAAC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
///////////////////////////////

// BAACI = BAAC Instructor
// BAACS = BAAC Students

HUD_BAACI_Draw = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_BAACI_Icons;
};

HUD_BAACI_Initialize =
{
	HUD_BAACI_Icons = [];
	["BAACI", HUD_BAACI_Icons] call HUD_GetMarkerIcons;
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 
HUD_BAACS_DRAW = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_BAACS_Icons;
};

HUD_BAACS_Initialize =
{
	HUD_BAACS_Icons = [];
	["BAACS", HUD_BACCS_Icons] call HUD_GetMarkerIcons;
};

///////////////////////////////
//			 AAAC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
/////////////////////////////// 

HUD_AAACI_DRAW = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_AAACI_Icons;
};

HUD_AAACI_Initialize =
{
	HUD_AAACI_Icons = [];
	["AAACI", HUD_AAACI_Icons] call HUD_GetMarkerIcons;
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 

HUD_AAACS_DRAW = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_AAACS_Icons;
};

HUD_AAACS_Initialize =
{
	HUD_AAACI_Icons = [];
	["AAACS", HUD_AAACS_Icons] call HUD_GetMarkerIcons;
};

///////////////////////////////
//			 BAC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
/////////////////////////////// 

HUD_BACI_DRAW = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_BACI_Icons;
};

HUD_BACI_Initialize =
{
	HUD_BACI_Icons = [];
	["BACI", HUD_BACI_Icons] call HUD_GetMarkerIcons;
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 

HUD_BACS_DRAW = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_BACS_Icons;
};

HUD_BACS_Initialize =
{
	HUD_BACS_Icons = [];
	["BACS", HUD_BACS_Icons] call HUD_GetMarkerIcons;
};

///////////////////////////////
//			 JMC			 //
///////////////////////////////

///////////////////////////////
//		   INSTRUCTOR		 //
/////////////////////////////// 

HUD_JMCI_DRAW = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_JMCI_Icons;
};

HUD_JMCI_Initialize =
{
	HUD_JMCI_Icons = [];
	["JMCI", HUD_JMCI_Icons] call HUD_GetMarkerIcons;
};

////////////////////////////
//		   STUDENTS		  //
//////////////////////////// 

HUD_JMCS_DRAW = 
{
	if (not HUD_Enabled) exitWith {};
	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_JMCS_Icons;
};

HUD_JMCS_Initialize =
{
	HUD_JMCS_Icons = [];
	["JMCS", HUD_JMCS_Icons] call HUD_GetMarkerIcons;
};

//END OF FILE