--���ص�ͼ
--created by lizhi
--2005-9-1 20:05

Include("\\script\\task\\world\\task_award.lua")
Include("\\script\\task\\world\\task_var_id.lua");
Include("\\script\\task\\world\\task_trigger_list.lua");

function OnUse()
    if GetTask(TASK_FIVE) == 25 and GetItemCount(0,200,13) >= 1 then
        local nMapid, nX, nY = GetWorldPos();
        local nDist = DistanceBetweenPoints(nMapid, nX, nY, 107, 1337, 3132);
        if nDist >= 0 and nDist <= 16 then
            AddItem(2,0,106,1);
            DelItem(2,0,105,1);
            DelItem(0,200,13,1);
            SetTask(TASK_FIVE, 26);
            Msg2Player("�ڵ������ر�������ĺ��ٰ�");
            TaskTip("�ڵ������ر�������ĺ��ٰ�");
        else
            Msg2Player("�����ַ���ԣ��ڲ�������");
            TaskTip("�����ַ���ԣ��ڲ�������");
        end;
    else
        Msg2Player("��n T�p h�a mua Cu�c tr��c ��!");
        TaskTip("��n T�p h�a mua Cu�c tr��c ��!");
    end;
end;