--�����ű�
--created by lizhi
--2005-9-5 19:43

Include("\\script\\task\\world\\task_var_id.lua");
Include("\\script\\task\\world\\task_trigger_list.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");

function task_01_00()
    local szTalk = {
        "���������кι��?",
        "[{���������˵����ʯ�١��а����С�ɽ�����ͼ������}]",
    };
    TalkEx("task_01_01", szTalk);
end;

function task_01_01()
    local szTalk = {
        "�������޷������뿪����,������֮������Ҳ��Ī������.",
        "��������Ϊ������һ��!",
        "������ؤ��ɶ��ֶ�ͬ��������-{�������ӳ·���}!",
        "���˸������,�屡����!",
        "��ȥ�ɶ�Ѱ��{�����},���Ի�Ϊ������!"
    };
    TalkEx("task_01_02", szTalk);
end;

function task_01_02()
    SetTask(TASK_JJC, 2);
    DelItem(2,0,78,1);
    AddItem(2,0,81,1);
    Msg2Player("ȥ�ɶ��������");
    TaskTip("ȥ�ɶ��������");
    GivePlayerAward("Level_20", "hard");
	GivePlayerExp(SkeyCDFanzhongyan,"baifangzhugeqi1")		--�ݷ������1
end;

function task_02_00()
    local szTalk = {
        "{�������˵������}",
        "����,����Ҳ���Ƶ�Ҳ�����Ū��.",
        "���������ڿڸ�����û�ƺ�.",
        "�������Ҵ�20���վƻ�����!"
    };
    TalkEx("task_02_01", szTalk);
end;

--2,1,12  �վ�

function task_02_01()
    SetTask(TASK_JJC, 3);
    Msg2Player("������״���20���վ�");
    TaskTip("������״���20���վ�");
    GivePlayerAward("Level_20", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"baifangzhugeqi2")		--�ݷ������2
end;

function task_03_00()
    local szSay = {
        "�������վƴ���������?",
        "20���վ��Ҵ�����!/have_one",
        "�һ�û�ռ���!/have_none"
    };
    SelectSay(szSay);
end;

function have_one()
    local szMsg = {
        "������û���ռ���."
    };
    local szTalk = {
        "��˺þƲ���ֻ����һ������.",
        "�����������Ұ���Щ�Ʒָ������ұ���!"
    };
    if GetItemCount(2,1,12) >= 20 then
        TalkEx("task_03_01", szTalk);
    else
        TalkEx("", szMsg);
    end;
end;

function task_03_01()
    SetTask(TASK_JJC, 4);
    SetTask(TASK_JJC_YI, 1);
    SetTask(TASK_JJC_BING, 1);
    SetTask(TASK_JJC_DING, 1);
    DelItem(2,1,12,5);
    Msg2Player("���վƷַ��������ұ���");
    TaskTip("���վƷַ��������ұ���");
    GivePlayerAward("Level_20", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"gaibangtangzhu1")		--ؤ������1
end;

function task_04_00()
    local szTalk = {
        "<sex> mau �em r��u ngon ph�n ph�t cho m�y n�n d�n kh�c!"
    };
    --�޲�����bug������
    if GetTask(TASK_JJC_YI) == 2 and GetTask(TASK_JJC_BING) == 2 and GetTask(TASK_JJC_DING) == 2 then
        --SetTask(TASK_JJC, 5);
        SetTask(TASK_JJC_YI, 0);
        SetTask(TASK_JJC_BING, 0);
        SetTask(TASK_JJC_DING, 0);
        task_05_00();
    else
    	TalkEx("", szTalk);
    end;
end;

function task_jjc_fq(nPerson)
    local szTalk = {};
    local nTaskID = 0;
    if GetItemCount(2,1,12) >= 5 then
        if nPerson == 2 then    --������
            szTalk = {
                "[��������������������վ�!]",
                "����,��л����!��ͷ����лл�ֵ������."
            };
            nTaskID = TASK_JJC_YI;
        elseif nPerson == 3 and GetCash() >= 50 then    --���������50ͭ����
            szTalk = {
                "��������������������վ�!",
                "��л����!��ͷ����лл�ֵ������!",
                "����,�о�û���¾Ʋ�,���ǿ�ϧ��!",
                "�����������ҵ�ͭ������¾Ʋ˰�."
            };
            nTaskID = TASK_JJC_BING;
        elseif nPerson == 3 and GetCash() < 50 then     --�������û��50ͭ
            szTalk = {
                "��������������������վ�!",
                "��л����!��ͷ����лл�ֵ������!",
                "����,�о�û���¾Ʋ�,���ǿ�ϧ��!",
                "��!����û��ͭ��?���ǿ�ϧ��!"
            };
            nTaskID = TASK_JJC_BING;
        elseif nPerson == 4 then    --����
            szTalk = {
                "��������������������վ�!",
                "(����..����)",
                "�þ�û�ȵ�����,��л����!"
            };
            nTaskID = TASK_JJC_DING;
        end;
        if GetTask(nTaskID) == 1 then
            TalkEx("#task_jjc_fq_01("..nTaskID..")", szTalk);
        end;
    else
        szTalk = {
            "�������վ��͵�����!"
        };
        TalkEx("", szTalk);
    end;
