-- ====================== �ļ���Ϣ ======================

-- ������ԵonlineII ��������������봥������������
-- By StarryNight
-- 2007/06/06 AM 10:43

-- �Ҹ�������������һ��������������Ҹ��Ĺ�ͷ��ȴ���Ѹ��ࡣ

-- ======================================================

--�����������񿪹�
--1:�� 0:��
XBTaskSwitch = 1;

--������ر���
TASK_XB_ID 	 		= 2030;					-- �������������
TASK_XB_ID_01		= 2031;					-- �����������֧1����
TASK_XB_ID_02		= 2032;					-- �����������֧2����

YUANFEIYUN_MAP_DATA_ID 				= 2033;	-- NpcԬ���Ƶص�ID
YUANFEIYUN_NPCINDEX						= 2034;		-- NpcԬ����npcindex
DUANBI_DEAD_STATE 						= 2033;	--Npc�ϱ�����״̬��1Ϊ�Ѿ�����
CANTUI_DEAD_STATE 						= 2034;	--Npc��������״̬��1Ϊ�Ѿ�����
KONGSHOU25_STATE 							= 2033;	--���ֱ���ٸ����״̬��1Ϊ�Ѿ�����
CHINU25_STATE 								= 2034;	--�������ٸ����״̬��1Ϊ�Ѿ�����
TASK_BINGMAYONGTONGLING_TIME  = 2035;--���ܱ���ٸͳ������ʱ��
FENGSHUIXUE_ID 								= 2033;--��ǰ��ˮѨindex
FENGSHUIXUE_STATE 						= 2034;--�Ѿ��ݻٷ�ˮѨ����
CREAT_ZHENMUSHOU_TIME 				= 2035;--ˢ����Ĺ��ʱ��
ZHENMUJIANGJUN_STATE 					= 2035;--����һ����λ������¼4����Ĺ����ɱ����� 1234�ŷֱ��Ӧ��������4����Ĺ������1Ϊ�Ѿ������0Ϊ��δ���
CREAT_GUIJIANGJUN_TIME 				= 2035;--ˢ�¹�����ʱ��
KILL_YAORENBOSS_NUM 					= 2033;	--��¼ɱ��ҩ����������
CREAT_YAOWANG_TIME 						= 2033;--ˢ��ҩ��ʱ��
CREAT_SHASHOUWAWA_TIME 				= 2033;--ˢ��ɱ������ʱ��
CREAT_WUXINGSHI_TIME 					= 2033;--ˢ������ʹʱ��
WUXINGSHI_STATE 							= 2035;--����һ����λ������¼5������ʹɱ����� 12345�ŷֱ��Ӧ��ľˮ����5������ʹ��1Ϊ�Ѿ������0Ϊ��δ���
HUANGXIANG_CURSE_ID 					= 2035;--��¼��ӡ���������ID
CREAT_HUANGXIANG_TIME 				= 2034;--ˢ�»���ʱ��
CREAT_YUANHUNZHIWANG_TIME 		= 2036;--�ٻ�Թ��֮��ʱ��
KULOUWANG_CURSE_ID 						= 2036;--��¼����������ID
CREAT_GUYANGSHOU_TIME					= 2036;--�ٻ�������ʱ��
CREAT_XUEMOREN_TIME 					= 2036;--�ٻ�Ѫħ��ʱ��                                                             							= 2037;--��������
TASK_GET_AWARD 								= 2037;--��¼��ȡ�����ɹ����ı�־��1��ʾ�ɹ���0��ʾʧ��
GIVE_TICKET_STATE							= 2038;--��¼������Ʊ�����1~6λ�ֱ��¼1~6����Ʊ���������1Ϊ�����ͣ�0Ϊδ����

