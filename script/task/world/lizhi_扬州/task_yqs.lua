--ʹ���������Ժ�ִ�еĽű�
--created by lizhi
--2005-9-1 16:14

Include("\\script\\task\\world\\task_var_id.lua");
Include("\\script\\task\\world\\task_head.lua");

function OnUse()
    local szMsg = {
        "������ʤ���ľ����ţ�ȥ�������ݵķ�ͮ��!"
    }
    if GetTask(TASK_YZ_ONE) == 0 then
        TalkEx("task_00_01", szMsg);
    end;
end;

function task_00_01()
    SetTask(TASK_YZ_ONE, 1);
    Msg2Player("�����Ž������ݵķ�ͮ���u");
    TaskTip("�����Ž������ݵķ�ͮ���u");
end;