end;

function task_jjc_fq_01(nTaskID)
    --GivePlayerAward("Level_20", "normal");
	if nTaskID == TASK_JJC_BING and GetCash() >= 50 then
    	Pay(10);
    end;
    ModifyExp(100);
	DelItem(2,1,12,5);
	SetTask(nTaskID, 2);
    --���3�������͹���
    if GetTask(TASK_JJC_YI) == 2 and GetTask(TASK_JJC_BING) == 2 and GetTask(TASK_JJC_DING) == 2 then
        SetTask(TASK_JJC, 5);
        SetTask(TASK_JJC_YI, 0);
        SetTask(TASK_JJC_BING, 0);
        SetTask(TASK_JJC_DING, 0);
    end;
end;

function task_05_00()
    local szTalk = {
        "�����վƺú�,����!",
        "˵�����ǳ¶���,��Ҳ�ö���û��������,ǰЩ���Ӷ���˵Ҫȥ{�������},���ȥ��������."
    };
    TalkEx("task_05_01", szTalk);
end;

function task_05_01()
    SetTask(TASK_JJC, 6);
   Msg2Player("ȥ��������ҳ·���");
    TaskTip("ȥ��������ҳ·���");
    GivePlayerAward("Level_20", "hard", "chest", "Level_27");
	GivePlayerExp(SkeyCDFanzhongyan,"gaibangtangzhu2")		--ؤ������2
end;

function task_06_00()
    local szTalk = {
        "[��λ������ؤ���{�·���},�¶���?]",
        "����,ʲô������������,���ҳ��ֵܾͺ���,�ҿ���һ·�糾,������ʲô��?",
        "[�¶���,Ŷ...���ֵܹ�Ȼ���˿���,������Ǿ�{���ǰ��}����������ֵܰ��æ.]",
        ".........����������Ҫ��."
    };
    TalkEx("task_06_01", szTalk);
end;

function task_06_01()
    local szTalk = {
        "��֪������ô����{������}?",
        "[�����潭��ʱ���˽ⲻ��,��������������û�нӴ���,����Ӣ��Ӧ��������Ʒ��������,��������������Ҳ��{ͬ���˴������},ֻ�������岻ͬ����.]",
        "СС��;�������˼���,�����������.",
        "�ұ�����ɽ����һ��֮��,�������ڽ�ⶴ�ڶ�һ����ʱ��������������,���޴�,��������Щ���߲���,��֪���Ƿ���Ϊ��ѰЩ{����}��!"
    };
    TalkEx("task_06_02", szTalk);
end;

function task_06_02()
    SetTask(TASK_JJC, 7);
    CreateTrigger(0,546,KILL_JJC_LAOHU);
    DelItem(2,0,81,1);
    Msg2Player("��10�����Ǹ��·�����ҩ��");
    TaskTip("��10�����Ǹ��·�����ҩ��");
    GivePlayerAward("Level_24", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"liaoshangzhiyao1")		--����֮ҩ1
end;

function task_07_00()
    local szTalk = {
        "����,�����㲻����ʶ׿Խ,�书Ҳ����,���Ǻ�����ηѽ!",
        "���˻�����ֻ��Ҫ�ٵ������켴��Ȭ��,��ɽ��������,������ȥ��̽������ʵ����.",
        "��Ҳ��������,�����Ҵӽ�ⶴ�ж�õ�{����}.",
        "�ֵ��㲻��������������{��������}",
        "��ɽ�Ǳ߾����ֵ��Ҵ�̽,������Ϣ,�ͻ�ϵ���������ֵ�����.",
    };
    local szMsg = {
        "�����ռ�������?"
    };
    if GetItemCount(2,0,55) >= 10 then
        TalkEx("task_07_01", szTalk);
    else
        TalkEx("task_07_02", szMsg);
    end;
end;

function task_07_02()
    if GetTrigger(KILL_JJC_LAOHU) == 0 then
        CreateTrigger(0,546,KILL_JJC_LAOHU);
    end;
end;