--��������
TALK_XB_BAIXIAOSHENG		  	=	2120;		-- ����������01���İ�ӿ ������ �Ի�������
KILL_XB_BOSIYAOJI   	    	= 2121;		-- ����������01���İ�ӿ ��˹���� ����������
KILL_XB_XIYUHANFU		 	    	= 2122;		-- ����������01���İ�ӿ ���򺷸� ����������
KILL_XB_YIPINTANGMISHI    	= 2123;		-- ����������01���İ�ӿ һƷ����ʹ ����������
KILL_XB_XIBEIZHUANGHAN    	= 2124;		-- ����������02��ջ��� ����׳�� ����������
KILL_XB_GUANWAIGAOSHOU    	= 2125;		-- ����������04�б����� ������� ����������
RECT_XB_YUANFEIYUN        	= 2126;		-- ����������05�²ְ��� Ԭ���� ��ͼ������
KILL_XB_ANRISHI 				  	= 2127;		-- ����������06������ ����ʹ ����������
KILL_XB_MINGYUESHI 			  	= 2128;		-- ����������06������ ����ʹ ����������
KILL_XB_XIBEIYANHAN 		  	= 2129;		-- ����������09������ʹ �����̺� ����������
KILL_XB_MINGJIAOJIANXI    	= 2130;		-- ����������10δ����� ���̼�ϸ ����������
KILL_XB_MINGJIAOPANTU     	= 2131;		-- ����������10δ����� ������ͽ ����������
KILL_XB_YIPINTANGANSHASHI 	= 2132;		-- ����������11����֮Ĺ һƷ�ð�ɱʹ ����������
KILL_XB_DAOMUREN 						= 2133;		-- ����������12�ϱ۲��� ��Ĺ�� ����������
KILL_XB_KONGSHOUBINGMAYONG  = 2134;		-- ����������13������Ĺ ���ֱ���ٸ ����������
KILL_XB_CHINUBINGMAYONG 		= 2135;		-- ����������13������Ĺ �������ٸ ����������
KILL_XB_XIXIAWUSHI				  = 2136;		-- ����������14��Ĺ֮�� ������ʿ ����������
KILL_XB_XIXIAYONGSHI 				= 2137;		-- ����������14��Ĺ֮�� ������ʿ ����������
KILL_XB_YAOREN 							= 2138;		-- ����������16ҩ�˾��� ҩ�� ����������
KILL_XB_QIANNIANSHUREN 			= 2139;		-- ����������17����֮�� ǧ������ ����������
KILL_XB_SHAMOXINGZHE 				= 2140;		-- ����������18�ƺ����� ɳĮ���� ����������
KILL_XB_XUNBAOREN 					= 2141;		-- ����������20������թ Ѱ���� ����������
TALK_XB_OUYANGHUA						=	2142;		-- ����������09����ԩ��ŷ���� �Ի�������
KILL_XB_LIEYANCHILONG 			= 2143;		-- ����������27�������� ������� ����������
KILL_XB_CHILIANHUOHU 				= 2144;		-- ����������27�������� ������� ����������


--�������Ϣ��Ԭ�������꣩
--��ʽ����ͼ���ƣ���ͼID����������X����������Y��С��ͼ����X��С��ͼ����Y����Ӧ��ͼ������ID
Map_Data = {
	[1] = {"B�c Ph�ng T��ng",504,1309,3066,163,191,101},
	[2] = {"B�c Ph�ng T��ng",504,1283,2921,160,182,101},
	[3] = {"B�c Ph�ng T��ng",504,1378,2843,172,177,101},
	[4] = {"B�c Ph�ng T��ng",504,1409,2917,176,182,101},
	[5] = {"B�c Ph�ng T��ng",504,1530,2925,191,182,101},
	[6] = {"B�c Ph�ng T��ng",504,1582,3009,197,188,101},
	[7] = {"B�c Ph�ng T��ng",504,1482,3032,185,189,101},
	[8] = {"B�c Ph�ng T��ng",504,1383,3141,172,196,101},
	[9] = {"B�c Ph�ng T��ng",504,1426,2819,178,176,101},
	[10] = {"B�c Ph�ng T��ng",504,1578,2867,197,179,101},
	[11] = {"B�c Ph�ng T��ng",504,1456,2936,182,183,101},
	[12] = {"B�c Ph�ng T��ng",504,1405,3124,175,195,101},
	[13] = {"B�c Ph�ng T��ng",504,1495,3184,186,198,101},
	[14] = {"B�c Ph�ng T��ng",504,1534,3145,191,196,101},
	[15] = {"B�c Ph�ng T��ng",504,1433,3022,179,188,101},
	[16] = {"B�c Ph�ng T��ng",504,1511,2886,188,180,101},
	[17] = {"B�c Ph�ng T��ng",504,1361,2972,170,185,101},
	[18] = {"B�c Ph�ng T��ng",504,1317,2816,164,175,101},
	[19] = {"B�c Ph�ng T��ng",504,1323,3049,165,190,101},
	[20] = {"B�c Ph�ng T��ng",504,1580,3115,197,194,101},
	[21] = {"Nam Ph�ng T��ng",501,1495,2843,186,177,100},
	[22] = {"Nam Ph�ng T��ng",501,1424,2851,178,178,100},
	[23] = {"Nam Ph�ng T��ng",501,1370,2838,171,177,100},
	[24] = {"Nam Ph�ng T��ng",501,1296,2832,162,176,100},
	[25] = {"Nam Ph�ng T��ng",501,1310,2917,163,182,100},
	[26] = {"Nam Ph�ng T��ng",501,1298,3103,162,193,100},
	[27] = {"Nam Ph�ng T��ng",501,1320,2999,165,187,100},
	[28] = {"Nam Ph�ng T��ng",501,1356,3173,169,198,100},
	[29] = {"Nam Ph�ng T��ng",501,1404,3090,175,193,100},
	[30] = {"Nam Ph�ng T��ng",501,1545,3136,193,195,100},
	[31] = {"Nam Ph�ng T��ng",501,1566,2889,195,180,100},
	[32] = {"Nam Ph�ng T��ng",501,1575,3050,196,190,100},
	[33] = {"Nam Ph�ng T��ng",501,1537,2961,192,185,100},
	[34] = {"Nam Ph�ng T��ng",501,1414,2972,176,185,100},
	[35] = {"Nam Ph�ng T��ng",501,1470,2968,183,185,100},
	[36] = {"Nam Ph�ng T��ng",501,1485,3066,185,191,100},
	[37] = {"Nam Ph�ng T��ng",501,1341,3023,167,188,100},
	[38] = {"Nam Ph�ng T��ng",501,1375,2959,171,184,100},
	[39] = {"Nam Ph�ng T��ng",501,1452,3012,181,188,100},
	[40] = {"Nam Ph�ng T��ng",501,1539,2845,192,177,100},	
	[41] = {"Long M�n tr�n",507,1579,3495,197,218,102},
	[42] = {"Long M�n tr�n",507,1579,3397,197,212,102},
	[43] = {"Long M�n tr�n",507,1553,3265,194,203,102},
	[44] = {"Long M�n tr�n",507,1595,3200,199,199,102},
	[45] = {"Long M�n tr�n",507,1642,3212,205,200,102},
	[46] = {"Long M�n tr�n",507,1713,3185,214,198,102},
	[47] = {"Long M�n tr�n",507,1809,3281,226,205,102},
	[48] = {"Long M�n tr�n",507,1777,3361,222,209,102},
	[49] = {"Long M�n tr�n",507,1859,3210,232,200,102},
	[50] = {"Long M�n tr�n",507,1888,3361,236,209,102},
	[51] = {"Long M�n tr�n",507,1829,3435,228,214,102},
	[52] = {"Long M�n tr�n",507,1755,3457,219,215,102},
	[53] = {"Long M�n tr�n",507,1662,3455,207,215,102},
	[54] = {"Long M�n tr�n",507,1610,3285,201,205,102},
	[55] = {"Long M�n tr�n",507,1605,3399,200,212,102},
	[56] = {"Long M�n tr�n",507,1833,3391,229,211,102},
	[57] = {"Long M�n tr�n",507,1845,3314,230,207,102},
	[58] = {"Long M�n tr�n",507,1735,3311,216,206,102},
	[59] = {"Long M�n tr�n",507,1678,3363,209,210,102},
	[60] = {"Long M�n tr�n",507,1755,3264,219,203,102},

}

