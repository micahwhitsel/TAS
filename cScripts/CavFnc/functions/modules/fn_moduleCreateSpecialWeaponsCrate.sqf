#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function spawn a special weapons crate.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleCreateSupplyCrate
 *
 * Public: No
 */

params ["_crate"];

private _dialogResult = [
    "7th Cavalry Crew-Served Weapons Crate",
    [
        ["Crate Content",["Mortar","M2 50 CAL","Mk19","TOW","All"],2],
        ["Supply Size","SLIDER",1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _cargoType = switch (_dialogResult select 0) do {
    case 0: {"mortar";};
    case 1: {"m2";};
    case 2: {"mk19";};
    case 3: {"tow";};
    case 4: {"All";};
};

private _cargoSize = _dialogResult select 1;

private _crate = "B_CargoNet_01_ammo_F" createVehicle _crate;
[_crate,_cargoType,_cargoSize] remoteExec [QFUNC(doSpecialWeaponsCrate),0,true];
[_crate] remoteExec [QFUNC(addObjectToCurator), 2];
