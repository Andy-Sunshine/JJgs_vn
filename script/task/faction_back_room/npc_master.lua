--���ߣ��Ͼ�
--�������ڣ�07��11��13��14:50
--ʦ���ű�
Include("\\script\\task\\faction_back_room\\back_room_function.lua");
Include("\\script\\task\\faction\\faction_equipment.lua");
g_szThisFile = "\\script\\task\\faction_back_room\\npc_master.lua";	--Ĭ��ֵ
g_szInforHeader = "";	--Ĭ��ֵ
g_nBackRoomEntryType = 1;	--������ͣ������֡�1��ʾ��ʦ�������룬2��ʾ�ӵ��ߴ�����

function main()
	--do return end
	backroom_main();
end;

function backroom_main()
	--do return end
	Talk(1,"backroom_main_entry"," \n  ��������Ҫ��սʦ�����ң�");
end;

g_tbDialog = 
{
	[0] = {[0] = "",[1] = "",[2] = "",[3] = ""},
	[1] = 
		{	--����
			[0] = "<color=green>����<color>:",
			[1] = "ʦ�����ң�ֻ�ɱ��ŵ���ǰ���������ڽ��Ǳ���ǰ�����֣�ǧ��ҪС���ˣ�",	
			[2] = "T? khi Thi�u L�m t? ���c s�ng l�p, ��t Ma vi�n, La H�n ���ng ���c d�ng l�n ��n nay, v? ngh? Thi�u L�m b�t ��u danh tr�n thi�n h?. La H�n ���ng l? n�i c? ng? c�a c�c h? t? v? t�ng. H? t? v? t�ng ���c tuy�n l�a kh�t khe t? c�c t? vi�n, v? ngh? cao th�m, c? tr�ch nhi�m canh gi? an to�n cho Thi�u L�m t?. B�y gi? vi�c tu s�a �� xong, h? ki�m th�m vi�c ? S? m�n m�t th�t, gi�p ch�ng �� t? r�n luy�n v? ngh?.",
			[3] = "��������Ҫ��սʦ�����ң�",
		},	
	[2] = 
		{	--�䵱
			[0] = "<color=green>Ѧ���<color>:",
			[1] = "ʦ�����ң�ֻ�ɱ��ŵ���ǰ���������ڽ��Ǳ���ǰ�����֣�ǧ��ҪС���ˣ�",	
			[2] = "Trong b�y m��i hai ��nh n�i ? V? �ang s�n, ch? c? Huy�n V? Phong m�y ph? t? b?, ��p nh? ti�n c�nh. C? r�t nhi�u cao s? trong ph�i l�nh xa c�i ��i t�c lu?, �n th�n tu luy�n t�i Huy�n V? Phong, �m th�m b�o v? an to�n cho t�ng ph�i. N�u c�c �� t? c? g? ch�a r? trong l�c luy�n v?, ho�c mu�n ki�m tra th�c l�c c�a m�nh, ��u c? th? ��n Huy�n V? Phong th? m�t phen.",
			[3] = "��������Ҫ��սʦ�����ң�",
		},	
	[3] = 
		{	--����
			[0] = "<color=green>��ܿʦ̫<color>:",
			[1] = "ʦ�����ң�ֻ�ɱ��ŵ���ǰ���������ڽ��Ǳ���ǰ�����֣�ǧ��ҪС���ˣ�",	
			[2] = "Ph�t ph�p r�i xa th�p t��ng, kh�ng ng? t��ng, kh�ng ch�ng sinh t��ng, �� g�i l? v? t��ng. V? T��ng Gian �� ���c ki�n t�o t? l�c b�n ph�i khai s�n l�p ph�i. Ph�i ta nh�p Ph�t ��o, �� t�ng g�p bi�t bao nhi�u th�ng tr�m, cho n�n v? c�ng c�a Nga My ph�i ngo�i vi�c c��ng th�n h? th?, c�n d�ng �� c�u nh�n �� th?. Trong V? T��ng Gian c? r�t nhi�u ti�n b�i c�a b�n ph�i, l? nh�ng ng��i t�i n�ng xu�t ch�ng trong s? m�n, ch�ng �� t? c? th? ��n �� tham thi�n ng? Ph�t, tu luy�n v? ngh?.",
			[3] = "��������Ҫ��սʦ�����ң�",
		},	
	[4] = 
		{	--ؤ��
			[0] = "<color=green>��²��<color>:",
			[1] = "ʦ�����ң�ֻ�ɱ��ŵ���ǰ���������ڽ��Ǳ���ǰ�����֣�ǧ��ҪС���ˣ�",	
			[2] = "N�m �� bang ch�ng ta t? ngh�a ? H�o Tung C�c, th�t l? r�m r? ch�a t�ng th�y, �� ��t n�n m�ng cho C�i Bang ta tr? th�nh Thi�n h? �� nh�t bang! Trong bang quy�t ��nh ch�n H�o Tung C�c l�m s? m�n tu luy�n tr��ng, cho t�p h�p truy�n c�ng tr��ng l�o, thi�t k? ra nhi�u c? quan, �� ch�ng �� t? c? ch�n tu luy�n, nh? l�i s? anh d�ng c�a c�c ti�n b�i, th�c gi�c ch�ng �� t? si�ng n�ng tu luy�n v? c�ng, l�p danh tr�n ch�n giang h?!",
			[3] = "��������Ҫ��սʦ�����ң�",
		},	
	[5] = 
		{ 	--����	
			[0] = "<color=green>����Ļ<color>:",
			[1] = "ʦ�����ң�ֻ�ɱ��ŵ���ǰ���������ڽ��Ǳ���ǰ�����֣�ǧ��ҪС���ˣ�",	
			[2] = "333312",
			[3] = "��������Ҫ��սʦ�����ң�",
		},	
	[6] = 
		{	--����
			[0] = "<color=green>������<color>:",
			[1] = "ʦ�����ң�ֻ�ɱ��ŵ���ǰ���������ڽ��Ǳ���ǰ�����֣�ǧ��ҪС���ˣ�",	
			[2] = "Gia ph? D��ng Nghi�p nh�n th? phong c�a tri�u ��nh, m�t l�ng b�o qu�c, tr�n th? thi�n m�n tr�n. Con ch�u D��ng gia ph�i c�n m�n luy�n v?, b�o �n tri�u ��nh, l�m r�ng uy danh D��ng.Gia qu�n.",
			[3] = "��������Ҫ��սʦ�����ң�",
		},	
	[7] = 
		{	--�嶾
			[0] = "<color=green>����<color>:",
			[1] = "ʦ�����ң�ֻ�ɱ��ŵ���ǰ���������ڽ��Ǳ���ǰ�����֣�ǧ��ҪС���ˣ�",	
			[2] = "B�n gi�o t? l�c Thi Th��ng, C? Th��ng s�ng l�p, v�n th��ng g�p ph�i m�t s? hung th�n �c thi v? thi�n ni�n ��c c? r�t kh? thu ph�c. Nh�ng �� m�i l? c? s? c�n thi�t �� cho v? c�ng c�a b�n m�n ng�y m�t ph�t tri�n. Cho n�n �� cho thu th�p nh�ng thi c? hi�m th�y, t�ng tr? ? U Nan Qu�t, ��ng th�i ph�i nh�ng cao th? ti�n b�i trong gi�o ph�i ��n nghi�n c�u. D�n d?, nh�ng ti�n b�i n�y ��u b? m�t h�t tr? nh?. �� t? b�n gi�o c? th? ��n ��y �� tu luy�n. Nh�ng s�ng ch�t do tr�i ��nh, n�u kh�ng th? tr? ra, th? c�ng ��ng tr�ch s? m�n kh�ng b�o tr��c, ho�c l? th�y ch�t m? kh�ng c�u!",
			[3] = "��������Ҫ��սʦ�����ң�",
		},	
}

function backroom_main_entry()
	local nFaction = 0;
	if g_nBackRoomEntryType == 2 then
		nFaction = GetPlayerFaction();
	else
		nFaction = backroom_get_faction();
	end;
	local szInforHeader = backroom_get_infoheader();
	BR_WeeklyClear();
	local selTab = {
				". ��սʦ���ؾ�/backroom_challenge",
				--". ʦ���ؾ������ͽ���/backroom_know_detail",
				--". ��ȡʦ������/BR_KnowLimit",
				". �鿴ʧ�ܴ���/backroom_reset_award_num",
				--". ʦ�ű�����/backroom_know_background",
				". �鿴���а�/backroom_see_all_faction_rank",
				". ��ȡʦ�����ҽ���/backroom_get_reward",
				". ���ʦ�����Ҵ�����/backroom_get_smmscsl",
				"�Ҿ��ǹ���������!/nothing",
				}
	if g_nBackRoomEntryType == 2 then
		tremove(selTab,5);	--ȥ��ʦ�����ұ���
		tremove(selTab,5);	--ȥ���鿴���а�
		tremove(selTab,5);	--ȥ����ȡ����
	end;
	local szDialog = "";
	if nFaction == 0 then
		szDialog = "S? m�n m�t th�t l? n�i tu luy�n d�nh cho �� t? b�n ph�i, m�i l�n tu luy�n xong ng��i s? c�m th�y th�n th? ��i kh�c, c�ng l�c t�ng cao!";
	else
		szDialog = g_tbDialog[nFaction][1];
	end;
	Say(szInforHeader..szDialog.."<color=yellow>Ŀǰֻ����ǰ9���Ѷ�",getn(selTab),selTab);