--����ٸͳ���ڻ���Ĺһ��ˢ�µ�
--��������X����������Y��С��ͼ����X��С��ͼ����Y
BingMaYongTongLing_MapData = {
	[1] = {1698,2916,212,182},
	[2] = {1805,2935,225,183},
	[3] = {1824,2985,228,186},
	[4] = {1759,2986,219,186},
	[5] = {1750,3061,218,191},
	[6] = {1701,3105,212,193},
	[7] = {1678,2995,209,187},
	[8] = {1603,2989,200,186},
	[9] = {1644,2975,205,185},
	[10]= {1548,2871,193,179},
	[11]= {1557,2929,194,183},
	[12]= {1618,2825,202,176},
	[13]= {1674,2790,209,174},
	[14]= {1547,2869,193,179},
	[15]= {1473,2952,184,184},
	[16]= {1440,3016,180,188},
	[17]= {1504,3088,188,192},
	[18]= {1571,3057,196,190},
	[19]= {1638,3141,204,196},
	[20]= {1603,3197,200,199},
}

Fengshuixue_MapData = BingMaYongTongLing_MapData;
Zhenmushou_MapData = BingMaYongTongLing_MapData;

--�������ڻ���Ĺ����ˢ�µ�
--��������X����������Y��С��ͼ����X��С��ͼ����Y
GuiJiangJun_MapData = {
	[1] = {1571,3047,196,190},
	[2] = {1578,3104,197,193},
	[3] = {1597,3182,199,198},
	[4] = {1650,3157,206,197},
	[5] = {1675,3080,209,192},
	[6] = {1718,3069,214,191},
	[7] = {1750,3052,218,190},
	[8] = {1678,2981,209,186},
	[9] = {1617,3009,202,187},
	[10]= {1684,2906,210,181},
	[11]= {1758,2907,219,181},
	[12]= {1801,2937,225,183},
	[13]= {1793,3013,224,188},
	[14]= {1590,2902,198,181},
	[15]= {1526,2908,190,181},
	[16]= {1564,2860,195,178},
	[17]= {1679,2800,209,174},
	[18]= {1624,2789,203,174},
	[19]= {1509,2981,188,186},
	[20]= {1442,3018,180,188},
}

--ҩ����ҩ����ˢ�µ�
--��������X����������Y��С��ͼ����X��С��ͼ����Y
YaoWang_MapData = {

	[1] = {1585,2854,198,178},
	[2] = {1566,2880,195,179},
	[3] = {1557,2925,194,182},
	[4] = {1519,2877,189,179},
	[5] = {1507,2832,188,176},
	[6] = {1503,2787,187,174},
	[7] = {1536,2767,192,172},
	[8] = {1534,2821,191,176},
	[9] = {1476,2925,183,182},
	[10] = {1426,2914,176,182},
	[11] = {1469,2852,183,178},
	[12] = {1442,2764,180,172},
	[13] = {1414,2813,176,175},
	[14] = {1379,2856,172,178},
	[15] = {1344,2833,167,177},
	[16] = {1378,2785,172,174},
	[17] = {1288,2922,161,182},
	[18] = {1370,2923,171,182},
	[19] = {1322,2995,165,187},
	[20] = {1290,3057,161,191},
	[21] = {1332,3089,166,193},
	[22] = {1304,3168,163,197},
	[23] = {1574,2999,196,187},
	[24] = {1549,3042,193,190},
	[25] = {1549,3099,193,193},
	[26] = {1523,3085,190,192},
	[27] = {1514,3135,189,195},
	[28] = {1520,3206,190,200},
	[29] = {1415,3048,176,190},
	[30] = {1415,3114,176,194},
	[31] = {1381,3135,172,195},
	[32] = {1375,3185,171,199},
	[33] = {1414,3182,176,198},
	[34] = {1470,3088,183,192},
	[35] = {1516,2983,189,186},
}

