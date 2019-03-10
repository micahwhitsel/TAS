waitUntil {!isNull player};
_unit = _this select 0;

/*			BAC INSTRUCTORS AND STUDENTS			*/

if ((typeOf _unit == "B_Competitor_F") or (typeOf _unit == "B_Soldier_TL_F") or (typeOf _unit == "B_soldier_AR_F") or (typeOf _unit == "B_Soldier_GL_F") or (typeOf _unit == "B_Soldier_F")) then
	{
	/*			EXAMPLE DZ			*/
	/*			MARKERS				*/
		
		_mrk1001 = createMarkerLocal["BAC_XMPL_ELE",getMarkerPos "MRK_BAC_XMPL_ELE"];
		_mrk1001 setMarkerTypeLocal "hd_warning";
		_mrk1001 setMarkerColorLocal "ColorBLACK";
		_mrk1001 setMarkerTextLocal "014m MSL";
		_mrk1001 setMarkerDirLocal 47;
		
		_mrk1002 = createMarkerLocal["BAC_XMPL_ING",getMarkerPos "MRK_BAC_XMPL_ING"];
		_mrk1002 setMarkerTypeLocal "hd_start";
		_mrk1002 setMarkerColorLocal "ColorBLACK";
		_mrk1002 setMarkerTextLocal "Ingress 048°";
		_mrk1002 setMarkerDirLocal 45;
		
		_mrk1003 = createMarkerLocal["BAC_XMPL_EGR",getMarkerPos "MRK_BAC_XMPL_EGR"];
		_mrk1003 setMarkerTypeLocal "hd_end";
		_mrk1003 setMarkerColorLocal "ColorBLACK";
		_mrk1003 setMarkerTextLocal "Egress 095°";
		_mrk1003 setMarkerDirLocal 275;
		
		_mrk1004 = createMarkerLocal["BAC_XMPL_DZRP",getMarkerPos "MRK_BAC_XMPL_DZRP"];
		_mrk1004 setMarkerTypeLocal "hd_join";
		_mrk1004 setMarkerColorLocal "ColorBLACK";
		_mrk1004 setMarkerTextLocal "DZ RP (ATC Tower)";
		
		_mrk1005 = createMarkerLocal["BAC_XMPL_XMPL",getMarkerPos "MRK_BAC_XMPL_XMPL"];
		_mrk1005 setMarkerTypeLocal "mil_triangle";
		_mrk1005 setMarkerColorLocal "ColorBLUE";
		_mrk1005 setMarkerTextLocal "DZ Example";
		
	/*			Boxes				*/
		
		_mrk1101 = createMarkerLocal["BAC_XMPL_BOX",getMarkerPos "MRK_BAC_XMPL_BOX"];
		_mrk1101 setMarkerShapeLocal "rectangle";
		_mrk1101 setMarkerColorLocal "ColorBLUE";
		_mrk1101 setMarkerSizeLocal [600, 100];
		_mrk1101 setMarkerDirLocal 314.086;
		_mrk1101 setMarkerAlphaLocal .20;
		
		_mrk1102 = createMarkerLocal["BAC_XMPL_BORDER_L",getMarkerPos "MRK_BAC_XMPL_BORDER_L"];
		_mrk1102 setMarkerShapeLocal "rectangle";
		_mrk1102 setMarkerColorLocal "ColorBLACK";
		_mrk1102 setMarkerSizeLocal [608, 4];
		_mrk1102 setMarkerDirLocal 314.086;
		
		_mrk1103 = createMarkerLocal["BAC_XMPL_BORDER_R",getMarkerPos "MRK_BAC_XMPL_BORDER_R"];
		_mrk1103 setMarkerShapeLocal "rectangle";
		_mrk1103 setMarkerColorLocal "ColorBLACK";
		_mrk1103 setMarkerSizeLocal [608, 4];
		_mrk1103 setMarkerDirLocal 314.086;
		
		_mrk1104 = createMarkerLocal["BAC_XMPL_RAIL_L",getMarkerPos "MRK_BAC_XMPL_RAIL_L"];
		_mrk1104 setMarkerShapeLocal "rectangle";
		_mrk1104 setMarkerColorLocal "ColorBLACK";
		_mrk1104 setMarkerSizeLocal [1008, 4];
		_mrk1104 setMarkerDirLocal 314.086;
		
		_mrk1105 = createMarkerLocal["BAC_XMPL_RAIL_R",getMarkerPos "MRK_BAC_XMPL_RAIL_R"];
		_mrk1105 setMarkerShapeLocal "rectangle";
		_mrk1105 setMarkerColorLocal "ColorBLACK";
		_mrk1105 setMarkerSizeLocal [1008, 4];
		_mrk1105 setMarkerDirLocal 314.086;
		
		_mrk1106 = createMarkerLocal["BAC_XMPL_RED_1",getMarkerPos "MRK_BAC_XMPL_RED_1"];
		_mrk1106 setMarkerShapeLocal "rectangle";
		_mrk1106 setMarkerColorLocal "ColorRED";
		_mrk1106 setMarkerSizeLocal [4, 108];
		_mrk1106 setMarkerDirLocal 314.086;
		
		_mrk1107 = createMarkerLocal["BAC_XMPL_YLW_1",getMarkerPos "MRK_BAC_XMPL_YLW_1"];
		_mrk1107 setMarkerShapeLocal "rectangle";
		_mrk1107 setMarkerColorLocal "ColorYELLOW";
		_mrk1107 setMarkerSizeLocal [4, 108];
		_mrk1107 setMarkerDirLocal 314.086;
		
		_mrk1108 = createMarkerLocal["BAC_XMPL_GRN_1",getMarkerPos "MRK_BAC_XMPL_GRN_1"];
		_mrk1108 setMarkerShapeLocal "rectangle";
		_mrk1108 setMarkerColorLocal "ColorGREEN";
		_mrk1108 setMarkerSizeLocal [4, 108];
		_mrk1108 setMarkerDirLocal 314.086;
		
		_mrk1109 = createMarkerLocal["BAC_XMPL_GRN_2",getMarkerPos "MRK_BAC_XMPL_GRN_2"];
		_mrk1109 setMarkerShapeLocal "rectangle";
		_mrk1109 setMarkerColorLocal "ColorGREEN";
		_mrk1109 setMarkerSizeLocal [4, 108];
		_mrk1109 setMarkerDirLocal 314.086;
		
		_mrk1110 = createMarkerLocal["BAC_XMPL_GRN_3",getMarkerPos "MRK_BAC_XMPL_GRN_3"];
		_mrk1110 setMarkerShapeLocal "rectangle";
		_mrk1110 setMarkerColorLocal "ColorGREEN";
		_mrk1110 setMarkerSizeLocal [4, 108];
		_mrk1110 setMarkerDirLocal 314.086;
		
		_mrk1111 = createMarkerLocal["BAC_XMPL_RED_2",getMarkerPos "MRK_BAC_XMPL_RED_2"];
		_mrk1111 setMarkerShapeLocal "rectangle";
		_mrk1111 setMarkerColorLocal "ColorRED";
		_mrk1111 setMarkerSizeLocal [4, 108];
		_mrk1111 setMarkerDirLocal 314.086;
		
		_mrk1112 = createMarkerLocal["BAC_XMPL_RED_3",getMarkerPos "MRK_BAC_XMPL_RED_3"];
		_mrk1112 setMarkerShapeLocal "rectangle";
		_mrk1112 setMarkerColorLocal "ColorRED";
		_mrk1112 setMarkerSizeLocal [4, 108];
		_mrk1112 setMarkerDirLocal 314.086;
		
		_mrk1113 = createMarkerLocal["BAC_XMPL_EGR_RAIL",getMarkerPos "MRK_BAC_XMPL_EGR_RAIL"];
		_mrk1113 setMarkerShapeLocal "rectangle";
		_mrk1113 setMarkerColorLocal "ColorBLACK";
		_mrk1113 setMarkerSizeLocal [600, 4];
		_mrk1113 setMarkerDirLocal 5.432;
		
	/*			DZ 1				*/
	/*			MARKERS				*/
		
		_mrk1201 = createMarkerLocal["BAC_DZ1_ELE",getMarkerPos "MRK_BAC_DZ1_ELE"];
		_mrk1201 setMarkerTypeLocal "hd_warning";
		_mrk1201 setMarkerColorLocal "ColorBLACK";
		_mrk1201 setMarkerTextLocal "014m MSL";
		_mrk1201 setMarkerDirLocal 47;
		
		_mrk1202 = createMarkerLocal["BAC_DZ1_ING",getMarkerPos "MRK_BAC_DZ1_ING"];
		_mrk1202 setMarkerTypeLocal "hd_start";
		_mrk1202 setMarkerColorLocal "ColorBLACK";
		_mrk1202 setMarkerTextLocal "Ingress 040°";
		_mrk1202 setMarkerDirLocal 45;
		
		_mrk1203 = createMarkerLocal["BAC_DZ1_EGR",getMarkerPos "MRK_BAC_DZ1_EGR"];
		_mrk1203 setMarkerTypeLocal "hd_end";
		_mrk1203 setMarkerColorLocal "ColorBLACK";
		_mrk1203 setMarkerTextLocal "Egress 090°";
		_mrk1203 setMarkerDirLocal 275;
		
		_mrk1204 = createMarkerLocal["BAC_DZ1_DZRP",getMarkerPos "MRK_BAC_DZ1_DZRP"];
		_mrk1204 setMarkerTypeLocal "hd_join";
		_mrk1204 setMarkerColorLocal "ColorBLACK";
		_mrk1204 setMarkerTextLocal "DZ RP (White House)";
		
		_mrk1205 = createMarkerLocal["BAC_DZ1_XMPL",getMarkerPos "MRK_BAC_DZ1_COLDBLUD"];
		_mrk1205 setMarkerTypeLocal "mil_triangle";
		_mrk1205 setMarkerColorLocal "ColorBLUE";
		_mrk1205 setMarkerTextLocal "DZ COLDBLUD (DZ 1)";
		
		_mrk1206 = createMarkerLocal["BAC_DZ1_X1",getMarkerPos "MRK_BAC_DZ1_X1"];
		_mrk1206 setMarkerTypeLocal "hd_destroy";
		_mrk1206 setMarkerColorLocal "ColorRED";
		
		_mrk1207 = createMarkerLocal["BAC_DZ1_X2",getMarkerPos "MRK_BAC_DZ1_X2"];
		_mrk1207 setMarkerTypeLocal "hd_destroy";
		_mrk1207 setMarkerColorLocal "ColorRED";
		
		_mrk1208 = createMarkerLocal["BAC_DZ1_X3",getMarkerPos "MRK_BAC_DZ1_X3"];
		_mrk1208 setMarkerTypeLocal "hd_destroy";
		_mrk1208 setMarkerColorLocal "ColorRED";
		
		_mrk1209 = createMarkerLocal["BAC_DZ1_X4",getMarkerPos "MRK_BAC_DZ1_X4"];
		_mrk1209 setMarkerTypeLocal "hd_destroy";
		_mrk1209 setMarkerColorLocal "ColorRED";
		
		_mrk1210 = createMarkerLocal["BAC_DZ1_X5",getMarkerPos "MRK_BAC_DZ1_X5"];
		_mrk1210 setMarkerTypeLocal "hd_destroy";
		_mrk1210 setMarkerColorLocal "ColorRED";
		
	/*			Boxes				*/
		
		_mrk1301 = createMarkerLocal["BAC_DZ1_BOX",getMarkerPos "MRK_BAC_DZ1_BOX"];
		_mrk1301 setMarkerShapeLocal "rectangle";
		_mrk1301 setMarkerColorLocal "ColorBLUE";
		_mrk1301 setMarkerSizeLocal [600, 100];
		_mrk1301 setMarkerDirLocal 130.204;
		_mrk1301 setMarkerAlphaLocal .20;
		
		_mrk1302 = createMarkerLocal["BAC_DZ1_BORDER_L",getMarkerPos "MRK_BAC_DZ1_BORDER_L"];
		_mrk1302 setMarkerShapeLocal "rectangle";
		_mrk1302 setMarkerColorLocal "ColorBLACK";
		_mrk1302 setMarkerSizeLocal [608, 4];
		_mrk1302 setMarkerDirLocal 130.204;
		
		_mrk1303 = createMarkerLocal["BAC_DZ1_BORDER_R",getMarkerPos "MRK_BAC_DZ1_BORDER_R"];
		_mrk1303 setMarkerShapeLocal "rectangle";
		_mrk1303 setMarkerColorLocal "ColorBLACK";
		_mrk1303 setMarkerSizeLocal [608, 4];
		_mrk1303 setMarkerDirLocal 130.204;
		
		_mrk1304 = createMarkerLocal["BAC_DZ1_RAIL_L",getMarkerPos "MRK_BAC_DZ1_RAIL_L"];
		_mrk1304 setMarkerShapeLocal "rectangle";
		_mrk1304 setMarkerColorLocal "ColorBLACK";
		_mrk1304 setMarkerSizeLocal [1008, 4];
		_mrk1304 setMarkerDirLocal 130.204;
		
		_mrk1305 = createMarkerLocal["BAC_DZ1_RAIL_R",getMarkerPos "MRK_BAC_DZ1_RAIL_R"];
		_mrk1305 setMarkerShapeLocal "rectangle";
		_mrk1305 setMarkerColorLocal "ColorBLACK";
		_mrk1305 setMarkerSizeLocal [1008, 4];
		_mrk1305 setMarkerDirLocal 130.204;
		
		_mrk1306 = createMarkerLocal["BAC_DZ1_RED_1",getMarkerPos "MRK_BAC_DZ1_RED_1"];
		_mrk1306 setMarkerShapeLocal "rectangle";
		_mrk1306 setMarkerColorLocal "ColorRED";
		_mrk1306 setMarkerSizeLocal [4, 108];
		_mrk1306 setMarkerDirLocal 130.204;
		
		_mrk1307 = createMarkerLocal["BAC_DZ1_YLW_1",getMarkerPos "MRK_BAC_DZ1_YLW_1"];
		_mrk1307 setMarkerShapeLocal "rectangle";
		_mrk1307 setMarkerColorLocal "ColorYELLOW";
		_mrk1307 setMarkerSizeLocal [4, 108];
		_mrk1307 setMarkerDirLocal 130.204;
		
		_mrk1308 = createMarkerLocal["BAC_DZ1_GRN_1",getMarkerPos "MRK_BAC_DZ1_GRN_1"];
		_mrk1308 setMarkerShapeLocal "rectangle";
		_mrk1308 setMarkerColorLocal "ColorGREEN";
		_mrk1308 setMarkerSizeLocal [4, 108];
		_mrk1308 setMarkerDirLocal 130.204;
		
		_mrk1309 = createMarkerLocal["BAC_DZ1_GRN_2",getMarkerPos "MRK_BAC_DZ1_GRN_2"];
		_mrk1309 setMarkerShapeLocal "rectangle";
		_mrk1309 setMarkerColorLocal "ColorGREEN";
		_mrk1309 setMarkerSizeLocal [4, 108];
		_mrk1309 setMarkerDirLocal 130.204;
		
		_mrk1310 = createMarkerLocal["BAC_DZ1_GRN_3",getMarkerPos "MRK_BAC_DZ1_GRN_3"];
		_mrk1310 setMarkerShapeLocal "rectangle";
		_mrk1310 setMarkerColorLocal "ColorGREEN";
		_mrk1310 setMarkerSizeLocal [4, 108];
		_mrk1310 setMarkerDirLocal 130.204;
		
		_mrk1311 = createMarkerLocal["BAC_DZ1_RED_2",getMarkerPos "MRK_BAC_DZ1_RED_2"];
		_mrk1311 setMarkerShapeLocal "rectangle";
		_mrk1311 setMarkerColorLocal "ColorRED";
		_mrk1311 setMarkerSizeLocal [4, 108];
		_mrk1311 setMarkerDirLocal 130.204;
		
		_mrk1312 = createMarkerLocal["BAC_DZ1_RED_3",getMarkerPos "MRK_BAC_DZ1_RED_3"];
		_mrk1312 setMarkerShapeLocal "rectangle";
		_mrk1312 setMarkerColorLocal "ColorRED";
		_mrk1312 setMarkerSizeLocal [4, 108];
		_mrk1312 setMarkerDirLocal 130.204;
		
		_mrk1313 = createMarkerLocal["BAC_DZ1_EGR_RAIL",getMarkerPos "MRK_BAC_DZ1_EGR_RAIL"];
		_mrk1313 setMarkerShapeLocal "rectangle";
		_mrk1313 setMarkerColorLocal "ColorBLACK";
		_mrk1313 setMarkerSizeLocal [600, 4];
		_mrk1313 setMarkerDirLocal 0;
		
	/*			DZ 2				*/
	/*			MARKERS				*/
		
		_mrk1401 = createMarkerLocal["BAC_DZ2_ELE",getMarkerPos "MRK_BAC_DZ2_ELE"];
		_mrk1401 setMarkerTypeLocal "hd_warning";
		_mrk1401 setMarkerColorLocal "ColorBLACK";
		_mrk1401 setMarkerTextLocal "040m MSL";
		_mrk1401 setMarkerDirLocal 240;
		
		_mrk1402 = createMarkerLocal["BAC_DZ2_ING",getMarkerPos "MRK_BAC_DZ2_ING"];
		_mrk1402 setMarkerTypeLocal "hd_start";
		_mrk1402 setMarkerColorLocal "ColorBLACK";
		_mrk1402 setMarkerTextLocal "Ingress 239°";
		_mrk1402 setMarkerDirLocal 238;
		
		_mrk1403 = createMarkerLocal["BAC_DZ2_EGR",getMarkerPos "MRK_BAC_DZ2_EGR"];
		_mrk1403 setMarkerTypeLocal "hd_end";
		_mrk1403 setMarkerColorLocal "ColorBLACK";
		_mrk1403 setMarkerTextLocal "Egress 206°";
		_mrk1403 setMarkerDirLocal 30;
		
		_mrk1404 = createMarkerLocal["BAC_DZ2_DZRP",getMarkerPos "MRK_BAC_DZ2_DZRP"];
		_mrk1404 setMarkerTypeLocal "hd_join";
		_mrk1404 setMarkerColorLocal "ColorBLACK";
		_mrk1404 setMarkerTextLocal "DZ RP (Small House)";
		
		_mrk1405 = createMarkerLocal["BAC_DZ2_XMPL",getMarkerPos "MRK_BAC_DZ2_KRAZEE"];
		_mrk1405 setMarkerTypeLocal "mil_triangle";
		_mrk1405 setMarkerColorLocal "ColorBLUE";
		_mrk1405 setMarkerTextLocal "DZ KRAZEE (DZ 2)";
		
		_mrk1406 = createMarkerLocal["BAC_DZ2_X1",getMarkerPos "MRK_BAC_DZ2_X1"];
		_mrk1406 setMarkerTypeLocal "hd_destroy";
		_mrk1406 setMarkerColorLocal "ColorRED";
		
		_mrk1407 = createMarkerLocal["BAC_DZ2_X2",getMarkerPos "MRK_BAC_DZ2_X2"];
		_mrk1407 setMarkerTypeLocal "hd_destroy";
		_mrk1407 setMarkerColorLocal "ColorRED";
		
		_mrk1408 = createMarkerLocal["BAC_DZ2_X3",getMarkerPos "MRK_BAC_DZ2_X3"];
		_mrk1408 setMarkerTypeLocal "hd_destroy";
		_mrk1408 setMarkerColorLocal "ColorRED";
		
		_mrk1409 = createMarkerLocal["BAC_DZ2_X4",getMarkerPos "MRK_BAC_DZ2_X4"];
		_mrk1409 setMarkerTypeLocal "hd_destroy";
		_mrk1409 setMarkerColorLocal "ColorRED";
		
		_mrk1410 = createMarkerLocal["BAC_DZ2_X5",getMarkerPos "MRK_BAC_DZ2_X5"];
		_mrk1410 setMarkerTypeLocal "hd_destroy";
		_mrk1410 setMarkerColorLocal "ColorRED";
		
		_mrk1411 = createMarkerLocal["BAC_DZ2_X6",getMarkerPos "MRK_BAC_DZ2_X6"];
		_mrk1411 setMarkerTypeLocal "hd_destroy";
		_mrk1411 setMarkerColorLocal "ColorRED";
		
	/*			Boxes				*/
		
		_mrk1501 = createMarkerLocal["BAC_DZ2_BOX",getMarkerPos "MRK_BAC_DZ2_BOX"];
		_mrk1501 setMarkerShapeLocal "rectangle";
		_mrk1501 setMarkerColorLocal "ColorBLUE";
		_mrk1501 setMarkerSizeLocal [600, 100];
		_mrk1501 setMarkerDirLocal 318.466;
		_mrk1501 setMarkerAlphaLocal .20;
		
		_mrk1502 = createMarkerLocal["BAC_DZ2_BORDER_L",getMarkerPos "MRK_BAC_DZ2_BORDER_L"];
		_mrk1502 setMarkerShapeLocal "rectangle";
		_mrk1502 setMarkerColorLocal "ColorBLACK";
		_mrk1502 setMarkerSizeLocal [608, 4];
		_mrk1502 setMarkerDirLocal 318.466;
		
		_mrk1503 = createMarkerLocal["BAC_DZ2_BORDER_R",getMarkerPos "MRK_BAC_DZ2_BORDER_R"];
		_mrk1503 setMarkerShapeLocal "rectangle";
		_mrk1503 setMarkerColorLocal "ColorBLACK";
		_mrk1503 setMarkerSizeLocal [608, 4];
		_mrk1503 setMarkerDirLocal 318.466;
		
		_mrk1504 = createMarkerLocal["BAC_DZ2_RAIL_L",getMarkerPos "MRK_BAC_DZ2_RAIL_L"];
		_mrk1504 setMarkerShapeLocal "rectangle";
		_mrk1504 setMarkerColorLocal "ColorBLACK";
		_mrk1504 setMarkerSizeLocal [1008, 4];
		_mrk1504 setMarkerDirLocal 318.466;
		
		_mrk1505 = createMarkerLocal["BAC_DZ2_RAIL_R",getMarkerPos "MRK_BAC_DZ2_RAIL_R"];
		_mrk1505 setMarkerShapeLocal "rectangle";
		_mrk1505 setMarkerColorLocal "ColorBLACK";
		_mrk1505 setMarkerSizeLocal [1008, 4];
		_mrk1505 setMarkerDirLocal 318.466;
		
		_mrk1506 = createMarkerLocal["BAC_DZ2_RED_1",getMarkerPos "MRK_BAC_DZ2_RED_1"];
		_mrk1506 setMarkerShapeLocal "rectangle";
		_mrk1506 setMarkerColorLocal "ColorRED";
		_mrk1506 setMarkerSizeLocal [4, 108];
		_mrk1506 setMarkerDirLocal 318.466;
		
		_mrk1507 = createMarkerLocal["BAC_DZ2_YLW_1",getMarkerPos "MRK_BAC_DZ2_YLW_1"];
		_mrk1507 setMarkerShapeLocal "rectangle";
		_mrk1507 setMarkerColorLocal "ColorYELLOW";
		_mrk1507 setMarkerSizeLocal [4, 108];
		_mrk1507 setMarkerDirLocal 318.466;
		
		_mrk1508 = createMarkerLocal["BAC_DZ2_GRN_1",getMarkerPos "MRK_BAC_DZ2_GRN_1"];
		_mrk1508 setMarkerShapeLocal "rectangle";
		_mrk1508 setMarkerColorLocal "ColorGREEN";
		_mrk1508 setMarkerSizeLocal [4, 108];
		_mrk1508 setMarkerDirLocal 318.466;
		
		_mrk1509 = createMarkerLocal["BAC_DZ2_GRN_2",getMarkerPos "MRK_BAC_DZ2_GRN_2"];
		_mrk1509 setMarkerShapeLocal "rectangle";
		_mrk1509 setMarkerColorLocal "ColorGREEN";
		_mrk1509 setMarkerSizeLocal [4, 108];
		_mrk1509 setMarkerDirLocal 318.466;
		
		_mrk1510 = createMarkerLocal["BAC_DZ2_GRN_3",getMarkerPos "MRK_BAC_DZ2_GRN_3"];
		_mrk1510 setMarkerShapeLocal "rectangle";
		_mrk1510 setMarkerColorLocal "ColorGREEN";
		_mrk1510 setMarkerSizeLocal [4, 108];
		_mrk1510 setMarkerDirLocal 318.466;
		
		_mrk1511 = createMarkerLocal["BAC_DZ2_RED_2",getMarkerPos "MRK_BAC_DZ2_RED_2"];
		_mrk1511 setMarkerShapeLocal "rectangle";
		_mrk1511 setMarkerColorLocal "ColorRED";
		_mrk1511 setMarkerSizeLocal [4, 108];
		_mrk1511 setMarkerDirLocal 318.466;
		
		_mrk1512 = createMarkerLocal["BAC_DZ2_RED_3",getMarkerPos "MRK_BAC_DZ2_RED_3"];
		_mrk1512 setMarkerShapeLocal "rectangle";
		_mrk1512 setMarkerColorLocal "ColorRED";
		_mrk1512 setMarkerSizeLocal [4, 108];
		_mrk1512 setMarkerDirLocal 318.466;
		
		_mrk1513 = createMarkerLocal["BAC_DZ2_EGR_RAIL",getMarkerPos "MRK_BAC_DZ2_EGR_RAIL"];
		_mrk1513 setMarkerShapeLocal "rectangle";
		_mrk1513 setMarkerColorLocal "ColorBLACK";
		_mrk1513 setMarkerSizeLocal [4, 600];
		_mrk1513 setMarkerDirLocal 206;
		
	/*			DZ 3				*/
	/*			MARKERS				*/
		
		_mrk1601 = createMarkerLocal["BAC_DZ3_ELE",getMarkerPos "MRK_BAC_DZ3_ELE"];
		_mrk1601 setMarkerTypeLocal "hd_warning";
		_mrk1601 setMarkerColorLocal "ColorBLACK";
		_mrk1601 setMarkerTextLocal "014m MSL";
		_mrk1601 setMarkerDirLocal 47;
		
		_mrk1602 = createMarkerLocal["BAC_DZ3_ING",getMarkerPos "MRK_BAC_DZ3_ING"];
		_mrk1602 setMarkerTypeLocal "hd_start";
		_mrk1602 setMarkerColorLocal "ColorBLACK";
		_mrk1602 setMarkerTextLocal "Ingress 048°";
		_mrk1602 setMarkerDirLocal 45;
		
		_mrk1603 = createMarkerLocal["BAC_DZ3_EGR",getMarkerPos "MRK_BAC_DZ3_EGR"];
		_mrk1603 setMarkerTypeLocal "hd_end";
		_mrk1603 setMarkerColorLocal "ColorBLACK";
		_mrk1603 setMarkerTextLocal "Egress 090°";
		_mrk1603 setMarkerDirLocal 277;
		
		_mrk1604 = createMarkerLocal["BAC_DZ3_DZRP",getMarkerPos "MRK_BAC_DZ3_DZRP"];
		_mrk1604 setMarkerTypeLocal "hd_join";
		_mrk1604 setMarkerColorLocal "ColorBLACK";
		_mrk1604 setMarkerTextLocal "DZ RP (Ruined House)";
		
		_mrk1605 = createMarkerLocal["BAC_DZ3_XMPL",getMarkerPos "MRK_BAC_DZ3_NOVAK"];
		_mrk1605 setMarkerTypeLocal "mil_triangle";
		_mrk1605 setMarkerColorLocal "ColorBLUE";
		_mrk1605 setMarkerTextLocal "DZ NOVAK (DZ 2)";
		
		_mrk1606 = createMarkerLocal["BAC_DZ3_X1",getMarkerPos "MRK_BAC_DZ3_X1"];
		_mrk1606 setMarkerTypeLocal "hd_destroy";
		_mrk1606 setMarkerColorLocal "ColorRED";
		
		_mrk1607 = createMarkerLocal["BAC_DZ3_X2",getMarkerPos "MRK_BAC_DZ3_X2"];
		_mrk1607 setMarkerTypeLocal "hd_destroy";
		_mrk1607 setMarkerColorLocal "ColorRED";
		
		_mrk1608 = createMarkerLocal["BAC_DZ3_X3",getMarkerPos "MRK_BAC_DZ3_X3"];
		_mrk1608 setMarkerTypeLocal "hd_destroy";
		_mrk1608 setMarkerColorLocal "ColorRED";
		
		_mrk1609 = createMarkerLocal["BAC_DZ3_X4",getMarkerPos "MRK_BAC_DZ3_X4"];
		_mrk1609 setMarkerTypeLocal "hd_destroy";
		_mrk1609 setMarkerColorLocal "ColorRED";
		
		_mrk1610 = createMarkerLocal["BAC_DZ3_X5",getMarkerPos "MRK_BAC_DZ3_X5"];
		_mrk1610 setMarkerTypeLocal "hd_destroy";
		_mrk1610 setMarkerColorLocal "ColorRED";
		
		_mrk1611 = createMarkerLocal["BAC_DZ3_X6",getMarkerPos "MRK_BAC_DZ3_X6"];
		_mrk1611 setMarkerTypeLocal "hd_destroy";
		_mrk1611 setMarkerColorLocal "ColorRED";
		
		_mrk1612 = createMarkerLocal["BAC_DZ3_X5",getMarkerPos "MRK_BAC_DZ3_X7"];
		_mrk1612 setMarkerTypeLocal "hd_destroy";
		_mrk1612 setMarkerColorLocal "ColorRED";
		
		_mrk1613 = createMarkerLocal["BAC_DZ3_X6",getMarkerPos "MRK_BAC_DZ3_X8"];
		_mrk1613 setMarkerTypeLocal "hd_destroy";
		_mrk1613 setMarkerColorLocal "ColorRED";
		
		_mrk1613 = createMarkerLocal["BAC_DZ3_X6",getMarkerPos "MRK_BAC_DZ3_OBJ"];
		_mrk1613 setMarkerTypeLocal "hd_objective";
		_mrk1613 setMarkerColorLocal "ColorBLACK";
		_mrk1603 setMarkerTextLocal "Raid";
		
	/*			Boxes				*/
		
		_mrk1701 = createMarkerLocal["BAC_DZ3_BOX",getMarkerPos "MRK_BAC_DZ3_BOX"];
		_mrk1701 setMarkerShapeLocal "rectangle";
		_mrk1701 setMarkerColorLocal "ColorBLUE";
		_mrk1701 setMarkerSizeLocal [600, 100];
		_mrk1701 setMarkerDirLocal 318.466;
		_mrk1701 setMarkerAlphaLocal .20;
		
		_mrk1702 = createMarkerLocal["BAC_DZ3_BORDER_L",getMarkerPos "MRK_BAC_DZ3_BORDER_L"];
		_mrk1702 setMarkerShapeLocal "rectangle";
		_mrk1702 setMarkerColorLocal "ColorBLACK";
		_mrk1702 setMarkerSizeLocal [608, 4];
		_mrk1702 setMarkerDirLocal 318.466;
		
		_mrk1703 = createMarkerLocal["BAC_DZ3_BORDER_R",getMarkerPos "MRK_BAC_DZ3_BORDER_R"];
		_mrk1703 setMarkerShapeLocal "rectangle";
		_mrk1703 setMarkerColorLocal "ColorBLACK";
		_mrk1703 setMarkerSizeLocal [608, 4];
		_mrk1703 setMarkerDirLocal 318.466;
		
		_mrk1704 = createMarkerLocal["BAC_DZ3_RAIL_L",getMarkerPos "MRK_BAC_DZ3_RAIL_L"];
		_mrk1704 setMarkerShapeLocal "rectangle";
		_mrk1704 setMarkerColorLocal "ColorBLACK";
		_mrk1704 setMarkerSizeLocal [1008, 4];
		_mrk1704 setMarkerDirLocal 318.466;
		
		_mrk1705 = createMarkerLocal["BAC_DZ3_RAIL_R",getMarkerPos "MRK_BAC_DZ3_RAIL_R"];
		_mrk1705 setMarkerShapeLocal "rectangle";
		_mrk1705 setMarkerColorLocal "ColorBLACK";
		_mrk1705 setMarkerSizeLocal [1008, 4];
		_mrk1705 setMarkerDirLocal 318.466;
		
		_mrk1706 = createMarkerLocal["BAC_DZ3_RED_1",getMarkerPos "MRK_BAC_DZ3_RED_1"];
		_mrk1706 setMarkerShapeLocal "rectangle";
		_mrk1706 setMarkerColorLocal "ColorRED";
		_mrk1706 setMarkerSizeLocal [4, 108];
		_mrk1706 setMarkerDirLocal 318.466;
		
		_mrk1707 = createMarkerLocal["BAC_DZ3_YLW_1",getMarkerPos "MRK_BAC_DZ3_YLW_1"];
		_mrk1707 setMarkerShapeLocal "rectangle";
		_mrk1707 setMarkerColorLocal "ColorYELLOW";
		_mrk1707 setMarkerSizeLocal [4, 108];
		_mrk1707 setMarkerDirLocal 318.466;
		
		_mrk1708 = createMarkerLocal["BAC_DZ3_GRN_1",getMarkerPos "MRK_BAC_DZ3_GRN_1"];
		_mrk1708 setMarkerShapeLocal "rectangle";
		_mrk1708 setMarkerColorLocal "ColorGREEN";
		_mrk1708 setMarkerSizeLocal [4, 108];
		_mrk1708 setMarkerDirLocal 318.466;
		
		_mrk1709 = createMarkerLocal["BAC_DZ3_GRN_2",getMarkerPos "MRK_BAC_DZ3_GRN_2"];
		_mrk1709 setMarkerShapeLocal "rectangle";
		_mrk1709 setMarkerColorLocal "ColorGREEN";
		_mrk1709 setMarkerSizeLocal [4, 108];
		_mrk1709 setMarkerDirLocal 318.466;
		
		_mrk1710 = createMarkerLocal["BAC_DZ3_GRN_3",getMarkerPos "MRK_BAC_DZ3_GRN_3"];
		_mrk1710 setMarkerShapeLocal "rectangle";
		_mrk1710 setMarkerColorLocal "ColorGREEN";
		_mrk1710 setMarkerSizeLocal [4, 108];
		_mrk1710 setMarkerDirLocal 318.466;
		
		_mrk1711 = createMarkerLocal["BAC_DZ3_RED_2",getMarkerPos "MRK_BAC_DZ3_RED_2"];
		_mrk1711 setMarkerShapeLocal "rectangle";
		_mrk1711 setMarkerColorLocal "ColorRED";
		_mrk1711 setMarkerSizeLocal [4, 108];
		_mrk1711 setMarkerDirLocal 318.466;
		
		_mrk1712 = createMarkerLocal["BAC_DZ3_RED_3",getMarkerPos "MRK_BAC_DZ3_RED_3"];
		_mrk1712 setMarkerShapeLocal "rectangle";
		_mrk1712 setMarkerColorLocal "ColorRED";
		_mrk1712 setMarkerSizeLocal [4, 108];
		_mrk1712 setMarkerDirLocal 318.466;
		
		_mrk1713 = createMarkerLocal["BAC_DZ3_EGR_RAIL",getMarkerPos "MRK_BAC_DZ3_EGR_RAIL"];
		_mrk1713 setMarkerShapeLocal "rectangle";
		_mrk1713 setMarkerColorLocal "ColorBLACK";
		_mrk1713 setMarkerSizeLocal [600, 4];
		_mrk1713 setMarkerDirLocal 0;
		
	};