function task_07_01()
    DelItem(2,0,55,10);
    AddItem(2,0,83,1);
    SetTask(TASK_JJC, 8);
    Msg2Player("���·����صķ������������");
    TaskTip("���·����صķ������������");
    GivePlayerAward("Level_24", "hard");
	GivePlayerExp(SkeyCDFanzhongyan,"liaoshangzhiyao2")		--����֮ҩ2
end;

function task_08_00()
    local szTalk = {
        "��������������С�Ӹ��Ҵ�����ʲô�ö���.",
        "��!��!�벻������ȻѰ����{һ��������}.",
        "��������Ϊ����ʦ����,���Խ���ħ������������,���䲻��Σ���˼�.",
        "������������������С,�����ú��ⷨ��.",
        "��Щ������{��ʬ}��{��ʬ}��ʵ��Ϊ���о�������󲻵ý��ѵ�{ԩ������},��ʵ�ڲ����Ľ����Ǵ�Ļ����ɢ.",
        "����ȥ{�ռ����ǵ�ԩ��},�����ܷ��Ԧ�������."
    };
    TalkEx("task_08_01", szTalk);
end;

function task_08_01()
    DelItem(2,0,83,1);
    AddItem(2,0,84,1);
    CreateTrigger(0,547,KILL_JJC_FS);
    CreateTrigger(0,548,KILL_JJC_XS);
    SetTask(TASK_JJC, 9);
    Msg2Player("�ռ�25����ʬ15����ʬ��ԩ��ر������");
    TaskTip("�ռ�25����ʬ15����ʬ��ԩ��ر������");
    GivePlayerAward("Level_26", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"huangyeyuanhun1")		--��Ұԩ��1
end;

function task_09_00()
    local szTalk = {
        "���������Ѿ����Գ�ּ�Ԧ������.",
        "��,�������ǻ����ɢ�һ�������취.",
        "��ǰ���Ǵ��γ���,��������������{��������}!",
        "�Ϸ���˵{���ָ�ɮ}������{�𷨳���}а��ԩ��.",
        "���������Щԩ��ȥ���ֿ����ܲ��ܽ��䳬��.",
        "ϣ�����ǿ��԰�Ϣ.",
        "����Ͷ��̫ƽʢ��,ƽ���Ҹ��Ķȹ�һ��!"
    };
    local szMsg = {
        "<sex> mau mang theo T�a Y�u Chung n�y thu ph�c Oan h�n {H? Thi v? H�nh Thi}!"
    };
    --ԩ����������
    if GetItemCount(2,0,85) < 25 or GetItemCount(2,0,86) < 15 then
        TalkEx("task_09_02", szMsg);
        if GetItemCount(2,0,84) == 0 then
            AddItem(2,0,84,1);
        end;
    else
        TalkEx("task_09_01", szTalk);
    end;
end;

function task_09_02()
    if GetTrigger(KILL_JJC_FS) == 0 then
        CreateTrigger(0,547,KILL_JJC_FS);
    end;
    if GetTrigger(KILL_JJC_XS) == 0 then
        CreateTrigger(0,548,KILL_JJC_XS);
    end;
end;

function task_09_01()
    RemoveTrigger(GetTrigger(KILL_JJC_FS));
    RemoveTrigger(GetTrigger(KILL_JJC_XS));
    if GetItemCount(2,0,84) == 0 then
        AddItem(2,0,84,1);
    end;
    SetTask(TASK_JJC, 10);
    Msg2Player("����װ��ԩ���������ȥ����");
    TaskTip("����װ��ԩ���������ȥ����");
    GivePlayerAward("Level_26", "hard", "head", "Level_30");
	GivePlayerExp(SkeyCDFanzhongyan,"huangyeyuanhun2")		--��Ұԩ��2
end;

function task_10_00()
    local szTalk = {
        "ʩ��������!",
        "����������λ��ɮ��Ϣ֮��,ʩ������ĪҪ��{ԩ��}����Ϊ��.",
        "{������巢���������֪����ɮ}",
        "��!���д���!��Щԩ����Ϊ�����ڷ���,������{ִ����ǰ������}.�ʲ��ܽ���.",
        "ƶɮ�з�������Щԩ�곬��,����������������.",
        "������������ʩ����ȥѰЩ{����������}��,�Խ�ԩ��Թ�����˼��.",
        "������г���һ�ֺ��С��ʮ�ֺÿ�,�˳�{������},ʩ����ǰȥѰ{����}����,�����ӷ�!"
    };
    TalkEx("task_10_01", szTalk);
end;

function task_10_01()
    SetTask(TASK_JJC, 11);
    DelItem(2,0,84,1);
    DelItem(2,0,85,25);
    DelItem(2,0,86,15);
    CreateTrigger(0, 549, KILL_JJC_WJH);
    Msg2Player("ȥ�������ȡ5�������������ɮ");
    TaskTip("ȥ�������ȡ5�������������ɮ");
    GivePlayerAward("Level_28", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"shaonianwangshi1")		--��������1