--ɳĮ�Թ�����ʹˢ�µ�
WuXingShi_MapData = {

	[1] = {1440,2658,180,166},
	[2] = {1475,2659,184,166},
	[3] = {1363,2666,170,166},
	[4] = {1314,2667,164,166},
	[5] = {1252,2681,156,167},
	[6] = {1304,2722,163,170},
	[7] = {1295,2779,161,173},
	[8] = {1246,2712,155,169},
	[9] = {1274,2816,159,175},
	[10] = {1347,2742,168,171},
	[11] = {1347,2864,168,178},
	[12] = {1258,2852,157,178},
	[13] = {1249,2956,156,184},
	[14] = {1293,2922,161,182},
	[15] = {1255,3036,156,189},
	[16] = {1306,3021,163,188},
	[17] = {1325,3089,165,192},
	[18] = {1252,3142,156,196},
	[19] = {1330,3124,166,195},
	[20] = {1398,3136,174,195},
	[21] = {1405,3070,175,191},
	[22] = {1441,3156,180,197},
	[23] = {1562,3131,195,195},
	[24] = {1502,3075,187,192},
	[25] = {1450,3036,181,189},
	[26] = {1384,3016,173,188},
	[27] = {1410,2924,176,182},
	[28] = {1489,2932,186,183},
	[29] = {1545,3025,193,189},
	[30] = {1567,2910,195,181},
	[31] = {1534,2918,191,182},
	[32] = {1551,3020,194,188},
	[33] = {1549,2841,193,177},
	[34] = {1516,2870,189,179},
	[35] = {1454,2814,181,175},
	[36] = {1407,2856,175,178},
	[37] = {1457,2750,182,171},
	[38] = {1530,2712,191,169},
	[39] = {1390,2805,173,175},
	[40] = {1420,2772,177,173},
	[41] = {1614,2695,177,168},
	[42] = {1489,2698,186,168},
	[43] = {1525,2669,190,166},
	[44] = {1558,2662,194,166},
	[45] = {1447,2873,180,179},
	[46] = {1536,3146,192,196},
	[47] = {1547,3090,193,193},
	[48] = {1335,3153,167,196},
	[49] = {1474,2895,184,180},
	[50] = {1385,2748,173,171},

}

--ɳĮ�Թ�����ˢ�µ�
HuangXiang_MapData = WuXingShi_MapData;

--���������������ˢ�µ�
GuYangShou_MapData = {
	[1] = {1727,3144,215,196},
	[2] = {1639,3166,204,197},
	[3] = {1645,3236,205,202},
	[4] = {1590,3222,198,201},
	[5] = {1682,3295,210,205},
	[6] = {1724,3237,215,202},
	[7] = {1773,3182,221,198},
	[8] = {1848,3227,231,201},
	[9] = {1788,3316,223,207},
	[10] = {1706,3335,213,208},
	[11] = {1777,3359,222,209},
	[12] = {1802,3288,225,205},
	[13] = {1829,3210,228,200},
	[14] = {1905,3294,238,205},
	[15] = {1840,3347,230,209},
	[16] = {1836,3444,229,215},
	[17] = {1912,3453,239,215},
	[18] = {1951,3518,243,219},
	[19] = {2060,3403,257,212},
	[20] = {1968,3300,246,206},
}