end;

function backroom_get_smmscsl()
	local szInforHeader = backroom_get_infoheader();
	if GetItemCount(2,0,1054,1) >= 1 then
		Talk(1,"",szInforHeader.."B�n �� c? 1 S? m�n m�t th�t truy�n t�ng l�nh trong h�nh trang.");
		return 0;
	end;
	AddItem(2,0,1054,1);
	Msg2Player("������һ��ʦ�����Ҵ�����");
end;

function backroom_know_background()
	local szInforHeader = backroom_get_infoheader();
	local nFaction = backroom_get_faction();
	local szDialog = "";
	szDialog = g_tbDialog[nFaction][2]
	Talk(1,"backroom_main_entry",szInforHeader..szDialog);
end;

function backroom_see_all_faction_rank()
	local szInforHeader = backroom_get_infoheader();
	local nFaction = backroom_get_faction();
	if nFaction == 0 then
		nFaction = GetPlayerFaction();
	end;
	if g_nBackRoomEntryType == 1 then	--����Ǵ�ʦ��������
		backroom_see_faction_rank(nFaction);
		return 0;
	end;
	--�����Ǵ���ӵ��ߴ����룬�ӵ��ߴ�������Բ鿴�������ɵ����а�
	local selTab = {};
	for i=1,getn(TB_FACTION_NAME) do
		tinsert(selTab,TB_FACTION_NAME[i].."/#backroom_see_faction_rank("..i..")");
	end;
	tinsert(selTab,"������./nothing");
	Say(szInforHeader.."B�n mu�n ki�m tra th�ng tin x�p h�ng c�a l�u ph�i n�o?",getn(selTab),selTab);
end;

function backroom_reset_award_num()
	local szInforHeader = backroom_get_infoheader();
	if GetTask(TSK_WC_FAIL_TIMES) < MAX_FAILURE_TIMES then
		Talk(1,"",szInforHeader.."�����ܻ�ʣ��<color=yellow>"..MAX_FAILURE_TIMES.."<color>����ս������");
		return 0;
	end;
	local selTab = {
				"ȷ��./backroom_reset_award_num_confirm",
				"������. /nothing",
				}
	Say(szInforHeader.."Xo? d? li�u 1 tu�n <color=yellow>"..MAX_FAILURE_TIMES.."<color> l�n tr? l�n m�i c? th? s? d�ng, m�i l�n ti�u hao <color=yellow>"..TB_ITEM[1][1].." 50<color> c�i, sau khi s? d�ng, b�n c? th? nh�n ���c b�o r��ng ? m�t th�t m�t l�n n�a. <color=yellow>T�ng s? l�n nh�n ph�n th��ng, s? t? ��ng xo? d? li�u<color>. B�n x�c nh�n mu�n s? d�ng?",getn(selTab),selTab);
end;

function backroom_reset_award_num_confirm()
	local szInforHeader = backroom_get_infoheader();
	if DelItem(TB_ITEM[1][2],TB_ITEM[1][3],TB_ITEM[1][4],50) == 1 then
		SetTask(TSK_WC_FAIL_TIMES,0);
		SetTask(TSK_WC_LAST_RECORD,0);
		Say(szInforHeader.."�� t�ng s? l�n nh�n ph�n th��ng th�nh c�ng, tu�n n�y b�n c? th? v�o m�t th�t nh�n b�o r��ng th�m m�t l�n n�a.",0);
		Msg2Player("�� t�ng s? l�n nh�n ph�n th��ng th�nh c�ng, tu�n n�y b�n c? th? v�o m�t th�t nh�n b�o r��ng th�m m�t l�n n�a");
		WriteLog(LOG_HEADER..GetName().."S? d�ng S? m�n m�t l�nh �� t�ng s? l�n nh�n ph�n th��ng");
	else
		Talk(1,"",szInforHeader.."B�n c�n c? <color=yellow>50 c�i "..TB_ITEM[1][1].."<color>.");
	end;
end;

function backroom_challenge()
	local szInforHeader = backroom_get_infoheader();
	if GetPKValue() >= 4 then
		Talk(1,"",szInforHeader.."Tr? PK c�a b�n <color=yellow>l�n h�n ho�c b�ng 4<color>, kh�ng th? v�o m�t th�t.");
		return 0;
	end;
	local nPlayerFaction = GetPlayerFaction();
	local nFaction = backroom_get_faction();
	if nPlayerFaction ~= nFaction and nFaction ~= 0 and g_nBackRoomEntryType == 1 then
		Talk(1,"",szInforHeader.."B�n kh�ng ph�i l? �� t? b�n ph�i, xin h�y quay v? �i!");
		return 0;
	end;
	if gf_CheckPlayerRoute() ~= 1 then
		Talk(1,"backroom_main_entry",szInforHeader.."B�n h�y t�m m�t s? ph? h�c v�i chi�u r�i h�y v�o m�t th�t tu luy�n.");
		return 0;
	end;
	local selTab = {
				"\n. ������һ�ε��ؾ���ս/backroom_continue_last_record",
				". ѡ��ʦ���ؾ��Ѷ�/backroom_select_difficulty",
				"\n. ������ҳ/backroom_main_entry",
				". ��Ǹ�����ˣ�/nothing",
				}
	if GetTask(TSK_WC_LAST_RECORD) == 0 then
		tremove(selTab,1);	--����ϴ�û�б����¼
	else
		tremove(selTab,2);	--����ϴ��б����¼
		tinsert(selTab,2,"\n. �����ս��¼/backroom_clear_record");
	end;
	if g_nBackRoomEntryType == 2 then
		nFaction = nPlayerFaction;
	end;
	Say(szInforHeader..g_tbDialog[nFaction][3].."�㱾���ѽ���ؿ� <color=yellow>"..GetTask(TSK_WC_ATTEND_TIMES).."<color> ��, �嵵 <color=yellow>"..GetTask(TSK_WC_FAIL_TIMES).."<color> ��. ���ܻ�����ս <color=yellow>"..MAX_FAILURE_TIMES.."<color> �Σ���ע�⣬ÿ��ֻ�е�һ��ͨ�ؿ�����ȡ���佱��.",getn(selTab),selTab);
end;

function backroom_clear_record()
	local szInforHeader = backroom_get_infoheader();
	local selTab = {
				"��ȷ��Ҫ�����ս��¼��/backroom_clear_record_confirm",
				"������һ��/nothing",
				}
	local nLastDiff,nLastStage = BR_GetSaveRecord();
	Say(szInforHeader.."�㱾���ѽ���ؿ� <color=yellow>"..TB_DIFF_NAME[nLastDiff].."<color> �� kh? �i <color=yellow>"..nLastStage.."<color>, b�n mu�n x�a d? li�u n�y kh�ng? Ch? ?, s? l�n x�a d? li�u tu�n v��t qu? <color=yellow>"..MAX_FAILURE_TIMES.."<color> l�n s? kh�ng th? l�y b�o r��ng trong m�t th�t. Tu�n n�y b�n �� x�a d? li�u <color=yellow>"..GetTask(TSK_WC_FAIL_TIMES).."<color> l�n.",getn(selTab),selTab);
end;

function backroom_clear_record_confirm()
	local szInforHeader = backroom_get_infoheader();
	SetTask(TSK_WC_LAST_RECORD,0);
	SetTask(TSK_WC_FAIL_TIMES,GetTask(TSK_WC_FAIL_TIMES)+1);
	Talk(1,"",szInforHeader.."D? li�u c�a b�n �� x�a, trong tu�n n�y ��y l? l�n th? "..GetTask(TSK_WC_FAIL_TIMES).." x�a d? li�u, ng��i c? th? ch�n l�i �� �� kh? �� v��t �i.");
end;

function backroom_select_difficulty()
	local szInforHeader = backroom_get_infoheader();
	local nLevel = GetLevel();
	if nLevel < 50 then
		Talk(1,"",szInforHeader.."��ng c�p c�a ng��i qu? th�p, kh�ng th? v�o m�t th�t.");
		return 0;
	end;
	local selTab = {};
	if DEBUG_VERSION == 0 then
		selTab = {
				"[1]"..TB_DIFF_NAME[1].."/#backroom_enter_back_room(1)",
				"[2]"..TB_DIFF_NAME[2].."/#backroom_enter_back_room(2)",
				"[3]"..TB_DIFF_NAME[3].."/#backroom_enter_back_room(3)",
				"[4]"..TB_DIFF_NAME[4].."/#backroom_enter_back_room(4)",
				}
	else
		for i=1,getn(TB_DIFF_NAME) do
			tinsert(selTab,"["..i.."]"..TB_DIFF_NAME[i].."/#backroom_enter_back_room("..i..")");
		end;
	end;
	tinsert(selTab,"\n �������룡/nothing");
	if nLevel >= 50 and nLevel < 70 then
		tremove(selTab,2);
		tremove(selTab,2);
		tremove(selTab,2);
	elseif nLevel >= 70 and nLevel < 80 then
		tremove(selTab,3);
		tremove(selTab,3);		
	elseif nLevel >= 80 and nLevel < 90 then
		tremove(selTab,4);	
	end;
	Say(szInforHeader.."��ѡ����ս�Ѷȣ�",getn(selTab),selTab);
end;