end;

function task_11_00()
    local szTalk = {
        "<sex> c? �em ���c di v�t ? Giang T�n Th�n v? kh�ng?",
        "{V�ng Giang H�ng} ��y!",
        "Ta s? �em T�a Y�u Chung v? V�ng Giang H�ng ��t d��i th�p, c�c �� t? s? ni�m kinh si�u tho�t oan h�n, kho�ng 1 gi? sau th? ���c. Hi�n b�n t�ng c? chuy�n kh�ng r? mu�n th�nh gi�o s? ph?!",
        "Xin ��i s? c? h�i.",
        "B�n t�ng nghe n�i T�a Y�u Chung b? m�t t�ch trong cu�c chi�n ch�nh t?, kh�ng bi�t th? ch? l�y t? ��u?"
    };
    local szMsg = {
        "ʩ����Ȼ����,�������{��������}",
        "�����ӷ�!"
    };
    if GetItemCount(2,0,87) >= 5 then
        TalkEx("task_11_01", szTalk);
    else
        TalkEx("task_11_02", szMsg);
    end;
end;

function task_11_02()
    if GetTrigger(KILL_JJC_WJH) == 0 then
        CreateTrigger(0, 549, KILL_JJC_WJH);
    end;
end;

function task_11_01()
    local szTalk = {
        "C? ���c chu�ng l? nh? s? gi�p �� c�a {Tr�n Phi D��ng}, �� ch? ��ng T? ���ng c�a C�i Bang.",
        "Ch? tr�ch m�y h�m tr��c l�o n�p th�y Phi D��ng ��n th�m vi�ng Ph��ng Tr��ng.",
        "Nghe ��i s? n�i v�y, kh�ng l? Tr�n ��i ca l? ng��i c�a Thi�u L�m?",
        "Phi D��ng t? nh? �� m�t song th�n, ���c Huy�n T? ��i s? mang v? Thi�u L�m nu�i d��ng, v? sau l�i ���c Long T�i Thi�n bang ch? c�a C�i Bang thu l�m �� t?, truy�n d�y v? c�ng.",
        "Ta th�y Tr�n ��i ca �ang phi�n mu�n.",
        "Th�i gian kh�ng c�n nhi�u, th? ch? ? ��y ��i ta mang chu�ng v?."
    };
    TalkEx("task_11_02", szTalk);
end;

function task_11_02()
    SetTask(TASK_JJC, 12);
    DelItem(2,0,87,5);
    GivePlayerAward("Level_28", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"shaonianwangshi2")		--��������2
end;

function task_12_00()
    local szTalk = {
        "����ʩ������εõ���{������}?",
        "ԭ���Ƿ���,����.",
        "��������ԭ��{������ԭ��},���׸�ĸ˫��,�����ȴ�ʦ�����ĺ��ܷ������۷�;������,��������ɰ�,��������,�������޿�,����{�������ָ���}!",
        "����������ؤ����������쿴��,�յ�����,ί�Դ���.!",
        "ʩ������,���ıؽ����¸�֪����,������������,����ǰ�������,�����ɶ����ճ���!"
    };
    TalkEx("task_12_01", szTalk);
end;

function task_12_01()
    SetTask(TASK_JJC, 13);
    Msg2Player("��ȥ�ɶ����ϵ���������︴��");
    TaskTip("��ȥ�ɶ����ϵ���������︴��");
    GivePlayerAward("Level_28", "hard");
	GivePlayerExp(SkeyCDFanzhongyan,"shaonianwangshi3")		--��������3
end;

function task_13_00()
    local szTalk = {
        "��˳���ĳ������鲢�ҵõ����ֵİ���,����̫����!",
        "����,�ҷ��ֳ·��������İ�������{���з���},������Ȼû������,���Ƿ���һ�ɵ�������ζ,������ʮ��{���ܵ��ż�},��������ĳ�������īˮд��.",
        "��īˮ�ɺ��Լ�����ʧֻ���ú�ɫ��ϸ�Ҳ��������Գ��ּ�,���������Ҳ�����.",
        "��Ҫ�⿪�����,��ҪһЩ{��ѻ����ë},����ѻ����ë�ճɻ���������,�ּ�Ӧ�þͻ������.",
        "�ͷ���ȥ�����һ��,�Ǳ��кܶ�{��ѻ}."
    };
    TalkEx("task_13_01", szTalk);
end;

function task_13_01()
    SetTask(TASK_JJC, 14);
    CreateTrigger(0,550,KILL_JJC_HY);
    Msg2Player("ȥ������ɱ��ѻ�ռ�4����ë");
    TaskTip("ȥ������ɱ��ѻ�ռ�4����ë");
    GivePlayerAward("Level_28", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"mixinyiyun1")		--��������1
