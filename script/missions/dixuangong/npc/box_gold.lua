Include("\\settings\\static_script\\missions\\base\\mission_award_base.lua")
Include("\\script\\lib\\define.lua")
Include("\\script\\missions\\dixuangong\\mission.lua")
Include("\\script\\online_activites\\head\\activity_normal_head.lua")

T_DXG_GOLD_BoxScript = {
	"\\script\\missions\\dixuangong\\npc\\box_gold1.lua",
	"\\script\\missions\\dixuangong\\npc\\box_gold2.lua",
}

T_GOLD_BOX_IDX = {}
function remove_box_gold()
	for i,v in T_GOLD_BOX_IDX do
		if GetNpcName(i) == "Kim Rng" then
			SetNpcLifeTime(i, 0);
		end
	end
	T_GOLD_BOX_IDX = {}
end

function create_dxg_box_gold(nNpcIdx, nBoxId)
	if not T_DXG_GOLD_BoxScript[nBoxId] then
		return
	end
	local m, x, y = GetNpcWorldPos(nNpcIdx);
	local x2, y2 = x + random(-5, 5), y + random(-5, 5);
	local npc = CreateNpc("jinbaoxiang", "Kim Rng", m, x2, y2);
	if npc and npc > 0 then
		T_GOLD_BOX_IDX[npc] = 1
		--SetNpcLifeTime(npc, 180);
		SetNpcScript(npc, T_DXG_GOLD_BoxScript[nBoxId]);
	else
		print("create dixuangong jinbaoxiang fail")
	end
end

function box_gold_create_ib_card_require()
	local tRequire = {};
	for i = 1,8 do
		tinsert(tRequire,{2, 97, 236,1});
	end
	return tRequire;
end

function on_open_dxg_box_gold_card_stage1(nId)
	on_open_dxg_gold_box_card(1,nId)
end
function on_open_dxg_box_gold_card_stage2(nId)
	on_open_dxg_gold_box_card(2,nId)
end

function _stat_when_ib_consume(nConsume)
	SetTask(TASKID_DXG_SCORE, GetTask(TASKID_DXG_SCORE) + nConsume, TASK_ACCESS_CODE_DXG_MISSION);
	AddRuntimeStat(1,13,0,nConsume);
end

function on_open_dxg_gold_box_card(nStage, nId)
	local m = GetWorldPos();
	if m < 65537 then
		SendScript2Client('Open([[ma]])');
		return 0;
	end
	local nRet = MissionAward_RandAward(nStage, nId, t_dxg_card_award, nil);
	
	if nRet == 1 then
		if nId < 8 then
		--_stat_when_open_free_card()
	else
		--_stat_when_ib_consume(1)	
  	end
	end
end

function on_open_dxg_box_gold(nStage)
	local szFunc = format("on_open_dxg_box_gold_card_stage%d", nStage)
	MA_Mission_OpenUI(MISSION_ID,0, T_DXG_GOLD_BoxScript[nStage], szFunc, box_gold_create_ib_card_require());
	SetNpcLifeTime(GetTargetNpc(), 0);
	SetNpcScript(GetTargetNpc(), "");
	gf_TeamOperateEX(vaf_award_api, "tDXGJinBox") --2XU活动
end

