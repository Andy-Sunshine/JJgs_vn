--���ٽ���
--created by lizhi
--2005-9-1 16:39

Include("\\script\\task\\world\\task_var_id.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\task_trigger_list.lua");

function OnUse()
    local szMsg = {
        "��������ʤʬ�����Ϸ��ֵķ��ٽ��룬�������ǳ������ţ�׷��һ�£������ܹ��ҵ�����!"
    };
    if GetTask(TASK_YZ_TWO) == 0 then
        TalkEx("task_00_01", szMsg);
    end;
end;

function task_00_01()
    SetTask(TASK_YZ_TWO, 1);
    Msg2Player("ȥ�������ƴ���æ׷�鰵����ʹ����");
    TaskTip("ȥ�������ƴ���æ׷�鰵����ʹ����");
end;