end;

function task_14_00()
    local szTalk = {
        "���鲻��!",
        "�·�������˵�м�{�ǳ���Ҫ�Ķ���}!",
        "������{���ɲ�}һ���˵�����!",
        "�������ٶ��!"
    };
    local szMsg = {
        "�ͷ���ȥ�����һ��,�Ǳ��кܶ�{��ѻ}",
        "��Ҫ�⿪�����,��ҪһЩ{��ѻ����ë},����ѻ����ë�ճɻ���������,�ּ�Ӧ�þͻ������."
    };
    if GetItemCount(2,0,88) >= 4 then
        TalkEx("task_14_01", szTalk);
    else
        TalkEx("task_14_02", szMsg);
    end;
end;

function task_14_02()
    if GetTrigger(KILL_JJC_HY) == 0 then
        CreateTrigger(0,550,KILL_JJC_HY);
    end;
end;

function task_14_01()
    SetTask(TASK_JJC, 15);
    RemoveTrigger(GetTrigger(KILL_JJC_HY));
    DelItem(2,0,88,4);
    CreateTrigger(0,551,KILL_JJC_SN);
    Msg2Player("ȥ���ɲ������Ʒ");
    TaskTip("ȥ���ɲ������Ʒ");
    GivePlayerAward("Level_28", "hard", "legs", "Level_32");
	GivePlayerExp(SkeyCDFanzhongyan,"mixinyiyun2")		--��������2
end;

function task_15_00()
    local szTalk = {
        "��������ȥ���ɲ������Ʒ!"
    };
    TalkEx("task_15_01", szTalk);
end;

function task_15_01()
    if GetTask(TASK_JJC) == 15 then
        if GetTrigger(KILL_JJC_SN) == 0 then
            CreateTrigger(0,551,KILL_JJC_SN);
        end;
    elseif GetTask(TASK_JJC) == 16 then
        if GetTrigger(KILL_JJC_SN) == 0 then
            CreateTrigger(0,551,KILL_JJC_SN);
        end;
        if GetTrigger(KILL_JJC_ZR) == 0 then
            CreateTrigger(0,552,KILL_JJC_ZR);
        end;
        if GetTrigger(KILL_JJC_YS) == 0 then
            CreateTrigger(0,553,KILL_JJC_YS);
        end;
    end;
end;

function task_17_00()
    local szTalk = {
        "������Сë����,����������ɽ,���Ķ���Ӣ�ۺú�,����С�����ֵĳ���.",
        "�����Ծ�����������ȥ�Ǳ�������ɽ�еļ�������{����һ��}.",
        "���Ƿֱ���{����������},{�����й�����},{ĸ���˴�ɩ}.",
        "����ʤ�ù�����,�Ҿͳ��������ɽ�ʸ�."
    };
    TalkEx("task_17_01", szTalk);
end;

function task_17_01()
    SetTask(TASK_JJC, 18);
    SetTask(TASK_JJC_BEAT_SW, 0);
    SetTask(TASK_JJC_BEAT_LL, 0);
    SetTask(TASK_JJC_BEAT_G, 0);
    Msg2Player("������ɽ�еļ�������");
    TaskTip("������ɽ�еļ�������");
    GivePlayerAward("Level_34", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"liangshanhaohan1")		--��ɽ�ú�1
end;

function task_18_00()
    local szTalk = {
        "��!��û�л�������ɽ�ĺ���?",
        "Сë���������Ļ���ȥ!"
    };
    if GetTask(TASK_JJC_BEAT_SW) == 2 and GetTask(TASK_JJC_BEAT_LL) == 2 and GetTask(TASK_JJC_BEAT_G) == 2 then
    	task_19_00();
    else
    	TalkEx("", szTalk);
    end;
end;

function task_19_00()
    local szTalk = {
        "Ŷ,�������������������,�����������,����������,�۾�Ҳ����ʹ��!",
        "[��!������{�����},�ҲŲ�����!]",
        "(���һ��!)��!",
        "�������ô����������?������д�û�û���ü������ͳ�ȥ��{����͵��}!",
        "��ô���ܵ��������?����ѽ!�����͵�ŵ�С������!",
        "[{����!}����Ų�����͵��,����ؤ������{�·���}ָ���Ҵ�����������������.]",
        "�˴�����ɽ��ֻ��֪������ô���{�´�������}��ô����Ȥ?"
    };
    TalkEx("task_19_01", szTalk);
end;