function backroom_continue_last_record()
	local szInforHeader = backroom_get_infoheader();
	local nLastDiff,nLastStage = BR_GetSaveRecord();
	if nLastDiff <= 0 then
		Talk(1,"backroom_challenge",szInforHeader.."L�n tr��c b�n kh�ng l�u ti�n ��.");
		return 0;
	end;
	local selTab = {
				format("���c/#backroom_enter_back_room(%d,%d)",nLastDiff,nLastStage),
				"����./nothing",
				}
	local nReadRecordTimes = GetTask(TSK_WC_READ_RECORD_TIMES)+1;
	local nNeedItemNum = 0;
	if nReadRecordTimes > MAX_FREE_READ_RECORD_TIMES then
		nNeedItemNum = 3;
	end;
	Say(szInforHeader.."Ti�n �� l�n tr��c b�n l�u l? <color=yellow>"..TB_DIFF_NAME[nLastDiff].."<color> �� kh? �i <color=yellow>"..nLastStage.."<color> �i, ��c ti�n �� kh�ng nh�n n�a"..TB_ITEM[1][1]..". Trong tu�n n�y ��y l? l�n ��c ti�n �� th? <color=yellow>"..nReadRecordTimes.."<color>. B�y gi? ng��i mu�n v�o �i n�y �� luy�n ph�i kh�ng?",getn(selTab),selTab);
end;

function backroom_enter_back_room(nDiff,nStage)
	local szInforHeader = backroom_get_infoheader();
	local nNeedToken = 0;
	if BR_EnterNextStageCheck(nDiff,nStage) == 0 then
		Say(szInforHeader.."B�n hi�n kh�ng �� �i�u ki�n �� v�o �i, xin h�y ki�m tra gi�i h�n v��t �i ? Ti�p d�n m�t th�t s? m�n.",0);
		Msg2Player("B�n hi�n kh�ng �� �i�u ki�n �� v�o �i, xin h�y ki�m tra gi�i h�n v��t �i ? Ti�p d�n m�t th�t s? m�n.");
		return 0;
	end;
	local selTab = {};
	if nStage == nil then
		nNeedToken = 1;	--������Ƕ������ģ���Ҫ1��ʦ������
		nStage = 1;
		tinsert(selTab,"��Ҫ��ս����!/#backroom_enter_back_room_confirm("..nDiff..")");	
	else
		tinsert(selTab,"����444/#backroom_enter_back_room_confirm("..nDiff..","..nStage..")");
	end;
	local nReadRecordTimes = GetTask(TSK_WC_READ_RECORD_TIMES)+1;
	local nNeedItemNum = 0;
--	if nReadRecordTimes > MAX_FREE_READ_RECORD_TIMES then
--		nNeedItemNum = 3;
--	end;
	local szInfo = "";
	local nNeedItemNumEx = 0;
	local szItemName = TB_ITEM[1][1];
	if g_nBackRoomEntryType == 2 then
		nNeedItemNumEx = 2;
		szInfo = "<color=yellow> d�ng h�i ph? m�t th�t v�o �i c�n t�n "..szItemName..nNeedItemNumEx.." <color>.";
	end;
	local nTotalNeedNum = nNeedItemNum+nNeedItemNumEx;
	tinsert(selTab,"��������!/nothing");
	Say(szInforHeader.."�������ѽ���<color=yellow>"..TB_DIFF_NAME[nDiff].."<color>�ؿ�<color=yellow>"..nStage.."<color>��"..szInfo.."�嵵<color=yellow>"..nNeedToken.."<color>�Σ�<color=yellow>"..szItemName..nTotalNeedNum.."<color>.",getn(selTab),selTab);
end;

function backroom_enter_back_room_confirm(nDiff,nStage)	--param1:difficulty�����жϴ���ʱ��nStage��Ϊnil
	local szInforHeader = backroom_get_infoheader();
	local nReadRecordTimes = GetTask(TSK_WC_READ_RECORD_TIMES)+1;
	local nNeedItemNum = 0;
	local nNeedItemNumEx = 0;
--	if nReadRecordTimes > MAX_FREE_READ_RECORD_TIMES then
--		nNeedItemNum = 3
--	end;
	local szItemName = TB_ITEM[1][1];
	local szInfo = "";
	if g_nBackRoomEntryType == 2 then
		nNeedItemNumEx = 2;
		szInfo = "<color=yellow> d�ng h�i ph? m�t th�t v�o �i c�n t�n "..szItemName..nNeedItemNumEx.." <color>,";
	end;
	local nTotalNeedNum = nNeedItemNum + nNeedItemNumEx;
	if nStage ~= nil then	--����Ƕ�������
		if GetItemCount(TB_ITEM[1][2],TB_ITEM[1][3],TB_ITEM[1][4]) < nTotalNeedNum then
			Talk(1,"",szInforHeader.."Tu�n n�y ng��i �� ��i <color=yellow>"..nReadRecordTimes.."<color> l�n ��c ti�n ��, c�n <color=yellow>"..nNeedItemNum.."<color> c�i"..szItemName.."."..szInfo.."S? l��ng "..szItemName.."S? l��ng kh�ng ��, t�ng c�ng c�n "..nTotalNeedNum.."c�i"..szItemName..".");
			return 0;
		end;
	else
		if GetItemCount(TB_ITEM[1][2],TB_ITEM[1][3],TB_ITEM[1][4]) < nNeedItemNumEx then
			Talk(1,"",szInforHeader..szInfo.."S? l��ng "..szItemName.."S? l��ng kh�ng ��.");
			return 0;
		end;
	end;
	local nFaction = GetPlayerFaction();
	local nRoute = GetPlayerRoute();
	local nCurMapID = GetWorldPos();
	local nRoomID,nRoomIdx,nRoomCount = BR_FindIdleRoom(nFaction,g_nBackRoomEntryType);
	if nRoomID == 0 then
		Talk(1,"",szInforHeader.."T�m th�i kh�ng c? khu thi ��u �� luy�n, v�o sau nh?.");
		return 0;
	end;
	if mf_GetMissionV(MISSION_ID,MV_MISSION_STATE,nRoomID) == MS_STATE_IDEL then
		if nStage == nil then	--������Ƕ������ľ�Ҫ��ʦ������
			if BR_DelLingPai(nFaction,1) ~= 1 then
				Talk(1,"",szInforHeader.."Ng��i c�n ph�i c? l�nh b�i s? m�n m�i c? th? v�o m�t th�t.");
				return 0;
			end;
		end;
		if mf_OpenMission(MISSION_ID,nRoomID) == 1 then
			DelItem(TB_ITEM[1][2],TB_ITEM[1][3],TB_ITEM[1][4],nTotalNeedNum);
			if nStage == nil then
				nStage = 1;
				SetTask(TSK_ENTER_TYPE,0);	--�Ƕ�������
			else	--��������ж��ǲ��Ǵ��жϴ�����
				SetTask(TSK_WC_READ_RECORD_TIMES,nReadRecordTimes);
				SetTask(TSK_ENTER_TYPE,1);	--��������
			end;
			if g_nBackRoomEntryType == 1 then	--�����ɴ���
				mf_SetMissionV(MISSION_ID,MV_MAP_TYPE,nRoute,nRoomID);
			else	--�ӵ��ߴ���
				mf_SetMissionV(MISSION_ID,MV_MAP_TYPE,0,nRoomID);
			end;
			mf_SetMissionV(MISSION_ID,MV_CUR_DIFF,nDiff,nRoomID);
			mf_SetMissionV(MISSION_ID,MV_CUR_STAGE,nStage,nRoomID);
			mf_SetMissionV(MISSION_ID,MV_MAPID,nRoomID,nRoomID);
			mf_SetMissionV(MISSION_ID,MV_MAPIDX,nRoomIdx,nRoomID);
			mf_SetMissionV(MISSION_ID,MV_ENTRY_MAPID,nCurMapID,nRoomID);
			mf_JoinMission(MISSION_ID,0,nRoomID);
		end;
	end;
end;

function backroom_know_detail()
	local szInforHeader = backroom_get_infoheader();
	Talk(2,"backroom_know_detail_2",szInforHeader.."\n    ʦ�����ҷ�Ϊ1-9��. ");
end;

function backroom_know_detail_2()
	local szInforHeader = backroom_get_infoheader();
	Talk(2,"backroom_main_entry",szInforHeader.."\n    ");
end;

function backroom_see_faction_rank(nFaction)
	local szInforHeader = backroom_get_infoheader();
	local selTab = {};
	for i=1,getn(TB_FACTION_ROUTE[nFaction]) do
		selTab[i] = TB_FACTION_ROUTE[nFaction][i][2].."/#backroom_see_route_rank("..TB_FACTION_ROUTE[nFaction][i][1]..")";
	end;
	tinsert(selTab,"\n �����Ի�/nothing");
	Say(szInforHeader.."��Ҫ���ĸ����ɵ����а���Ϣ��",getn(selTab),selTab);
end;

function backroom_see_route_rank(nRoute)
	local szInforHeader = backroom_get_infoheader();
	local selTab = {}
	for i=1,getn(TB_DIFF_NAME) do
		tinsert(selTab,"�鿴 ["..i.."]"..TB_DIFF_NAME[i].." �Ѷ�����/#backroom_get_rank("..nRoute..","..i..")");
	end;
	tinsert(selTab,"������һ��/backroom_see_all_faction_rank");
	tinsert(selTab,"�����Ի�/nothing");
	for i=1,9 do
		DelRelayShareDataCopy(BACKROOM_RELAY_KEY,nRoute,i);
	end;
	Say(szInforHeader.."��Ҫ���ĸ��Ѷȵ����а���Ϣ��",getn(selTab),selTab);
