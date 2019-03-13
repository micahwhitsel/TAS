private _state = param [0, "", [""]];
if (_state == "init") then
{
	[] call HUD_BACI_Initialize;
};

if (_state == "respawn") then 
{
	nil;
};