function task_19_01()
    local szTalk = {
        "��������Ѿ�֪���ɶ������ʹ˴λ�ʯ������{ɽ�����ͼ}��Ƭһ���˰�!",
        "�����Ϣ�����ǳ·����������,��˵����һƷ�����˴˻������{ɽ�����ͼ}��Ƭ,������ȥ������Ҫ�������˵���.",
        "����ǰ���������пɿ���Ϣ{����һƷ��}����֪������Ҫȥ����ʯ�ٶ��������������ʱ�ٳ˻�����!"
    };
    TalkEx("task_19_02", szTalk);
end;

function task_19_02()
    local szTalk = {
        "�˴��ж���Ϊ����,{��ɽ�д󲿷��˶���֪��},�����������Ϣ������ȥ.�����Ҿ��е�{����}�ǲ���{�·���}������Ϣ����,�ټ��Ͻ����д���{�·���Ǻ���},ʹ���Ҳ��ò�ȥһ��.",
        "�׻�˵֪��֪�治֪��,{ɽ�����ͼ}��ϵ{���ν�ɽ},���˵İ�Σ,��Ϊ���������Ҳ��ò�С�Ĵ���,�·�����С����������,��������ȥ{����}�ٴ�̽��̽,ϣ���·���������׵�!"
    };
    TalkEx("task_19_03", szTalk);
end;

function task_19_03()
    SetTask(TASK_JJC, 20);
    DelItem(2,0,89,1);
    DelItem(2,0,90,1);
    DelItem(2,0,91,1);
    DelItem(2,0,92,1);
    DelItem(2,0,93,1);
    Msg2Player("�ν����ɳ·���й��,ȥ�������ҷ�������");
    TaskTip("�ν����ɳ·���й��,ȥ�������ҷ�������");
    GivePlayerAward("Level_34", "hell", "chest", "Level_35");
	GivePlayerExp(SkeyCDFanzhongyan,"liangshanhaohan2")		--��ɽ�ú�2
end;

function task_20_00()
    local szTalk = {
        "ʩ�����ض���,��֪ʩ���˴���������������Ϊ����?",
        "���º�ؤ��ĳ·���,�´����Щ����,�´����С��{����������ԭ����}����˽�´���Ϊ�˺��Ը�(���ӽ�����������·����ɽ���ν��Գ·���������һ��ԭԭ�������߷���)",
        "ʩ���Դ������Ż��ǲ�����?ʩ�����ĽỹҪ��ʩ���Լ����⿪.���Ŀ��Ը�������һ������.",
        "������Сһֱ��ס������ȴ{ִ�ⲻ�ϳ���},ֱ��17�������������˸�{������������ͭ�˵Ĺ���},�Դ��Ժ����ͳ���ȥ{��������},���ú����Ͱ�������������,������ؤ��,�Ǹ�{����Ҳ��֪����}",
        "��л��ʦָ��!",
        "�����ӷ�!"
    };
    TalkEx("task_20_01", szTalk);
end;

function task_20_01()
    SetTask(TASK_JJC, 21);
    CreateTrigger(0,557,KILL_JJC_TR);
    Msg2Player("ȥ�������ҵ���,����ͭ��,�õ�8��ͭ����Ƭ.");
    TaskTip("ȥ�������ҵ���,����ͭ��,�õ�8��ͭ����Ƭ.");
    GivePlayerAward("Level_36", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"tongrendemimi1")		--ͭ�˵�����1
end;

function task_21_00()
    local szTalk = {
        "��Щͭ����Ƭ�����������,���Ǿ���,����Ҳ����ʶ.",
        "����ʩ����ɽѰһ{��ѧ֮ʿ}�����ܲ��ܽ⿪��������."
    };
    local szMsg = {
        "123."
    };
    if GetItemCount(2,0,94) >= 8 then
        TalkEx("task_21_01", szTalk);
    else
        TalkEx("task_21_02", szMsg);
    end;
end;

function task_21_02()
    if GetTask(KILL_JJC_TR) == 0 then
        CreateTrigger(0,557,KILL_JJC_TR);
    end;
end;

function task_21_01()
    SetTask(TASK_JJC, 22);
    Msg2Player("ȥ�ɶ�����گ��������");
    TaskTip("ȥ�ɶ�����گ��������");
    GivePlayerAward("Level_36", "hard", "head", "Level_38");
	GivePlayerExp(SkeyCDFanzhongyan,"tongrendemimi2")		--ͭ�˵�����2
end;

function task_22_00()
    local szTalk = {
        "ϡ��,����ϡ��.",
        "�벻��������Ҳ����Ƴ����{���������}.",
        "���������������������,���Ӱ�{���װ��Խ��д��������Ų�},���ܻ���ҪһЩʱ��.",
        "�������Ѷ��Ļ�����,����������ȥȡ{��������������ĸ�����ͷ}����."
    };
    TalkEx("task_22_01", szTalk);
