
-- ====================== �ļ���Ϣ ======================

-- ������ԵonlineII Ȫ�� 14 ����������ű�
-- Edited by lizhi
-- 2005-8-4 10:38
-- ======================================================

-- ���������ļ�
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\lizhi_Ȫ��\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");

function can_not_accept_task()
    local szTalk = {
        "�ҿ��ܵ���ô���ܵı�����ô�ͱ�͵����?"
    };
    TalkEx("", szTalk);
end;

function task_000_00()

    local szTalk = {
        "��˵��ı��ⱻ͵�ˣ������ڵ���������飬�ܸ�����ϸ˵һ����?",
        "�������죬��һ�𴲣����ҵĹܼ����ܼң�����û�˴�Ӧ���Ҿ;�������ˡ���������һ�������Ķ����������ˣ��Ѿ����̸���·����",
        "Ȼ����?",
        "���ʱ���ҵ�Ѿ��Ǯ��ͻŻ����ŵ��ܽ���˵:·���ⷿ��ʱ�����ҵĿⷿ�����ǿ��ġ��ҵĿֻⷿ����һ������Կ�װ����Ҹ�æȥ�������ô󲿷ֶ��������ڡ�",
        "�ǵ�������ʲô������?�������ܼ�͵����?���¹�����һ����������ͨͨ�����ˣ����ǿ�ϧ������ɫ���ǲ����������Ҵ��������!˵����֣�ֻ�����Լ����пⷿ��Կ�װ���������ô���Ŵ򿪵���?���ˣ��������ܼҵķ����﷢����һ���ź���Ӧ��������æ��ʧ�ġ�������������ˮ��ּ��Ѿ�ģ���ˡ�����ȥ����ɡ�"
    };
    
    TalkEx("task_001_00", szTalk);
end;

function task_001_00()
    local szMsg = {
        "��ȥ��Ȫ�ݸ��������ܱ�ٰɡ��ҿ������ǿ�һЩ�žɵ�����:��Ӧ��֪����ô�޸�����š�",
    };
    
    TalkEx("", szMsg);

	Msg2Player("ȥ�������ܱ�ٿ����ܲ����޸������");
	TaskTip("ȥ�������ܱ�ٿ����ܲ����޸������");
	
	AddItem(2, 0, 38, 1);   --ģ��������
	
	SetTask(TASK_LEV_14_ID, 1);
	SetTask(TASK_LEV_12_ID, GetTask(TASK_LEV_12_ID) + 1);   --�����������
end;


function task_001_01()

    local szTalk = {
        "Ng��i th? ��n t�m Chu B�n C? (162.185), bi�t ��u kh�i ph�c ���c b�c th?."
    };

    TalkEx("", szTalk);
end;

function task_001_02()

    local szTalk = {
        "���ʣ�����һ�����ţ���С��������ˮ�У��ɷ�����޸���ʶһ��?",
        "�⵹���ѡ�������Ҫ�Ĳ��Ͽɲ�̫���ң���Ҫ�ݼ���1�š����и���Ұ�����ϵ���ļ�ϸ��Ұ��ë�������������ë��",
        "����ð죬��ȥȥ������"
    };
    
    TalkEx("task_002_00",szTalk);
end;

function task_002_00()

    Msg2Player("ȥ�ռ��޸�������Ҫ�Ĳ���");
    TaskTip("ȥ�ռ��޸�������Ҫ�Ĳ���");
    CreateTrigger(0, 194, 84);  --ɱ��Ұ��
    SetTask(TASK_LEV_14_ID, 2);
end;

function task_002_01()
    
    local szNotFinished = {
        "���ϻ�û���ռ�����?"
    };
    local szMaleFinished = {
        "���ˣ��͵���Щ���ϣ���һ�£�����Ͱ����޸���",
        "?.",
        "�Ѿ��޸����ˣ��Ǻǣ�д����{Ȫ�ݸ������ϵط���}."
    };
    local szFemaleFinished = {
        "���ˣ��͵���Щ���ϣ���һ�£�����Ͱ����޸���",
        "?.",
        "�Ѿ��޸����ˣ��Ǻǣ�д����{Ȫ�ݸ������ϵط���}."
            };
        
    local nPen = 0;
    local nPaper = 0;
    local nHair = 0;
    
    nPen = GetItemCount(2, 2, 65);     --���ֽ
    nPaper = GetItemCount(2, 2, 30);  --��ɰ
    nHair = GetItemCount(2, 0, 39);     --��ϸ��Ұ��ë
    
    if ((nPen >= 1) and (nPaper >= 1) and (nHair >= 1)) then
        if (GetSex() == 1) then
            TalkEx("task_003_00", szMaleFinished);
        elseif (GetSex() == 2) then
            TalkEx("task_003_00", szFemaleFinished);
        end;
    else
        TalkEx("task_003_10", szNotFinished);
    end;
end;

function task_003_10()
    if GetTrigger(84) == 0 then
        CreateTrigger(0, 194, 84);  --ɱ��Ұ��
    end;
end;

function task_003_00()

    GivePlayerAward("Level_14", "easy");    --����
	GivePlayerExp(SkeyQZWangyewei,"jiayouneizei1")		--��������1
    SetTask(TASK_LEV_14_ID, 3);
    
    DelItem(2,2,65,1);
    DelItem(2,2,30,1);
    DelItem(2,0,39,1);
    DelItem(2, 0, 38, 1);   --ģ��������
    RemoveTrigger(GetTrigger(84));

end;

function task_003_01()
    
    local szTalk = {
        "д����{Ȫ�ݸ������ϵط���}!"
    };
    TalkEx("", szTalk);

end;

function task_003_02()
    
    local szTalk = {
        "���ܼң���Ϊ͵�˶����Ϳ���͵͵���ô?˵��־ǿ����������ص�������?��˭Ҫ�����ģ�",
        "Ӣ�ۣ���Ҫɱ�Ұ�����˵���Ҷ�˵��",
        "��˵!",
        "��Ȫ�ݸ����������Ҹɵİ�����˵��ǰ������ү������ʱ��͵͵����һ��Կ�ף���˵�³�֮����Ҵ�ͷ�������ղű��������ˣ���ʲô�����������ɡ�����������!",
        "�����ȷŹ��㣬�Ժ󱾷ָɻ��Ҫ����͵������֮��!"
    };
    TalkEx("task_004_00", szTalk);
end;

function task_004_00()

    GivePlayerAward("Level_14", "hard", "weapon", "Level_16");    --����
	GivePlayerExp(SkeyQZWangyewei,"jiayouneizei2")		--��������2
    SetTask(TASK_LEV_14_ID, 4);
    SetTask(TASK_LEV_18_ID, 100);   --Ȫ���ӷ�������
end;

function task_004_01()
    
    local szTalk = {
        "�����ӷ�Ҫ�Ҹɵİ���������Ȫ�ݸ�������������!"
    };
    TalkEx("", szTalk);
end;