end;

function backroom_get_rank(nRoute,nDiff)
	ApplyRelayShareData(BACKROOM_RELAY_KEY,nRoute,nDiff,g_szThisFile,"backroom_callback_get_rank");
end;

function backroom_callback_get_rank(szKey,nKey1,nKey2,nRecordCount)
	local szInforHeader = backroom_get_infoheader();
	if nRecordCount == 0 then
		Talk(1,"backroom_see_all_faction_rank",szInforHeader.."Hi�n t�m th�i kh�ng c? th�ng tin danh s�ch li�n quan");
		return 0;
	end;
	local szString = "";
	if nRecordCount > 8 then
		nRecordCount = 8;	--ֻ��ǰ8��
	end;
	local szName = "";
	local nTime = 0;
	local szFormatTime = "";
	for i=1,nRecordCount do
		szName,nTime = GetRelayShareDataByIndex(szKey,nKey1,nKey2,i-1);
		szFormatTime = tf_GetTimeString(nTime);
		szString = szString..gf_FormatStringLength(i,6);
		szString = szString..gf_FormatStringLength(szName,18);
		szString = szString..gf_FormatStringLength(szFormatTime,20);
		szString = szString.."\n";
	end;
	Talk(1,"#backroom_see_route_rank("..nKey1..")",gf_GetRouteName(nKey1).."M�t th�t s? m�n ["..nKey2.."]"..TB_DIFF_NAME[nKey2].." 8 ng��i d�n ��u �� kh?: \n"..gf_FormatStringLength("H�ng",6)..gf_FormatStringLength("T�n",18)..gf_FormatStringLength("T�ng th�i gian",20).."\n"..szString);
end;

function backroom_get_reward()
	local szInforHeader = backroom_get_infoheader();
	local nFaction = GetPlayerFaction();
	if nFaction == 0 then
		Talk(1,"",szInforHeader.."������Ҫ�һ�ʲô��");
		return 0;
	end;
	local selTab = {
				". �� ��ȡ����Ʒ/backroom_exchange_normal_item",
				". �� ��ȡʦ���ؼ��ķ���Ҫ/backroom_exchange_faction_item",
				". �� ��ȡʦ����װ/backroom_equip_reward",
				". �� �߼���Ʒ�һ�һ����Ʒ/backroom_exchange_totem",
				". �� ��ȡ�����ؼ���ƪ/backroom_exchange_zhenpai",
				". �� ����ʦ������������/backroom_exchange_attack",
				"������һ��/backroom_main_entry",
				"�ݲ��һ�/nothing",
				}
	Say(szInforHeader.."��Ҫ�һ���Щ����?",getn(selTab),selTab);
end;

function backroom_exchange_totem()
	if gf_CheckPlayerRoute() ~= 1 then
		Talk(1,"",szInforHeader.."Ng��i ph�i gia nh�p l�u ph�i tr��c m�i c? th? ��i trang b? s? m�n.");
		return 0;
	end;
	local szInforHeader = backroom_get_infoheader();
	local selTab = {
			". 2����Ʒ�һ�1����Ʒ (�һ����� 1:1)/#backroom_exchange_totem_type(2)",
			". 2����Ʒ�һ�1����Ʒ (�һ����� 1:2)/#backroom_exchange_totem_type(3)",
			"������һ��/backroom_get_reward",
			"�ݲ��һ�/nothing",
			};
	Say(szInforHeader.."����԰Ѷ����ʦ�����Ҹ߼���Ʒ����1�������Ի�ȡʦ������Ʒ.",getn(selTab),selTab);
end;

function backroom_exchange_totem_type(nType)
	local szInforHeader = backroom_get_infoheader();
	local nFaction = GetPlayerFaction();
	local nID1 = TB_TOTEM_INFO[nFaction][nType][1];
	local nID2 = TB_TOTEM_INFO[nFaction][nType][2];
	local nID3 = TB_TOTEM_INFO[nFaction][nType][3];
	local szTotemName = TB_TOTEM_INFO[nFaction][nType][4];
	local nTotemCount = GetItemCount(nID1,nID2,nID3);
	if nTotemCount <= 0 then
		Talk(1,"backroom_exchange_totem",szInforHeader.."�����ϲ�û��<color=yellow>"..szTotemName.."<color> !");
		return 0;
	end;
	SetTaskTemp(TTSK_NORMAL_ITEM_TYPE,nType);
	AskClientForNumber("backroom_exchange_totem_confirm",1,min(nTotemCount,100),"Ng��i mu�n d�ng bao nhi�u �� ��i?");	--������໻��������
end;

function backroom_exchange_totem_confirm(nCount)
	local szInforHeader = backroom_get_infoheader();
	if gf_CheckPlayerRoute() ~= 1 then
		Talk(1,"",szInforHeader.."Ng��i ph�i gia nh�p l�u ph�i m�i c? th? ��i.");
		return 0;
	end;
	local nFaction = GetPlayerFaction();
	local nType = GetTaskTemp(TTSK_NORMAL_ITEM_TYPE);
	local nID1 = TB_TOTEM_INFO[nFaction][nType][1];
	local nID2 = TB_TOTEM_INFO[nFaction][nType][2];
	local nID3 = TB_TOTEM_INFO[nFaction][nType][3];
	local szTotemName = TB_TOTEM_INFO[nFaction][nType][4];
	local nTotemCount = GetItemCount(nID1,nID2,nID3);
	if nTotemCount < nCount then
		Talk(1,"backroom_exchange_totem",szInforHeader.."Ng��i �� ��i <color=yellow>"..szTotemName.."<color> kh�ng �� <color=yellow>"..nCount.."<color> ?!!");
		return 0;
	end;
	local nLV1ID1 = TB_TOTEM_INFO[nFaction][1][1];
	local nLV1ID2 = TB_TOTEM_INFO[nFaction][1][2];
	local nLV1ID3 = TB_TOTEM_INFO[nFaction][1][3];
	local szLV1TotemName = 	TB_TOTEM_INFO[nFaction][1][4];
	local nLV1TotemCount = 0;
	if nType == 2 then
		nLV1TotemCount = nCount;	--����1��1
	else
		nLV1TotemCount = 2*nCount;	--����1��2
	end;
	if gf_JudgeRoomWeight(2,nLV1TotemCount*5,"") == 0 then
		return 0;
	end;
	if DelItem(nID1,nID2,nID3,nCount) == 1 then
		AddItem(nLV1ID1,nLV1ID2,nLV1ID3,nLV1TotemCount);
		Msg2Player("B�n ��i "..nCount.."��"..szTotemName.." r�i"..nLV1TotemCount.."��"..szLV1TotemName);
		WriteLog(LOG_HEADER..GetName().."(m�n ph�i:"..nFaction..") d�ng "..nCount.."��"..szTotemName.." r�i"..nLV1TotemCount.."c�i"..szLV1TotemName);
	end;
end;

function backroom_exchange_normal_item()
	local szInforHeader = backroom_get_infoheader();
	if gf_CheckPlayerRoute() ~= 1 then
		Talk(1,"",szInforHeader.."Ng��i ph�i gia nh�p l�u ph�i m�i c? th? ��i ph�n th��ng.");
		return 0;
	end;
	backroom_list_normal_item(1,getn(TB_NORMAL_ITEM));
end;

function backroom_list_normal_item(nPageNum,nCount)
	local szInforHeader = backroom_get_infoheader();
	local tMedList = backroom_get_normal_item_list();
	local selTab = {};
	local nItemPerPage = 5;
	local GetMaxItemCountPerPage = function(nPN,nRC)	--���������������õ�ǰҳ���������ʾ��Ŀ����
		local nCount = nRC-(nPN-1)*%nItemPerPage;
		if nCount >= %nItemPerPage then
			return %nItemPerPage
		else
			return mod(nCount,%nItemPerPage);
		end;
	end;
	local nMaxIndex = GetMaxItemCountPerPage(nPageNum,nCount);
	local nCurStartIndex = (nPageNum-1)*nItemPerPage+1
	if nPageNum ~= 1 then
		tinsert(selTab,format("��һҳ \n /#backroom_list_normal_item(%d,%d)",nPageNum-1,nCount));
	end;
	for i=nCurStartIndex,nCurStartIndex+nMaxIndex-1 do
		tinsert(selTab,tMedList[i]);
	end;
	if nPageNum ~= ceil(nCount/nItemPerPage) then
		tinsert(selTab,format("\n ��һҳ/#backroom_list_normal_item(%d,%d)",nPageNum+1,nCount));	
	end;
	tinsert(selTab,"�ݲ��һ�/nothing");
	Say(szInforHeader.."��Ҫ��ȡ��������Ʒ?",getn(selTab),selTab);
end;

function backroom_get_normal_item(nType)
	local szInforHeader = backroom_get_infoheader();
	local nFaction = GetPlayerFaction();
	local nTotemCount = GetItemCount(TB_TOTEM_INFO[nFaction][1][1],TB_TOTEM_INFO[nFaction][1][2],TB_TOTEM_INFO[nFaction][1][3]);
	local nNeedNum = TB_NORMAL_ITEM[nType][5];
	local nMedCount = floor(nTotemCount/nNeedNum);
	if nMedCount <= 0 then
		Talk(1,"backroom_exchange_normal_item",szInforHeader.."��ȷ��������������<color=yellow>"..nNeedNum.."��"..TB_TOTEM_INFO[nFaction][1][4].."<color>.");
		return 0;
	end;
	SetTaskTemp(TTSK_NORMAL_ITEM_TYPE,nType);
	AskClientForNumber("backroom_get_normal_item_confirm",1,min(nMedCount,100),"B�n mu�n ��i bao nhi�u?");	--������໻��������
end;

function backroom_get_normal_item_list()
	local nFaction = GetPlayerFaction();
	local tSelTab = {};
	for i=1,getn(TB_NORMAL_ITEM) do
		tinsert(tSelTab,format(TB_NORMAL_ITEM[i][1].."("..TB_NORMAL_ITEM[i][5].."��"..TB_TOTEM_INFO[nFaction][1][4].."��"..TB_NORMAL_ITEM[i][6].."��)/#backroom_get_normal_item(%d)",i));
	end;
	return tSelTab;
end;

function backroom_get_normal_item_confirm(nCount)
	local szInforHeader = backroom_get_infoheader();
	if nCount <= 0 then
		return 0;
	end;
	local nFaction = GetPlayerFaction();
	local nType = GetTaskTemp(TTSK_NORMAL_ITEM_TYPE);
	local nNeedMoney = TB_NORMAL_ITEM[nType][6]*nCount;
	local nNeedNum = TB_NORMAL_ITEM[nType][5]*nCount;
	local nTotemID1 = TB_TOTEM_INFO[nFaction][1][1];
	local nTotemID2 = TB_TOTEM_INFO[nFaction][1][2];
	local nTotemID3 = TB_TOTEM_INFO[nFaction][1][3];
	if GetItemCount(nTotemID1,nTotemID2,nTotemID3) < nNeedNum then
		Talk(1,"backroom_exchange_normal_item",szInforHeader.."S?l��ng huy hi�u c�a ng��i kh�ng ��, x�c nh�n tr�n ng��i ng��i �t nh�t c?<color=yellow>"..nNeedNum.."c�i"..TB_TOTEM_INFO[nFaction][1][4].."<color>.")	
		return 0;
	end;
	if GetCash() < nNeedMoney*10000 then
		Talk(1,"",szInforHeader.."V�ng kh�ng ��, x�c nh�n �t nh�t ng��i c?<color=yellow>"..(nNeedMoney).."v�ng<color>.");
		return 0;
	end;
	if gf_JudgeRoomWeight(2,nCount*5,"") == 0 then
		return 0;
	end;
	local szItemName = TB_NORMAL_ITEM[nType][1];
	local nItemID1 = TB_NORMAL_ITEM[nType][2];
	local nItemID2 = TB_NORMAL_ITEM[nType][3];
	local nItemID3 = TB_NORMAL_ITEM[nType][4];
	Pay(nNeedMoney*10000);
	if DelItem(nTotemID1,nTotemID2,nTotemID3,nNeedNum) == 1 then
		AddItem(nItemID1,nItemID2,nItemID3,nCount);
		Msg2Player("Ng��i �� ��i "..nCount.."c�i"..szItemName);
		WriteLog(LOG_HEADER..GetName().."(m�n ph�i:"..nFaction..") r�i"..nCount.."c�i"..szItemName);
	end;
end;

backroom_tbNeedTotem = 
{
	[4] = 
	{
		[1] = {0,110,0},	--ʦ�ŵ�4��ñ��
		[2] = {0,130,0},	--ʦ�ŵ�4���·�
		[3] = {0,110,0},	--ʦ�ŵ�4�׿���
		[4] = {0,150,0},	--ʦ�ŵ�4������1
		[5] = {0,150,0},	--ʦ�ŵ�4������2
		[6] = {0,240,0},	--ʦ�ŵ�4������
	},
	[5] = 
	{
		[1] = {0,0,240},	--ʦ�ŵ�5��ñ��
		[2] = {0,0,360},	--ʦ�ŵ�5���·�
		[3] = {0,0,240},	--ʦ�ŵ�5�׿���
		[4] = {0,0,480},	--ʦ�ŵ�5������1
		[5] = {0,0,480},	--ʦ�ŵ�5������2
		[6] = {0,0,720},	--ʦ�ŵ�5������
	},
}

function backroom_equip_reward()
	local szInforHeader = backroom_get_infoheader();
	if gf_CheckPlayerRoute() ~= 1 then
		Talk(1,"",szInforHeader.."Ng��i ph�i gia nh�p l�u ph�i tr��c m�i c?th?��i trang b?s?m�n.");
		return 0;
	end;
	local selTab = {
				--"�鿴ʦ����װ����/backroom_see_equip_info",
				"�һ���ʦ��װ��/backroom_exchange_equip",
				"������һ��/backroom_get_reward",
				"�ݲ��һ�/nothing",
				}
	Say(szInforHeader.."��Ҫ�һ�ʦ��װ����?",getn(selTab),selTab);
end;

function backroom_see_equip_info()
	local nFaction = backroom_get_faction();
	local szInforHeader = backroom_get_infoheader();
	local tb = {90,94,92,93,91,95,96};
	if nFaction == 0 then
		Talk(1,"",szInforHeader.."?��y kh�ng th?xem thu�c t�nh trang b?m�i.");
		return 0;
	end;
	Sale(tb[nFaction],100,1);
end;

function backroom_exchange_equip()
	local szInforHeader = backroom_get_infoheader();
	local nPlayerFaction = GetPlayerFaction();
	local nFaction = backroom_get_faction();
	if nPlayerFaction ~= nFaction and nFaction ~= 0 and g_nBackRoomEntryType == 1 then
		Talk(1,"",szInforHeader.."Ng��i kh�ng ph�i �� t?b�n ph�i, kh�ng th?��i trang b?s?m�n!");
		return 0;
	end;
	local selTab = {
				"ʦ�ŵ�����/#backroom_get_equip_reward(4)",
				"ʦ�ŵ�����/#backroom_get_equip_reward(5)",
				"ʦ�ŵ�����/#backroom_get_equip_reward(6)",
				"������һ��/backroom_equip_reward",
				"�ݲ��һ�/nothing",
				}
	Say(szInforHeader.."��Ҫ�һ�����ʦ����װ?",getn(selTab),selTab);
end;

function backroom_get_equip_reward(nGeneration)
	local szInforHeader = backroom_get_infoheader();
	local nRoute = GetPlayerRoute();
	local selTab = {
				backroom_get_equip_name(nRoute,nGeneration,1).."/#backroom_get_equip("..nGeneration..",1)",
				backroom_get_equip_name(nRoute,nGeneration,2).."/#backroom_get_equip("..nGeneration..",2)",
				backroom_get_equip_name(nRoute,nGeneration,3).."/#backroom_get_equip("..nGeneration..",3)",
				backroom_get_equip_name(nRoute,nGeneration,4).."/#backroom_get_equip("..nGeneration..",4)",
				backroom_get_equip_name(nRoute,nGeneration,5).."/#backroom_get_equip("..nGeneration..",5)",
				backroom_get_equip_name(nRoute,nGeneration,6).."/#backroom_get_equip("..nGeneration..",6)",
				"������һ��/backroom_exchange_equip",
				"�ݲ��һ�/nothing",
				}
	Say(szInforHeader.."��Ҫ�һ�������һ��?",getn(selTab),selTab);
end;

function backroom_get_equip(nGeneration,nType)
	local szInforHeader = backroom_get_infoheader();
	local nRoute = GetPlayerRoute();
	local nFaction = GetPlayerFaction();
	local szEquipName = backroom_get_equip_name(nRoute,nGeneration,nType);
	local selTab = {};
	local nTotemNum = 0;
	local szTotemName = "";
	for i=1,3 do
		nTotemNum = backroom_tbNeedTotem[nGeneration][nType][i];
		if nTotemNum > 0 then
			szTotemName = TB_TOTEM_INFO[nFaction][i][4];
			tinsert(selTab,"ȷ���һ�(����"..nTotemNum.."��"..szTotemName..")/#backroom_get_equip_confirm("..nGeneration..","..nType..","..i..")");
		end;
	end;
	tinsert(selTab,"������һ��/#backroom_get_equip_reward("..nGeneration..")");
	tinsert(selTab,"�ݲ��һ�/nothing");
	Say(szInforHeader.."��ȷ��Ҫ��ȡ<color=yellow>"..szEquipName.."<color>��?",getn(selTab),selTab);
end;

function backroom_get_equip_name(nRoute,nGeneration,nType)
	local szName = fe_tbFactionEquipExName[nRoute][nGeneration][nType];
	return szName;
end;

function backroom_get_equip_confirm(nGeneration,nType,nTotemType)
	local szInforHeader = backroom_get_infoheader();
	if gf_JudgeRoomWeight(3,500,"") ~= 1 then
		return 0;
	end;
	local nFaction = GetPlayerFaction();
	local tb = TB_TOTEM_INFO[nFaction][nTotemType];
	local nNeedTotemNum = backroom_tbNeedTotem[nGeneration][nType][nTotemType];
	local szTotemName = tb[4];
	if GetItemCount(tb[1],tb[2],tb[3]) < nNeedTotemNum then
		Talk(1,"#backroom_get_equip_reward("..nGeneration..")",szInforHeader.."<color=yellow>"..szTotemName.."<color>����������.")	
		return 0;	   
	end;
	DelItem(tb[1],tb[2],tb[3],nNeedTotemNum);
	local nRoute = GetPlayerRoute();
	local nBody = GetBody();
	fe_AddFactionEquipmentEx(nRoute,nBody,nGeneration,nType);
	local szEquipName = backroom_get_equip_name(nRoute,nGeneration,nType);
	Msg2Player("B�n nh�n ���c "..szEquipName);
	WriteLog(LOG_HEADER..GetName().."Nh�n ���c 1 trang b?s?m�n:"..szEquipName..",nGeneration:"..nGeneration..",nType:"..nType);