end;

function task_22_01()
    Earn(1000);
    SetTask(TASK_JJC, 23);
    DelItem(2,0,94,8);
    Msg2Player("ȥȡ��������������ĸ�����ͷ�������");
    TaskTip("ȥȡ��������������ĸ�����ͷ�������");
    GivePlayerAward("Level_38", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"shizhengshixie1")		--������а1
end;

function task_23_00()
    local szTalk = {
        "��������������˱ȽϷ���.",
        "��Ҳûʲô���ӵ�!"
    };
    local szMsg = {
        "������ȥȡ��������������ĸ�����ͷ����.",
    };
    if GetItemCount(1,1,1) >= 4 and GetItemCount(1,1,6) >= 2 then
        TalkEx("task_23_01", szTalk);
    else
        TalkEx("", szMsg);
    end;
end;

function task_23_01()
    local szTalk = {
        "���������㻹��{�ټ��·���һ��}.",
        "�·�������Ѿ�,�书����!",
        "�����ǲ������������������ս,�ȱ�ȫ�Լ�Ҫ��!"
    };
    TalkEx("task_23_02", szTalk);
end;

function task_23_02()
    DelItem(1,1,1,4);
    DelItem(1,1,6,2);
    SetTask(TASK_JJC, 24);
    Msg2Player("ȥ��������ҵ��·���");
    TaskTip("ȥ��������ҵ��·���");
    GivePlayerAward("Level_38", "hard", "legs", "Level_40");
	GivePlayerExp(SkeyCDFanzhongyan,"shizhengshixie2")		--������а2
end;

function task_24_00()
    local szTalk = {
        "��������ļ�ѽ,Ϊ����׼��ȥ��ɽ������Ϣ,�������.",
        "�ҹ���������Զ����ȥ�˰�.",
        "�����γ�����?",
        "��ʵ������������ԭ��{�Ե�},����{ɽ�����ͼ}һ�±���������{й¶������һƷ�õ�}.",
        "������,��������֤����?",
        "���ѵ�������ȥ,�������������ҵ���������Ĺ�ͨ��֤��,����ȫ���ֶ�֪������{���ĵ��Ե���},�·����㻹�Ǻ��һ�ȥ�������ֹ��ð�!",
        "������,���ֹ���!�㵱�����������ĵ��Ե�?��֪�����ж�ô����һ��������?Ϊ���Ҳ��Ǻ���,������,����,������,Ҳ��!��Ȼ��֪����,Ҳ�Ͳ�����ɽ��,����,����,��������!"
    };
    TalkEx("task_24_01", szTalk);
end;

function task_24_01()
    CreateTrigger(0,558,KILL_JJC_JK);
    CreateTrigger(0,559,KILL_JJC_DJ);
    SetTask(TASK_JJC, 25);
    Msg2Player("����10������8������");
    TaskTip("����10������8������");
    GivePlayerAward("Level_40", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"zhenshishenfen1")		--��ʵ���1
end;

function task_25_00()
    local szMsg = {
        "��ȥ����10������8������!"
    };
    TalkEx("task_25_01", szMsg);
end;

function task_25_01()
    if GetTask(TASK_JJC_JK) == 0 and GetTrigger(KILL_JJC_JK) == 0 then
        CreateTrigger(0,558,KILL_JJC_JK);
    end;
    if GetTask(TASK_JJC_DJ) == 0 and GetTrigger(KILL_JJC_DJ) == 0 then
        CreateTrigger(0,559,KILL_JJC_DJ);
    end;
end;

function task_27_00()
    local szTalk = {
        "�벻�����ղ����������书��Ȼ��˳���,������ʤ������һ��һ�ĺ���.",
        "Ҳ��!",
        "����{����һս}��������!"
    };
    TalkEx("task_27_01", szTalk);
    SetTask(TASK_JJC_TEMP, GetTargetNpc());
end;

function task_27_01()
    
    ChangeNpcToFight(GetTask(TASK_JJC_TEMP));

--    SetTask(TASK_JJC, 28);
--    --log������
--    CreateTrigger(3, 205, LEAVE_GAME_JJC);
--    SetLogType(GetTrigger(LEAVE_GAME_JJC), 1); --����Ϊ�ų�����
--    
--    --rect ������
--    CreateTrigger(2,1302,LEAVE_RECT_JJC);
--    
--    SetDeathScript("\\script\\task\\world\\lizhi_�����\\task_Death.lua");
    Msg2Player("��ɱ�·���");
    TaskTip("��ɱ�·���");
end;

