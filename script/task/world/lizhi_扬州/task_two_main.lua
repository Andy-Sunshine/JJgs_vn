--���������֧
--created by lizhi
--2005-9-1 10:21

Include("\\script\\task\\world\\task_var_id.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");
Include("\\script\\task\\world\\task_trigger_list.lua");

--------------------------------------------���ݷ�֧��--------------------------------------

function task_01_00()
    local szTalk = {
        "���ٽ��룿Ϊ�����������������ŵ�������",
        "Ŷ��������ö���ٽ���ɱ������",
        "������飬ȷʵ�б�Ҫ�úò�һ�顣",
        "��������ȥ���������Ы����ȡ��20����Ыβ�뽻����!",
    };
    TalkEx("task_01_01", szTalk);
end;

function task_01_01()
    RemoveTrigger(GetTrigger(TALK_YZ_TC));
    DelItem(2,0,100,1);
    SetTask(TASK_YZ_TWO, 2);
    CreateTrigger(0,536,KILL_YZ_TX);
    Msg2Player("ȥ���������Ы����ȡ��20����Ыβ��");
    TaskTip("ȥ���������Ы����ȡ��20����Ыβ��");
    GivePlayerAward("Level_36", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"zuichaanqi1")		--׷�鰵��1
end;

function task_02_00()
    local szTalk = {
        "���黹��Ҫһ��ʱ�䣬������ȥ���ݿ����Ƿ�������������԰�æ�ѣ�"
    };
    local szNot = {
        "N�u nh? th�y kh? t�m �u�i b? c�p th? c? n�i v�i ta nh?!"
    };
    if GetItemCount(2,0,102) >= 20 then
        TalkEx("task_02_01", szTalk);
    else
        TalkEx("task_02_02", szNot);
    end;
end;

function task_02_02()
    if GetTrigger(KILL_YZ_TX) == 0 then
        CreateTrigger(0,536,KILL_YZ_TX);
    end;
end;

function task_02_01()
    RemoveTrigger(GetTrigger(TALK_YZ_TC));
    DelItem(2,0,102,20);
    SetTask(TASK_YZ_TWO, 3);
    SetTask(TASK_YZ_THREE, 1);  --�������ݷ�֧��
    Msg2Player("ȥ���ݿ�����û�б���¿��԰�æ");
    TaskTip("ȥ���ݿ�����û�б���¿��԰�æ");
    GivePlayerAward("Level_36", "hard", "chest", "Level_36");
	GivePlayerExp(SkeyYZxiahouqin,"zuichaanqi2")		--׷�鰵��2
end;

function task_04_00()
    local szTalk = {
        "�����������ã����Ѳ�������������˳�����������Ϊ��",
        "������ȥ����ɽ�������ʸ����ס�"
    };
    TalkEx("task_04_01", szTalk);
end;

function task_04_01()
    RemoveTrigger(GetTrigger(TALK_YZ_TC));
    SetTask(TASK_YZ_TWO, 5);
    Msg2Player("ȥ����ɽ������̸̸");
    TaskTip("ȥ����ɽ������̸̸");
    GivePlayerAward("Level_50", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"zuichaanqi3")		--׷�鰵��3
end;

function two_05_00()
    local szTalk = {
        "Ϊʲôɱ����ʤ��",
        "û�뵽������Ȼ�ܲ鵽��������",
    };
    TalkEx("two_05_01", szTalk);
end;

function two_05_01()
    local szTalk = {
        "��ʵ��ʤͶ�������ţ�������һЩ�����ԭ��",
        "����ˡ�Ҳ���������ֱ�ԡ�",
        "������ȥ���ĺ���̸̸��",
        "���������д��ϵ!",
    };
    TalkEx("two_05_02", szTalk);
end;

function two_05_02()
    SetTask(TASK_YZ_TWO, 6);
    Msg2Player("ȥ���ݸ����ĺ���̸̸");
    TaskTip("ȥ���ݸ����ĺ���̸̸");
    GivePlayerAward("Level_50", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"dezhizhenxiang1")		--��֪����1
end;

function two_06_00()
    local szTalk = {
        "û�뵽����û������������",
        "��ʵ��Ҳ���ҵĿ��ԡ�",
        "������������ϣ������֪��ԭ����ܹ����ܡ�",
    };
    TalkEx("two_06_01", szTalk);
end;

function two_06_01()
    local szTalk = {
        "������С���ڳ��ˡ�",
        "����ǿʢ�����Ż������Щ��Ѫ��֮����",
        "����ʤͶ�������ţ���ʵҲ������������һЩѪ��֮��",
        "����ҲŻ��������ڰ�����ɱ����",
        "��������Ϊ��!"
    };
    TalkEx("two_06_02", szTalk);
end;

function two_06_02()
    SetTask(TASK_YZ_TWO, 7);
    GivePlayerAward("Level_50", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"dezhizhenxiang2")		--��֪����2
end;

function two_07_00()
    local szSay = {
        "�����Ƿ���������Ѫ��",
        "����Ѫ��ʲô��/about_chj",
        "��ȷʵ���������Ѫ/about_xhl"
    };
    SelectSay(szSay);
end;

function about_chj()
    local szTalk = {
        "�����������⣬������Ѫ�����д��ã�"
    };
    TalkEx("", szTalk);
end;

function about_xhl()
    local szSay = {
        "�����ܷ� {����Ѫ} �����أ�",
        "����Ѫ�������ã����͸�����/have_one",
        "�Ҳ������/have_none"
    };
    SelectSay(szSay);
end;

function have_one()
    local szTalk = {
        "����Ѫ�Ҿ�������.",
        "�ڴ���������л����!"
    };
    TalkEx("task_07_01", szTalk);
end;

function task_07_01()
    SetTask(TASK_YZ_TWO, 8);
    DelItem(2,0,150,1);
end;

function have_none()

end;