end;
--���ݵ�ǰ��ͼ���ж����ʦ�����ĸ����ɵ�
function backroom_get_faction()
	local nMapID = GetWorldPos();
	local tbFactionMapID = {204,312,303,209,305,219,407};
	for i=1,getn(tbFactionMapID) do
		if nMapID == tbFactionMapID[i] then
			return i;
		end;
	end;
	return 0;
end;

function backroom_get_infoheader()
	if g_nBackRoomEntryType == 2 then	--����Ǵӵ��ߴ���
		return "";
	end;
	local nFaction = backroom_get_faction();
	local szInfoHeader = g_tbDialog[nFaction][0];
	return szInfoHeader;
end;

function backroom_exchange_faction_item()
	local nFaction = GetPlayerFaction();
	if nFaction == 0 then
		Talk(1,"",szInforHeader.."����111.");
		return 0;
	end;
	local szTotemName = TB_TOTEM_INFO[nFaction][1][4];	
	local selTab = {
				". �� ��ȡʦ���ؼ� ("..szTotemName..TB_FACTION_ITEM[1][0][2].."��)/#backroom_exchange_faction_item_type(1)",
				". �� ��ȡʦ���ķ� ("..szTotemName..TB_FACTION_ITEM[2][0][2].."��)/#backroom_exchange_faction_item_type(2)",
				". �� ��ȡ�Լ����ɾ�Ҫ�� ("..gf_GetFactionName(nFaction).." ) ("..szTotemName..TB_FACTION_ITEM[3][0][2].."��)/#backroom_exchange_faction_item_type(3)",
				". �� ��ȡʦ�Ÿ߼��ؼ� ("..TB_TOTEM_INFO[nFaction][3][4]..TB_FACTION_ITEM[4][0][2].." )/#backroom_exchange_faction_item_type(4)",
				". �� ��ȡʦ�Ÿ߼��ؼ� ("..TB_TOTEM_INFO[nFaction][3][4].."120����2000��)/#backroom_exchange_book(1,4)",
				"������һ��/backroom_get_reward",
				"�ݲ��һ�/nothing",
				}
	local szInforHeader = backroom_get_infoheader();
	Say(szInforHeader.."��Ҫ��ȡʲô��Ʒ?",getn(selTab),selTab);
end;

function backroom_exchange_faction_item_type(nItemType)
	local nFaction = GetPlayerFaction();
	if nItemType == 3 then	--����Ǿ�Ҫ��
		backroom_get_faction_item(nItemType,nFaction);
	else
		backroom_list_faction_item(1,nItemType);
	end;
end;

function backroom_list_faction_item(nPageNum,nItemType)
	local szInforHeader = backroom_get_infoheader();
	local tbList = backroom_get_faction_item_list(nItemType);
	local selTab = {};
	local nItemNum = getn(tbList);
	local nItemPerPage = 5;
	local GetMaxItemCountPerPage = function(nPN,nRC)	--���������������õ�ǰҳ���������ʾ��Ŀ����
		local nCount = nRC-(nPN-1)*%nItemPerPage;
		if nCount >= %nItemPerPage then
			return %nItemPerPage
		else
			return mod(nCount,%nItemPerPage);
		end;
	end;
	local nMaxIndex = GetMaxItemCountPerPage(nPageNum,nItemNum);
	local nCurStartIndex = (nPageNum-1)*nItemPerPage+1
	if nPageNum ~= 1 then
		tinsert(selTab,format("��һҳ \n /#backroom_list_faction_item(%d,%d)",nPageNum-1,nItemType));
	end;
	for i=nCurStartIndex,nCurStartIndex+nMaxIndex-1 do
		tinsert(selTab,tbList[i]);
	end;
	if nPageNum ~= ceil(nItemNum/nItemPerPage) then
		tinsert(selTab,format("\n ��һҳ/#backroom_list_faction_item(%d,%d)",nPageNum+1,nItemType));	
	end;
	tinsert(selTab,"\n �ݲ��һ�/nothing");
	Say(szInforHeader.."����Ҫ��ȡ�����ĸ���Ʒ?",getn(selTab),selTab);
end;

function backroom_get_faction_item_list(nItemType)
	local tbItem = TB_FACTION_ITEM[nItemType];
	local tbRetTb = {};
	for i=1,getn(tbItem) do
		tinsert(tbRetTb,tbItem[i][1].."/#backroom_get_faction_item("..nItemType..","..i..")");
	end;
	return tbRetTb;
end;

function backroom_get_faction_item(nItemType,nItemIdx)
	local szInforHeader = backroom_get_infoheader();
	local tbItem = TB_FACTION_ITEM[nItemType];
	local szItemName = tbItem[nItemIdx][1];
	local nFaction = GetPlayerFaction();
	local nNeedItemNum = tbItem[0][2];
	local nTotemType = tbItem[0][1];
	local szNeedItemName = TB_TOTEM_INFO[nFaction][nTotemType][4];
	local selTab = {
				"ȷ���һ�/#backroom_get_faction_item_confirm("..nItemType..","..nItemIdx..")",
				"�ݲ��һ�/nothing",
				}
	Say(szInforHeader.."��ȷ��Ҫ�һ� <color=yellow>"..szItemName.."<color>��? �һ���Ҫ<color=yellow>"..nNeedItemNum.."��"..szNeedItemName.."<color>.",getn(selTab),selTab);
end;

function backroom_get_faction_item_confirm(nItemType,nItemIdx)
	local szInforHeader = backroom_get_infoheader();
	local tbItem = TB_FACTION_ITEM[nItemType];
	local nNeedItemNum = tbItem[0][2];
	local nTotemType = tbItem[0][1];
	local nFaction = GetPlayerFaction();
	if nFaction == 0 then
		Talk(1,"",szInforHeader.."Ng��i v?m�n v?ph�i kh�ng ���c ��i v�t ph�m n�y.");
		return 0;
	end;
	local szNeedItemName = TB_TOTEM_INFO[nFaction][nTotemType][4];
	local nID1 = TB_TOTEM_INFO[nFaction][nTotemType][1];
	local nID2 = TB_TOTEM_INFO[nFaction][nTotemType][2];
	local nID3 = TB_TOTEM_INFO[nFaction][nTotemType][3];
	local nCurItemNum = GetItemCount(nID1,nID2,nID3);
	if nCurItemNum < nNeedItemNum then
		Talk(1,"",szInforHeader.."Ng��i c�n <color=yellow>"..nNeedItemNum.."c�i"..szNeedItemName.."<color> m�i c?th?��i v�t ph�m n�y.");
		return 0;
	end;
	if gf_JudgeRoomWeight(1,15,szInforHeader) == 0 then
		return 0;
	end;
	local szItemName = tbItem[nItemIdx][1];
	local nItemID1 = tbItem[nItemIdx][2];
	local nItemID2 = tbItem[nItemIdx][3];
	local nItemID3 = tbItem[nItemIdx][4];
	if DelItem(nID1,nID2,nID3,nNeedItemNum) == 1 then
		AddItem(nItemID1,nItemID2,nItemID3,1);
		Msg2Player("B�n ��i "..nNeedItemNum.."c�i"..szNeedItemName.."��i "..szItemName);
		WriteLog(LOG_HEADER..GetName().."(m�n ph�i:"..nFaction..") d�ng "..nNeedItemNum.."c�i"..szNeedItemName.." r�i"..szItemName);
	end;
end;

function backroom_exchange_zhenpai()
	local szInforHeader = backroom_get_infoheader();
	if gf_CheckPlayerRoute() ~= 1 then
		Talk(1,"",szInforHeader.."Ng��i ph�i gia nh�p l�u ph�i tr��c m�i c?th?��i M�t t�ch tr�n ph�i.");
		return 0;
	end;
	local nRoute = GetPlayerRoute();
	local nFaction = GetPlayerFaction();
	local nIdx = 0;
	local strtab = {};
	nIdx = TB_BOOK_REQUIRE[1][1];			
	tinsert(strtab,"@ "..TB_BOOK_LIST[nRoute][1][1].."(��Ҫ "..TB_TOTEM_INFO[nFaction][nIdx][4]..TB_BOOK_REQUIRE[1][2].."��)/#backroom_exchange_zhenpai_ask(1)");
	nIdx = TB_BOOK_REQUIRE[2][1];
	tinsert(strtab,"@ "..TB_BOOK_LIST[nRoute][2][1].."(��Ҫ "..TB_TOTEM_INFO[nFaction][nIdx][4]..TB_BOOK_REQUIRE[2][2].."��)/#backroom_exchange_zhenpai_ask(2)");
	nIdx = TB_BOOK_REQUIRE[3][1];
	tinsert(strtab,"@ "..TB_BOOK_LIST[nRoute][3][1].."(��Ҫ "..TB_TOTEM_INFO[nFaction][nIdx][4]..TB_BOOK_REQUIRE[3][2].."��)/#backroom_exchange_zhenpai_ask(3)");
	tinsert(strtab,"�ݲ��һ�/nothing");
	Say(szInforHeader.."��Ҫ��ȡ��һ��?",getn(strtab),strtab);	