function task_29_00()
    local szTalk = {
        "�´��,��,�·���,�ұ���ֻ������һ����,˭֪�����������Ե�.",
        "�Ե�Ҳ��,�����Ե�Ҳ��,{ֻҪ�Ҳ��Ǻ���},������ԭ���ֻ���û���ŷ��ҵ�,���������ָ��õĽ���!",
        "......",
        "������������,����ǰ����һ��{��Ը},������д�����ַ��ɵ�{����},�������������ת��������,��˵�ҳ·���Բ����ʦ!",
        "����İ�!������Ի�����͵���.",
        "���ҾͿ��԰��ĵ�ȥ��!",
        "...."
    };
    TalkEx("task_29_01", szTalk);
    SetTask(TASK_JJC, 30);
    AddItem(2,0,95,1);  --�����ֵ���
    AddItem(2,0,96,1);  --��ؤ�����
end;

function task_29_01()
    Msg2Player("���·�������齻�����ַ���");
    TaskTip("���·�������齻�����ַ���");
    GivePlayerAward("Level_40", "hell", "weapon", "Level_40");
	GivePlayerExp(SkeyCDFanzhongyan,"zhenshishenfen2")		--��ʵ���2
end;

function task_30_00()
    local szTalk = {
        "��ʦ,�����г·��������½�����ʦ��һ����,���Ŀ.������ǰ��Դ�ʦ˵һ���Բ���.",
        "��,����������...��л������,��������֮����������������{һ������}�������ĸ���.",
        "����,����ĪҪ����,�ұ��ѳ·����{��������ĺ���},���ֵ����,������....."
    };
    TalkEx("task_30_01", szTalk);
end;

function task_30_01()
    local szTalk = {
        "����ʩ����δ��͸,��ʵ������ǰЩ���Ӱݷ�����ʱ,�Դ��о����Ի������,����ȻΪ����һƷ���Ե�,���⺢��{������ֱ},�����ܷ���ѧѬ��,�ֱ������첻�Ƴ���,ί�Դ���.��������֪��������������ԭ����֮��,Ҳ����Ϊ����������,���İ�������Ҳ���������Բ����Լ����ҵ���,{�˼��ʹ���������ͨ����������}.������ѡ���������˽���ì�������һ��,����˵�ǰ�������������������{����}���������֤��.",
        "��Щ��ʦָ��,Ҳ��������������ǳ,��δ��������,��Ҫ���������������е�����.{�����ȥ,Ψ������},ϣ���·����Ѿ����׵ķ�����,�����!",
        "�����ӷ�!��������������ת����ؤ�����{������}!"
    };
    TalkEx("task_30_02", szTalk);
end;

function task_30_02()
    SetTask(TASK_JJC, 31);
    DelItem(2,0,95,1);
    Msg2Player("���·�������齻��ؤ�����");
    TaskTip("���·�������齻��ؤ�����");
    GivePlayerAward("Level_40", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"qingfengfeiyang1")		--������1
end;

function task_31_00()
    local szTalk = {
        "[���·�������齻��ؤ�����������]",
     };
    TalkEx("task_31_01", szTalk);
end;

function task_31_01()
    local szTalk = {
        "��!����ﰡ.....",
    };
    TalkEx("task_31_02", szTalk);
end;

function task_31_02()
    local szTalk = {
        "��л����!.",
        "����ؤ��Ƿ����һ������,�������������Ҫ�����ĵط�,��ʱ��ؤ�����Ͻл���",
        "{�˼�����,ȥ��������}"
    };
    TalkEx("task_31_03", szTalk);
end;

function task_31_03()
    SetTask(TASK_JJC, 32);
    DelItem(2,0,96,1);
    GivePlayerAward("Level_40", "normal");
	GivePlayerExp(SkeyCDFanzhongyan,"qingfengfeiyang2")		--������2
end;

function task_32_00()
    local szTalk = {
        "��л����,!",
        "Tr�n ��i ca! May qu? huynh �y c�n s�ng!",
        "Th? ch? nh�n l�m ng��i ch�ng? B�n t�ng l? V�n Du t�ng nh�n, ph�p hi�u Thanh Phong",
        "Xin l�i ��i s?!"
    };
    TalkEx("", szTalk);
end;

function task_32_zgq()
    local szTalk = {
        "û�뵽��Ȼ����������������,�·���....��!��Щ���Ӷ�л������!"
    }
    TalkEx("task_32_01", szTalk);
end;

function task_32_01()
    SetTask(TASK_JJC, 33);
    GivePlayerAward("Level_40", "hard", "legs", "Level_49");
	GivePlayerExp(SkeyCDFanzhongyan,"qingfengfeiyang3")		--������3
end;

function task_33_00()
    local szTalk = {
        "û�뵽��Ȼ����������������,�·���....��!��Щ���Ӷ�л������!"
    }
    TalkEx("", szTalk);
end;