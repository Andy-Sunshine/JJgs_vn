
-- ====================== �ļ���Ϣ ======================

-- ������ԵonlineII Ȫ�� 10 ����������ű�
-- Edited by peres
-- 2005/07/19 PM 19:29

-- ֻ��������������
-- �����మ
-- ���ǵ�
-- �����ָ�Ħ������Ƥ���ϵ�����
-- ������������Ⱥ������ӹ�
-- ��������������ı���ͷ���
-- ����˯ʱ������ӳ�������
-- ���ǵã��峿���ѹ�����һ�̣������������
-- �������۾��������͸������һ��һ����������
-- ����������Ϊ�Ҹ�����ʹ

-- ======================================================

-- ���������ļ�
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\lizhi_Ȫ��\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");

function can_not_accept_task()
    local szTalk = {
        "H�ng h�a ta m�t h�t r�i, sao v? D��ng Ch�u ��y!"
    };
    TalkEx("", szTalk);
end;

function task_000_00()

local strMain = {
	"�ұ������ݳǵ���ʿ��ר�������������������һ����������ɫ�������˵�Ȫ��׬ЩС�ơ�����ո��ߵ�Ȫ�ݸ��ǽ��ҵ�{�����̻�}��Ϊ��{��å}���ٶ�ɢ�����⽼�������ˣ��������һ�º�ô?",
	"�ã���ȥȥ����/task_000_01",
	"�һ��б����/Task_Exit"
}

SelectSay(strMain);

end;

function task_000_01()
	Msg2Player("ȥ��å��������20�������̻�");
	TaskTip("ȥ��å��������20�������̻�");
	CreateTrigger(0, 189, 80);
	SetTask(TASK_LEV_10_ID, 1);
end;


function task_001_00()

local strMain = {
	"���ռ����Ҷ�ʧ�������̻�����?",
	"�ţ����պ�/task_001_01",
	"��û�У����ٵ�һ��/task_001_03"
}

SelectSay(strMain);

end;

function task_001_01()

    local strMain = {
    	"��ʵ�Ҷ�ʧ����������!",
    	"����Ҫ�����ҵ��˱��� {Ҧ����}�����ˣ������ܷ����Ѱ���˱���."
    };
    local szNotHaveEnough = 
    {
        "Ng��i ch�a t�m �� 20 m�n �� {b�ng ng�c}, ��i t�m �� m�i nh�n th? lao."
    };

    local szMsg = "C? v�t ph�m";
    local nItemCount = GetItemCount(2, 1, 154);
    --Msg2Player(szMsg..nItemCount);
	if nItemCount >= 20 then
		TalkEx("task_001_02", strMain);
	else
		TalkEx("task_001_03", szNotHaveEnough);
	end;
end;

function task_001_03()
    if GetTrigger(80) == 0 then
        CreateTrigger(0, 189, 80);
    end;
end;

-- ������񣬷������������ȥ��Ҧ����
function task_001_02()
    DelItem(2, 1, 154, 20);
	SetTask(TASK_LEV_10_ID, 2);
	GivePlayerAward("Level_10", "easy");    --����
	GivePlayerExp(SkeyQZWangyewei,"yuqishanghuo1")		--�����̻�1
	RemoveTrigger(GetTrigger(80));
	
	Msg2Player("ȥȪ�ݸ��� (198.188)��Ҧ�����û��˱�");
	TaskTip("ȥȪ�ݸ��� (198.188)��Ҧ�����û��˱�");
	
end;

--�ӵ�ɱҦ�������񣬵���û��ɱ��ʱ���NPC�Ի�
function task_002_00()

    local szMain = 
    {
        "��˵������Ҧ���Ͼ���Ȫ�ݸ�������������ֻ��˱���!"
    }
    TalkEx("", szMain);
end;

function task_003_00()
    
    local strMain = {
    	"Ŷ?�������ҵ��˱��������������Ǹм��������������һ�����°���",
    	"Ҧ����ΪʲôҪ�������أ�����Ҫ����˱���ʲô��?",
    	"��ȥ����{�Ľ�}��!����������ܺ���Щ��å������һ��Ҳ���֪��һЩʲô��"
    }
    
    TalkEx("task_003_01", strMain);

end;

-- ������񣬷���
function task_003_01()

	SetTask(TASK_LEV_10_ID, 4);
	SetTask(TASK_LEV_12_ID, 100);   --����Ȫ�������Ľܲ���
	DelItem(2, 0, 32, 1);
	GivePlayerAward("Level_10", "hard", "weapon", "Level_10");    --����
	GivePlayerExp(SkeyQZWangyewei,"yuqishanghuo2")		--�����̻�2
	Msg2Player("ȥȪ��(166.182)Ѱ���Ľ�");
	TaskTip("ȥȪ��(166.182)Ѱ���Ľ�");

end;

function task_004_00()
    
    local strMain = {
        "����ô����ô��ùѽ!"
    }
    TalkEx("",strMain);
end;

function Task_Exit()

end;