end

function backroom_exchange_zhenpai_ask(nType)
	local szInforHeader = backroom_get_infoheader();
	local nRoute = GetPlayerRoute();
	local nFaction = GetPlayerFaction();
	local nIdx = TB_BOOK_REQUIRE[nType][1];
	if GetItemCount(TB_TOTEM_INFO[nFaction][nIdx][1],TB_TOTEM_INFO[nFaction][nIdx][2],TB_TOTEM_INFO[nFaction][nIdx][3]) < TB_BOOK_REQUIRE[nType][2] then
		Talk(1,"",szInforHeader.."�� "..TB_BOOK_LIST[nRoute][nType][1].."��Ҫ"..TB_TOTEM_INFO[nFaction][nIdx][4]..TB_BOOK_REQUIRE[nType][2].."��,�����ϲ���Ŷ.");
		return 0;
	end	
	Say(szInforHeader.."Ng��i d�ng <color=yellow>"..TB_TOTEM_INFO[nFaction][nIdx][4]..TB_BOOK_REQUIRE[nType][2].." <color> ��i <color=yellow>"..TB_BOOK_LIST[nRoute][nType][1].."<color> ch?",
			3,
			"���c/#backroom_exchange_zhenpai_confirm("..nType..")",
			"Kh�ng, ta nh�m!/backroom_exchange_zhenpai",
			"Kh�ng ��i/nothing")	
end

function backroom_exchange_zhenpai_confirm(nType)
	local szInforHeader = backroom_get_infoheader();
	local nRoute = GetPlayerRoute();
	local nFaction = GetPlayerFaction();
	local nIdx = TB_BOOK_REQUIRE[nType][1];
	if GetItemCount(TB_TOTEM_INFO[nFaction][nIdx][1],TB_TOTEM_INFO[nFaction][nIdx][2],TB_TOTEM_INFO[nFaction][nIdx][3]) < TB_BOOK_REQUIRE[nType][2] then
		Talk(1,"",szInforHeader.."�� "..TB_BOOK_LIST[nRoute][nType][1].."��Ҫ"..TB_TOTEM_INFO[nFaction][nIdx][4]..TB_BOOK_REQUIRE[nType][2].."��,�����ϲ���Ŷ.");
		return 0;
	end	
	if gf_JudgeRoomWeight(1,50,szInforHeader) == 0 then
		return 0;
	end;  
	if DelItem(TB_TOTEM_INFO[nFaction][nIdx][1],TB_TOTEM_INFO[nFaction][nIdx][2],TB_TOTEM_INFO[nFaction][nIdx][3],TB_BOOK_REQUIRE[nType][2]) == 1 then
		AddItem(TB_BOOK_LIST[nRoute][nType][2],TB_BOOK_LIST[nRoute][nType][3],TB_BOOK_LIST[nRoute][nType][4],1);
		Msg2Player("B�n nh�n ���c "..TB_BOOK_LIST[nRoute][nType][1]);
		WriteLog(LOG_HEADER..GetName().."(m�n ph�i:"..nFaction..") d�ng "..TB_BOOK_REQUIRE[nType][2].."c�i"..TB_TOTEM_INFO[nFaction][nIdx][4].." r�i"..TB_BOOK_LIST[nRoute][nType][1]);
	end
end

function backroom_exchange_book(nPageNum,nItemType)
	local szInforHeader = backroom_get_infoheader();
	local tbList = backroom_exchange_book_list(nItemType);
	local selTab = {};
	local nItemNum = getn(tbList);
	local nItemPerPage = 5;
	local GetMaxItemCountPerPage = function(nPN,nRC)	--���������������õ�ǰҳ���������ʾ��Ŀ����
		local nCount = nRC-(nPN-1)*%nItemPerPage;
		if nCount >= %nItemPerPage then
			return %nItemPerPage
		else
			return mod(nCount,%nItemPerPage);
		end;
	end;
	local nMaxIndex = GetMaxItemCountPerPage(nPageNum,nItemNum);
	local nCurStartIndex = (nPageNum-1)*nItemPerPage+1
	if nPageNum ~= 1 then
		tinsert(selTab,format("��һҳ \n /#backroom_exchange_book(%d,%d)",nPageNum-1,nItemType));
	end;
	for i=nCurStartIndex,nCurStartIndex+nMaxIndex-1 do
		tinsert(selTab,tbList[i]);
	end;
	if nPageNum ~= ceil(nItemNum/nItemPerPage) then
		tinsert(selTab,format("\n ��һҳ/#backroom_exchange_book(%d,%d)",nPageNum+1,nItemType));	
	end;
	tinsert(selTab,"\n �� ta suy ngh?nothing");
	Say(szInforHeader.."����Ҫ��ȡ��������?",getn(selTab),selTab);
end;

function backroom_exchange_book_list(nItemType)
	local tbItem = TB_FACTION_ITEM[nItemType];
	local tbRetTb = {};
	for i=1,getn(tbItem) do
		tinsert(tbRetTb,tbItem[i][1].."/#backroom_exchange_book_item("..nItemType..","..i..")");
	end;
	return tbRetTb;
end;

function backroom_exchange_book_item(nItemType,nItemIdx)
	local szInforHeader = backroom_get_infoheader();
	local tbItem = TB_FACTION_ITEM[nItemType];
	local szItemName = tbItem[nItemIdx][1];
	local nFaction = GetPlayerFaction();
	local nNeedItemNum = 120;
	local nTotemType = tbItem[0][1];
	local szNeedItemName = TB_TOTEM_INFO[nFaction][nTotemType][4];
	local selTab = {
				"��ng ?#backroom_exchange_book_item_confirm("..nItemType..","..nItemIdx..")",
				"H�y b?nothing",
				}
	Say(szInforHeader.."Ng��i mu�n ��i <color=yellow>"..szItemName.."<color>? C�n ph�i c?<color=yellow>"..nNeedItemNum.."c�i"..szNeedItemName.." v?2000 v�ng<color>.",getn(selTab),selTab);
end;

function backroom_exchange_book_item_confirm(nItemType,nItemIdx)
	local szInforHeader = backroom_get_infoheader();
	local tbItem = TB_FACTION_ITEM[nItemType];
	local nNeedItemNum = 120;
	local nTotemType = tbItem[0][1];
	local nFaction = GetPlayerFaction();
	if nFaction == 0 then
		Talk(1,"",szInforHeader.."Ng��i v?m�n v?ph�i kh�ng ���c ��i v�t ph�m n�y.");
		return 0;
	end;
	local szNeedItemName = TB_TOTEM_INFO[nFaction][nTotemType][4];
	local nID1 = TB_TOTEM_INFO[nFaction][nTotemType][1];
	local nID2 = TB_TOTEM_INFO[nFaction][nTotemType][2];
	local nID3 = TB_TOTEM_INFO[nFaction][nTotemType][3];
	local nCurItemNum = GetItemCount(nID1,nID2,nID3);
	if nCurItemNum < nNeedItemNum then
		Talk(1,"",szInforHeader.."Ng��i c�n <color=yellow>"..nNeedItemNum.."c�i"..szNeedItemName.."<color> m�i c?th?��i v�t ph�m n�y.");
		return 0;
	end;
	if GetCash() < 20000000 then
		Talk(1,"",szInforHeader.."Ng��i ph�i c?<color=yellow>2000 v�ng<color> m�i c?th?��i v�t ph�m n�y.");
		return 0;
	end
	if gf_JudgeRoomWeight(1,15,szInforHeader) == 0 then
		return 0;
	end;
	local szItemName = tbItem[nItemIdx][1];
	local nItemID1 = tbItem[nItemIdx][2];
	local nItemID2 = tbItem[nItemIdx][3];
	local nItemID3 = tbItem[nItemIdx][4];
	if DelItem(nID1,nID2,nID3,nNeedItemNum) == 1 and Pay(20000000) == 1 then
		AddItem(nItemID1,nItemID2,nItemID3,1);
		Msg2Player("B�n ��i "..nNeedItemNum.."c�i"..szNeedItemName.." v?2000 v�ng ��i "..szItemName);
		WriteLog(LOG_HEADER..GetName().."(m�n ph�i:"..nFaction..") d�ng "..nNeedItemNum.."c�i"..szNeedItemName.." v?2000 v�ng ��i "..szItemName);
	end;
end;

function backroom_exchange_attack()
	local szInforHeader = backroom_get_infoheader();
	if gf_CheckPlayerRoute() ~= 1 then
		Talk(1,"",szInforHeader.."Ng��i ph�i gia nh�p l�u ph�i tr��c m�i c?th?�i�u ch�nh l�c ��nh v?kh?s?m�n.");
		return 0;
	end;	
	local strtab = {
			". ��Ҫ����ʦ�ŵ�����װ������/#backroom_exchange_attack_ask(4)",
			". ��Ҫ����ʦ�ŵ�����װ������/#backroom_exchange_attack_ask(5)",
			"��������/nothing"
	};
	Say(szInforHeader.."��Ҫ��1��������Ϭ������ʦ�ŵ����ף������������Ĺ������𣿵�����������ǿ���ȱ��������걣�������������������������ע�⣬������������������޷����е���������ʱ��Ҫ������װ���������ϡ�",getn(strtab),strtab);
end

