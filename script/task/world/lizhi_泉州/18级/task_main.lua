
-- ====================== �ļ���Ϣ ======================

-- ������ԵonlineII Ȫ�� 18 ����������ű�
-- Edited by lizhi
-- 2005-8-4 16:36
-- ======================================================

-- ���������ļ�
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\lizhi_Ȫ��\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");
Include("\\script\\task\\world\\lizhi_������\\task_head.lua");

function can_not_accept_task()
    local szTalk = {
        "������ʲô����?"
    };
    TalkEx("", szTalk);
end;

function task_000_00()
    local szTalk = {
        "��˵��־ǿ�ҵ�ʧ�԰�������ı�ģ�˵��ΪʲôҪ͵��־ǿ�ҵĶ�����",
        "����Ҳ��������ȫ˵�ˣ���һ���������İ������ȵģ�͵ʲô������������������ͻȻ��һ�������ˣ��������ҵ����ӣ�һ��Ҫ��ȥ͵���̴�־ǿ�������������",
        "��������ô�õ���־ǿ�ұ����Կ�׵��أ�",
        "��־ǿ�ӵ��������Ҵ�ģ����и�ϰ�ߣ������˴��������һ��Կ�ף�Ҳ��֪����������ô֪�������ϰ�ߵģ���˵���Ѷ���Ū��������Ҫɱ���ҵ����ӣ��������Υ����",
        "���֪����˵�����˭��ʲô����������������?",
        "������ʱ��͵͵�������˽�����ΰ�գ�������һ����̵�СͷĿ��������Ӧ����Ȫ�ݸ����u",
        "�ã������Ϲ�ȥ����."
    };
    
    TalkEx("task_001_00", szTalk);
    
end;
    
function task_001_00()

    Msg2Player("ǰ��Ȫ�ݸ���(179.180)�ҵ���ΰ��");
    TaskTip("ǰ��Ȫ�ݸ���(179.180)�ҵ���ΰ��");
    --CreateTrigger(0, 195, 85);  --ɱ����ΰ��
    KillFollower();
    SetTask(TASK_LEV_18_ID, 1);
    SetTask(TASK_LEV_14_ID, GetTask(TASK_LEV_14_ID) + 1);   --�����������
    
end;

function task_001_01()
    local szTalk = {
        "��ı����ΰ�թu���ٳ����ҵ�ϱ��������Ȫ�ݸ����������ǣ�������һ��Ҫ���Ұ���"
    };
    TalkEx("task_001_02", szTalk);
end;

function task_001_02()
--    if GetTrigger(85) == 0 then
--        CreateTrigger(0, 195, 85);  --ɱ����ΰ��
--    end;
	KillFollower();
end;

function task_002_00()
    local szTalk = {
        "���Ѿ��������������!"
    };
    TalkEx("task_003_00", szTalk);
end;

function task_003_00()
    KillFollower();
    RemoveTrigger(GetTrigger(86));
    RemoveTrigger(GetTrigger(87));
    GivePlayerAward("Level_18", "hell", "chest", "Level_19");    --����
	GivePlayerExp(SkeyQZWangyewei,"zongfangdekunao")		--�ӷŵĿ���
    SetTask(TASK_LEV_18_ID, 3);
end;

function task_003_01()
    local szTalk = {
        "��i nh�n r�nh r�i ��n Tuy�n Ch�u th��ng ngo�n m�t chuy�n!"
    };
    TalkEx("task_001_02", szTalk);
end;