_t_free_award_no_stage =
{
	n_other_group_rate = 10000,--随机到代币组的概率
	t_daibi_group =
	{
		--t_item_para = {name, {g,d,p,n,bind}, expire_days,bGblMsg, {nNeedRoom, nNeedWeight}}
        --{{"紫霞秘籍",{0,107,65,1, 4}, 720, bGblMsg}, 150},
        --t_item_para = {{function, {nCount, nBind, nExpireDays, bGblMsg, {nNeedRoom, nNeedWeight}}}, rate}
        --{{MissionAward_GiveFactionEquip4, {1, nil, nil, 0}}, 10000},
	},
	--------------------------------------------
	t_equip_group = --杂物组
	{
	},
};
_t_free_award_stage =
{
	[1] =
		{
			n_equip_group_rate = 0,--随机到装备组的概率
			n_daibi_group_rate = 0,--随机到代币组的概率
        	t_other_group = --装备组
        	{
        		----tPara = {nCount, nBind, nExpireDays, bGblMsg}
                { {"C﹜ B竧 Nh� nh�", {2,0,504,1,4}, 7,nil, {1, 100}}, 600},
                { {"C﹜ B竧 Nh�", {2,0,398,1,4}, 7,nil, {1, 100}}, 600},
                { {"C﹜ T� Linh", {2,1,30269,1,4}, 7,nil, {1, 100}}, 600},
                { {"Truy襫 C玭g Кn", {2,1,30313,1,4}, 7,nil, {1, 100}}, 600},
                { {"Tu Ch﹏ Y誹 Quy誸", {2,0,554,1,4}, 7,nil, {1, 100}}, 600},
                { {"Thi猲 L� Truy襫  Ph� Ch�", {2,1,3508,1,4}, nil,nil, {1, 100}}, 300},
                { {"T� Linh Quy Nguy猲 Кn", {2,1,30352,1,4}, 7,nil, {1, 100}}, 500},
                { {"B錳 Nguy猲 Кn", {2,1,30351,1,4}, 7,nil, {1, 100}}, 600},
                { {"B╪g Tinh Th筩h", {2,1,30554,1,4}, nil,nil, {1, 100}}, 500},
                { {"B筩h C﹗ Ho祅", {2,1,270,1,4}, 7,nil, {1, 100}}, 500},
                { {"T葃 T﹎ Th筩h Kho竛g", {2,1,30536,1}, nil,nil, {1, 100}}, 300},
                { {"Luy謓 L� Thi誸 Kho竛g", {2,1,30537,1}, nil,nil, {1, 100}}, 300},
                { {"T骾 ti襫", {2,1,30367,1,4}, nil,nil, {1, 100}}, 500},
                { {"Thi誸 Tinh c蕄 1", {2,1,30533,1,4}, nil,nil, {1, 100}}, 500},
                { {"Thi誸 Tinh c蕄 2", {2,1,30534,1,4}, nil,nil, {1, 100}}, 550},
                { {"Thi誸 Tinh c蕄 3", {2,1,30535,1,4}, nil,nil, {1, 100}}, 347},
                { {"竜 Cho祅g T筼 B�", {0,152,1,1}, nil,nil, {1, 100}}, 600},
                { {"竜 Cho祅g C萴 筺", {0,152,2,1}, nil,nil, {1, 100}}, 600},
                { {"竜 Cho祅g H醓 V﹏", {0,152,3,1}, nil,nil, {1, 100}}, 600},
                { {"竜 Cho祅g Ng� H祅h Kim Ch�", {0,152,4,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h M閏 Ch�", {0,152,5,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h Th駓 Ch�", {0,152,6,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h H醓 Ch�", {0,152,7,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h Th� Ch�", {0,152,8,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h  Ch�", {0,152,9,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Du Hi謕", {0,152,26,1}, nil,1, {1, 100}}, 1},
                { {"竜 Cho祅g Thi誸 Huy誸", {0,152,27,1}, nil,1, {1, 100}}, 1},
                { {"竜 Cho祅g V﹏ Du", {0,152,28,1}, nil,1, {1, 100}}, 1},
        	},
		},
	[2] =
		{
			n_equip_group_rate = 0,--随机到装备组的概率
			n_daibi_group_rate = 0,--随机到代币组的概率
        	t_other_group = --装备组
        	{
                { {"C﹜ B竧 Nh� nh�", {2,0,504,1,4}, 7,nil, {1, 100}}, 600},
                { {"C﹜ B竧 Nh�", {2,0,398,1,4}, 7,nil, {1, 100}}, 600},
                { {"C﹜ T� Linh", {2,1,30269,1,4}, 7,nil, {1, 100}}, 600},
                { {"Truy襫 C玭g Кn", {2,1,30313,1,4}, 7,nil, {1, 100}}, 600},
                { {"Tu Ch﹏ Y誹 Quy誸", {2,0,554,1,4}, 7,nil, {1, 100}}, 600},
                { {"Thi猲 L� Truy襫  Ph� Ch�", {2,1,3508,1,4}, nil,nil, {1, 100}}, 300},
                { {"T� Linh Quy Nguy猲 Кn", {2,1,30352,1,4}, 7,nil, {1, 100}}, 500},
                { {"B錳 Nguy猲 Кn", {2,1,30351,1,4}, 7,nil, {1, 100}}, 600},
                { {"B╪g Tinh Th筩h", {2,1,30554,1,4}, nil,nil, {1, 100}}, 500},
                { {"B筩h C﹗ Ho祅", {2,1,270,1,4}, 7,nil, {1, 100}}, 500},
                { {"T葃 T﹎ Th筩h Kho竛g", {2,1,30536,1}, nil,nil, {1, 100}}, 300},
                { {"Luy謓 L� Thi誸 Kho竛g", {2,1,30537,1}, nil,nil, {1, 100}}, 300},
                { {"T骾 ti襫", {2,1,30367,1,4}, nil,nil, {1, 100}}, 500},
                { {"Thi誸 Tinh c蕄 1", {2,1,30533,1,4}, nil,nil, {1, 100}}, 500},
                { {"Thi誸 Tinh c蕄 2", {2,1,30534,1,4}, nil,nil, {1, 100}}, 550},
                { {"Thi誸 Tinh c蕄 3", {2,1,30535,1,4}, nil,nil, {1, 100}}, 347},
                { {"竜 Cho祅g T筼 B�", {0,152,1,1}, nil,nil, {1, 100}}, 600},
                { {"竜 Cho祅g C萴 筺", {0,152,2,1}, nil,nil, {1, 100}}, 600},
                { {"竜 Cho祅g H醓 V﹏", {0,152,3,1}, nil,nil, {1, 100}}, 600},
                { {"竜 Cho祅g Ng� H祅h Kim Ch�", {0,152,4,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h M閏 Ch�", {0,152,5,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h Th駓 Ch�", {0,152,6,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h H醓 Ch�", {0,152,7,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h Th� Ch�", {0,152,8,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Ng� H祅h  Ch�", {0,152,9,1}, nil,nil, {1, 100}}, 50},
                { {"竜 Cho祅g Du Hi謕", {0,152,26,1}, nil,1, {1, 100}}, 1},
                { {"竜 Cho祅g Thi誸 Huy誸", {0,152,27,1}, nil,1, {1, 100}}, 1},
                { {"竜 Cho祅g V﹏ Du", {0,152,28,1}, nil,1, {1, 100}}, 1},
        	},
		},
}

_t_fix_award_stage =
{
}

_t_ib_award_no_stage1 =
{
	t_cost = --消耗
	{
		--{"紫霞秘籍",{0,107,65,1, 4}},
		{"Thi猲 Ki猽 L謓h",{2, 97, 236,1},_stat_when_ib_consume},
		
	},
	t_ib_award =--ib奖励
	{
        { {"C﹜ B竧 Nh� nh�", {2,0,504,1}, 7,nil, {1, 100}}, 600},
        { {"C﹜ B竧 Nh�", {2,0,398,1}, 7,nil, {1, 100}}, 600},
        { {"C﹜ T� Linh", {2,1,30269,1}, 7,nil, {1, 100}}, 600},
        { {"B筩h C﹗ Ho祅", {2,1,270,1}, 7,nil, {1, 100}}, 600},
        { {"Чi B筩h C﹗ ho祅", {2,1,1007,1}, 7,nil, {1, 100}}, 800},
        { {"B筩h C﹗ Ti猲 n", {2,1,1008,1}, 7,nil, {1, 100}}, 600},
        { {"Чi Nh﹏ s﹎", {2,0,553,1}, 7,nil, {1, 100}}, 500},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,1,4}, nil,nil, {1, 100}}, 1500},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,2,4}, nil,nil, {1, 100}}, 600},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,4,4}, nil,nil, {1, 100}}, 200},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,10,4}, nil,nil, {1, 100}}, 50},
        { {"M秐h Thi猲 M玭", {2,1,30410,2}, nil,nil, {1, 100}}, 1200},
        { {"M秐h Thi猲 M玭", {2,1,30410,4}, nil,nil, {1, 100}}, 391},
        { {"M秐h Thi猲 M玭", {2,1,30410,20}, nil,nil, {1, 100}}, 40},
        { {"Thi猲 M玭 Kim L謓h", {2,1,30370,1}, nil,1, {1, 100}}, 10},
        { {"竜 Cho祅g T筼 B�", {0,152,1,1}, nil,nil, {1, 100}}, 400},
        { {"竜 Cho祅g C萴 筺", {0,152,2,1}, nil,nil, {1, 100}}, 400},
        { {"竜 Cho祅g H醓 V﹏", {0,152,3,1}, nil,nil, {1, 100}}, 306},
        { {"竜 Cho祅g Ng� H祅h Kim Ch�", {0,152,4,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h M閏 Ch�", {0,152,5,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h Th駓 Ch�", {0,152,6,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h H醓 Ch�", {0,152,7,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h Th� Ch�", {0,152,8,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h  Ch�", {0,152,9,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Du Hi謕", {0,152,26,1}, nil,1, {1, 100}}, 1},
        { {"竜 Cho祅g Thi誸 Huy誸", {0,152,27,1}, nil,1, {1, 100}}, 1},
        { {"竜 Cho祅g V﹏ Du", {0,152,28,1}, nil,1, {1, 100}}, 1},
	},
}

_t_ib_award_no_stage2 =
{
	t_cost = --消耗
	{
		--{"紫霞秘籍",{0,107,65,1, 4}},
		{"Thi猲 Ki猽 L謓h",{2, 97, 236,1},_stat_when_ib_consume},
		
	},
	t_ib_award =--ib奖励
	{
        { {"C﹜ B竧 Nh� nh�", {2,0,504,1}, 7,nil, {1, 100}}, 600},
        { {"C﹜ B竧 Nh�", {2,0,398,1}, 7,nil, {1, 100}}, 600},
        { {"C﹜ T� Linh", {2,1,30269,1}, 7,nil, {1, 100}}, 600},
        { {"B筩h C﹗ Ho祅", {2,1,270,1}, 7,nil, {1, 100}}, 600},
        { {"Чi B筩h C﹗ ho祅", {2,1,1007,1}, 7,nil, {1, 100}}, 800},
        { {"B筩h C﹗ Ti猲 n", {2,1,1008,1}, 7,nil, {1, 100}}, 600},
        { {"Чi Nh﹏ s﹎", {2,0,553,1}, 7,nil, {1, 100}}, 500},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,1,4}, nil,nil, {1, 100}}, 1500},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,2,4}, nil,nil, {1, 100}}, 600},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,4,4}, nil,nil, {1, 100}}, 200},
        { {"Hu﹏ chng anh h飊g", {2,1,30499,10,4}, nil,nil, {1, 100}}, 50},
        { {"M秐h Thi猲 M玭", {2,1,30410,2}, nil,nil, {1, 100}}, 1200},
        { {"M秐h Thi猲 M玭", {2,1,30410,4}, nil,nil, {1, 100}}, 391},
        { {"M秐h Thi猲 M玭", {2,1,30410,20}, nil,nil, {1, 100}}, 40},
        { {"Thi猲 M玭 Kim L謓h", {2,1,30370,1}, nil,1, {1, 100}}, 10},
        { {"竜 Cho祅g T筼 B�", {0,152,1,1}, nil,nil, {1, 100}}, 400},
        { {"竜 Cho祅g C萴 筺", {0,152,2,1}, nil,nil, {1, 100}}, 400},
        { {"竜 Cho祅g H醓 V﹏", {0,152,3,1}, nil,nil, {1, 100}}, 306},
        { {"竜 Cho祅g Ng� H祅h Kim Ch�", {0,152,4,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h M閏 Ch�", {0,152,5,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h Th駓 Ch�", {0,152,6,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h H醓 Ch�", {0,152,7,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h Th� Ch�", {0,152,8,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Ng� H祅h  Ch�", {0,152,9,1}, nil,nil, {1, 100}}, 100},
        { {"竜 Cho祅g Du Hi謕", {0,152,26,1}, nil,1, {1, 100}}, 1},
        { {"竜 Cho祅g Thi誸 Huy誸", {0,152,27,1}, nil,1, {1, 100}}, 1},
        { {"竜 Cho祅g V﹏ Du", {0,152,28,1}, nil,1, {1, 100}}, 1},
	},
}

t_dxg_card_award = 
{
	--------------------------------------------
	t_free_award = 
	{
		sz_award_title = "Khu l藅 th� mi詎 ph� мa Huy襫 Cung",
		--几次没有得到装备时必出装备
		t_equip_round = {},
		n_max_daibi_perday = 30,--一天最多获得多少代币
		t_stage =
		{
			[1] = inherit(_t_free_award_no_stage, _t_free_award_stage[1]),
			[2] = inherit(_t_free_award_no_stage, _t_free_award_stage[2]),
		},
	},
	
	t_fix_award = 
	{
		sz_award_title = "Ph莕 thng c� nh 秈 мa Huy襫 Cung",
		t_stage = _t_fix_award_stage,
	},
	--------------------------------------------
	t_ib_award = 
	{
		sz_award_title = "Khu l藅 th� thu ph� мa Huy襫 Cung",
		t_stage = 
		{
			[1] = _t_ib_award_no_stage1,
			[2] = _t_ib_award_no_stage2,
		},
	},
}

_t_free_award_no_stage = nil
_t_free_award_stage = nil
_t_fix_award_stage = nil
_t_ib_award_no_stage1 = nil
_t_ib_award_no_stage2 = nil