function backroom_exchange_attack_ask(nType)
	local szInforHeader = backroom_get_infoheader();
	if GetItemCount(2,1,533) < 1 then
		Talk(1,"",szInforHeader.."��������������Ҫ1��������Ϭ��������û��Ŷ��");
		return 0;
	end
	local nRoute = GetPlayerRoute();
	local nBody = GetBody();
	local nID2,nID3 = 0,0;
	local tbWeaponID2 = {nil,5,8,0,nil,1,nil,2,10,nil,0,5,nil,2,9,nil,6,4,nil,7,11};
	nID2 = tbWeaponID2[nRoute];
	if nRoute == 8 or nRoute == 9 then	--�������⴦��
		nID3 = nRoute*100+(nType-1)*10+nBody-2;
	else
		nID3 = nRoute*100+(nType-1)*10+nBody;
	end;
	local nIndex = GetPlayerEquipIndex(2);
	local nQianghua = GetEquipAttr(nIndex,2);--��ȡ��Ʒǿ���ȼ�
	local nDing = GetItemSpecialAttr(nIndex,"DING7"); --��ȡװ���Ƿ񶨻�
	local nLock = GetItemSpecialAttr(nIndex,"LOCK"); --��ȡ�Ƿ�����	
	local nEquipId1,nEquipId2,nEquipId3 = GetPlayerEquipInfo(2); --��ȡװ��id	
	if nRoute == 2 then	--�����������׼�
		if nEquipId1 ~= 0 or (nEquipId2 ~= 3 and nEquipId2 ~= 5) or nEquipId3 ~= nID3 then
			if nType == 4 then
				Talk(1,"","Ng��i ch�n �i�u ch�nh l�c ��nh v?kh?trang b?s?m�n 4, tr�n ng��i ng��i hi�n kh�ng ph�i.");
				return 0;
			elseif nType == 5 then
				Talk(1,"","Ng��i ch�n �i�u ch�nh l�c ��nh v?kh?trang b?s?m�n 5, tr�n ng��i ng��i hi�n kh�ng ph�i.");
				return 0;				
			end
		end
	else
		if nEquipId1 ~= 0 or nEquipId2 ~= nID2 or nEquipId3 ~= nID3 then
			if nType == 4 then
				Talk(1,"","Ng��i ch�n �i�u ch�nh l�c ��nh v?kh?trang b?s?m�n 4, tr�n ng��i ng��i hi�n kh�ng ph�i.");
				return 0;
			elseif nType == 5 then
				Talk(1,"","Ng��i ch�n �i�u ch�nh l�c ��nh v?kh?trang b?s?m�n 5, tr�n ng��i ng��i hi�n kh�ng ph�i.");
				return 0;				
			end
		end
	end
	if nLock == 1 then
		Talk(1,"","Trang b?tr�n ng��i ng��i �� kh�a, c�n m?kh�a m�i c?th?th�ng c�p.");
		return
	end
	local nItemName = GetItemName(nIndex);
	Say(szInforHeader.."Ng��i s?d�ng 1 Tinh Luy�n B�ng Th�ch �� �i�u ch�nh l�c ��nh c�a <color=yellow>"..nItemName.."<color> ph�i kh�ng?",
		3,
		"���c/#backroom_exchange_attack_confirm("..nType..")",
		"Kh�ng, ta nh�m!/backroom_exchange_attack",
		"�ݲ��һ�/nothing")	
end

function backroom_exchange_attack_confirm(nType)
	local szInforHeader = backroom_get_infoheader();
	if GetItemCount(2,1,533) < 1 then
		Talk(1,"",szInforHeader.."�i�u ch�nh l�c ��nh c�a v?kh?c�n 1 Tinh Luy�n B�ng Th�ch, tr�n ng��i ng��i kh�ng c?");
		return 0;
	end
	if gf_JudgeRoomWeight(1,200,szInforHeader) == 0 then
		return 0;
	end;	
	local nRoute = GetPlayerRoute();
	local nBody = GetBody();
	local nID2,nID3 = 0,0;
	local tbWeaponID2 = {nil,5,8,0,nil,1,nil,2,10,nil,0,5,nil,2,9,nil,6,4,nil,7,11};
	nID2 = tbWeaponID2[nRoute];
	if nRoute == 8 or nRoute == 9 then	--�������⴦��
		nID3 = nRoute*100+(nType-1)*10+nBody-2;
	else
		nID3 = nRoute*100+(nType-1)*10+nBody;
	end;		
	local nIndex = GetPlayerEquipIndex(2);
	local nQianghua = GetEquipAttr(nIndex,2);--��ȡ��Ʒǿ���ȼ�
	local nDing = GetItemSpecialAttr(nIndex,"DING7"); --��ȡװ���Ƿ񶨻�
	local nEquipId1,nEquipId2,nEquipId3 = GetPlayerEquipInfo(2); --��ȡװ��id	
	if DelItemByIndex(nIndex,-1) == 1 and DelItem(2,1,533,1) == 1 then
		local nAddFlag,nItemIdx = AddItem(nEquipId1,nEquipId2,nEquipId3,1,1,-1,-1,-1,-1,-1,-1,0,nQianghua);
		if nDing == 1 then
			SetItemSpecialAttr(nItemIdx,"DING7",1); --����
		end
		Msg2Player("L�c ��nh c�a v?kh?�� �i�u ch�nh.");
	end
end

TB_FACTION_ITEM = 
{
	[1] = --ʦ���ؼ�
	{
		[0] = {1,60},	--������Ʒ�ȼ�������
		[1] = {"��շ�ħ��(�����׼�)",0,107,1},	
		[2] = {"�޳��ؼ�(������ɮ)",0,107,5},	
		[3] = {"Ǳ���ؼ�(������ɮ)",0,107,3},	
		[4] = {"�����ؼ�(����)",0,107,7},	
		[5] = {"�����ؼ�(���ҷ��)",0,107,9},	
		[6] = {"�̺���(�����׼�)",0,107,11},
		[7] = {"�����ؼ�(ؤ�ﾻ��)",0,107,13},	
		[8] = {"�����ؼ�(ؤ������)",0,107,15},	
		[9] = {"��Ӱ�ؼ�(�䵱����)",0,107,17},	
		[10] = {"�����ؼ�(�䵱�׼�)",0,107,19},	
		[11] = {"����ؼ�(����ǹ��)",0,107,21},	
		[12] = {"�����ؼ�(���Ź���)",0,107,23},	
		[13] = {"��ڤ��¼(�嶾а��)",0,107,25},	
		[14] = {"����ؼ�(�嶾��ʦ)",0,107,27},
	},
 	[2] = 	--ʦ���ķ�
	{
		[0] = {1,60},
		[1] = {"��շ�ħ�ķ�(�����׼�)",0,107,2},	
		[2] = {"�޳��ķ�(������ɮ)",0,107,6},	
		[3] = {"Ǳ���ķ�(������ɮ)",0,107,4},
		[4] = {"�����ķ�(����)",0,107,8},	
		[5] = {"�����ķ�(���ҷ��)",0,107,10},
		[6] = {"�̺��ķ�(�����׼�)",0,107,12},
		[7] = {"�����ķ�(ؤ�ﾻ��)",0,107,14},
		[8] = {"�����ķ�(ؤ������)",0,107,16},		
		[9] = {"��Ӱ�ķ�(�䵱����)",0,107,18},	
		[10] = {"�����ķ�(�䵱�׼�)",0,107,20},
		[11] = {"����ķ�(����ǹ��)",0,107,22},	
		[12] = {"�����ķ�(���Ź���)",0,107,24},	
		[13] = {"��ڤ�ķ�(�嶾а��)",0,107,26},
		[14] = {"����ķ�(�嶾��ʦ)",0,107,28},	
	},
	[3] = 	--���ɾ�Ҫ��
	{
		[0] = {1,80},
		[1] = {"���־�Ҫ��",2,0,607},	
		[2] = {"�䵱��Ҫ��",2,0,611},
		[3] = {"���Ҿ�Ҫ��",2,0,609},	
		[4] = {"ؤ���Ҫ��",2,0,610},	
		[5] = {"���ž�Ҫ��",2,0,608},		
		[6] = {"���ž�Ҫ��",2,0,612},	
		[7] = {"�嶾��Ҫ��",2,0,613},	
	},
	[4] = --�߼�ʦ���ؼ�
	{
		[0] = {3,600},
		[1] = {"��հ�����(�����׼�)",0,107,166},
		[2] = {"�޳����ᾭ(������ɮ)",0,107,168},	
		[3] =	{"Ǳ������(������ɮ)",0,107,167},
		[4] = {"��������¼(����)",0,107,169},	
		[5] = {"������ؼ�(���ҷ��)",0,107,170},
		[6] = {"�̺�������(�����׼�)",0,107,171},
		[7] = {"���������ؼ�(ؤ�ﾻ��)",0,107,172},
		[8] = {"���������ؼ�(ؤ������)",0,107,173},		
		[9] = {"��Ӱ�����ؼ�(�䵱����)",0,107,174},	
		[10] = {"���ӽط��ؼ�(�䵱�׼�)",0,107,175},
		[11] = {"�������ǹ��(����ǹ��)",0,107,176},	
		[12] = {"��������ؼ�(���Ź���)",0,107,177},	
		[13] = {"��ڤ��ħ¼(�嶾а��)",0,107,178},
		[14] = {"��ƻ�а¼(�嶾��ʦ)",0,107,179},			
	},
}