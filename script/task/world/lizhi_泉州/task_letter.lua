--  �ļ�˵��
--  ʹ����ΰ�յ��غ��Ժ󴥷��Ľű��ļ�
--  Created by lizhi
--  2005-8-4 21:13

Include("\\script\\task\\world\\lizhi_������\\task_head.lua");
Include("\\script\\task\\world\\task_head.lua");

function OnUse()

    local szMsg = {
        "�����Ѿ���ȫת�ơ�",
        "����������ݸ����ĺ����ǳ����ŵ�{�����黭}֮һ,�����ϸ����Ľ�ͷ�����繤����Ҫ�Ͽ������",
        "���ǸϿ�ȥ֪ͨ{���ݸ�}��{�ĺ���}."
    };
    local nStep;
    
    nStep = GetTask(TASK_THREE);
    if (nStep == 0) then
        Msg2Player("ȥ֪ͨ���ݸ����ĺ���");
        TaskTip("ȥ֪ͨ���ݸ����ĺ���");
        SetTask(TASK_THREE, 1);
        TalkEx("", szMsg);
    elseif nStep == 1 then
        Msg2Player("ȥ֪ͨ���ݸ����ĺ���");
        TaskTip("ȥ֪ͨ���ݸ����ĺ���");
    end;

end;