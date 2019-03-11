if (_state == "init") then
{
	switch (true) do {
		case (roleDescription player == "") :
		{
			[] call HUD_AAACI_Initialize;
		};
		case (roleDescription player == "") :
		{
			[] call HUD_BAACI_Initialize;
		};
	};
};