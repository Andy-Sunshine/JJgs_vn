--  ===============�ļ���Ϣ=================
--  ������ԵonlineII Ȫ�� 12 ����������ű�
--  Edited by lizhi
--  2005-8-2 15:36
--  ========================================

-- ���������ļ�
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\lizhi_Ȫ��\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");

function can_not_accept_task()
    local szTalk = {
        "�㻹��ʲô���飿"
    };
    TalkEx("", szTalk);
end;

function task_000_00()
    local szTalk = {
        "��˵����Ҧ���������������飬�����ٹ�һ�����̣�",
        "����˭������Ҧ����������ڵ�ô����ʲô��û������ʲô��û����!",
        "û��ϵ����ֻ��������ʣ��ҼȲ���Ҧ���������ģ�Ҳ���ǹٷ����ˣ�����ĺ��ˣ���ֻ�����˽�һЩ���顣",
        "����ô�����������أ�Ȫ�ݽ�������å��ʵ����Ҧ���ǵ����£���ȥ���� {10����å} �� {10������}�Ҿ�������!",
    };
    TalkEx("task_001_00", szTalk);
end;

function task_001_00()
    
	Msg2Player("ȥ����10����å��10������");
	TaskTip("ȥ����10����å��10������");
	
	CreateTrigger(0, 191, 81);  --ɱ����å10��
	CreateTrigger(0, 192, 82);  --ɱ������10��
	
    SetTask(TASK_LEV_12_ID, 1);
    SetTask(TASK_LEV_10_ID, GetTask(TASK_LEV_10_ID) + 1);   --�����������
    
end;

function task_001_01()
    
    local szTalk = {
        "����{10����å}��{10������}!"
    };
    TalkEx("task_001_02", szTalk);
end;

function task_001_02()
    if GetTrigger(81) == 0 then
        CreateTrigger(0, 191, 81);  --ɱ����å10��
    end;
    
    if GetTrigger(82) == 0 then
        CreateTrigger(0, 192, 82);  --ɱ������10��
    end;
end;

function task_003_00()

    local szTalk = {    
        "����İ쵽������ʵ��Ҳ���������Ҧ�������£���Ҳ֪���������ã������Ҽ������ӵ����˺�������Ҫ��ҩ���Ҹ���Ū��������Ҧ����˵ֻҪ�Ҹ������£��Ͱ���Ū��ҩ��",
        "��ô������Ҫʲôҩ����?",
        "���˵��Ҫ�� {Ȫ�ݸ���}ȡ�� {����}, {���}, {����}, {����}, {������}�� {3��}��",
        "�β�Ҫ��������ȥ�������Ҫ��ҩ���õ�����������ӣ�������һ�����˵��!"
    };
    TalkEx("task_004_00", szTalk);
end;

function task_004_00()

    Msg2Player("ȥȪ�ݸ����ɼ�ҩ���Լ�10����ë");
    TaskTip("ȥȪ�ݸ����ɼ�ҩ���Լ�10����ë");
    
    CreateTrigger(0, 193, 83);  --ɱ��ҩ��
    SetTask(TASK_LEV_12_ID, 4);
    GivePlayerAward("Level_12", "easy");    --����
    GivePlayerExp(SkeyQZWangyewei,"xiajiedekuzhong1")		--�ĽܵĿ���1
end;

function task_004_01()
    
    local szFinished = {
        "��ô����ռ����ˣ�",
        "����лл�����ˣ�",
        "���˰�����ҩ�Ķ����������ˣ�С�˵������������㣬����Ϲ���۰���",
        "�Ҷ�����˵�˰ɡ�",
        "Ҧ���Ǻ�����һ��ʲô {���}��СͷĿ�����ڵõ���Ϣ˵��ʲô{ɽ�����ͼ��Ƭ}��������һ������ҵΰ�����˵Ļ����Ҫ��һ��ҪŪ���֡�",
        "�ƺ�Ҧ���������ٵ��Ļ������沢û���ҵ�ɽ�����ͼ��Ƭ�����Ա㿪ʼ����ҵΰ���˱����������ѻ���������˭�����ҵ�ȥ����",
        "��ô�˱��ϵ��˶���Σ�գ���ȥ��ҵΰ���￴�������˱���������������˵������ɣ�!"
    };
    local szNotFinished = {
        "���ϻ�û���ռ�����"
    };
    local nQingCount = 0;
    local nGeCount = 0;
    local nPeiCount = 0;
    local nLianCount = 0;
    local nJinCount = 0;
    local nMaoCount = 0;
    
    nQingCount = GetItemCount(2, 0, 33);    --����
    nGeCount = GetItemCount(2, 0, 34);      --���
    nPeiCount = GetItemCount(2, 0, 35);     --����
    nLianCount = GetItemCount(2, 0, 36);    --����
    nJinCount = GetItemCount(2, 0, 37);     --������
    nMaoCount = GetItemCount(2, 1, 5);      --��ë
    
    if ((nQingCount >= 3) and (nGeCount >= 3) and (nPeiCount >= 3) and (nLianCount >= 3) and (nJinCount >= 3) and (nMaoCount >= 10)) then
        TalkEx("task_005_00", szFinished);
    else
        TalkEx("task_005_01", szNotFinished);
    end;

end;

function task_005_01()
    if GetTrigger(83) == 0 then
        CreateTrigger(0, 193, 83);  --ɱ��ҩ��
    end;
end;

function task_005_00()
    GivePlayerAward("Level_12", "hard", "head", "Level_13");    --����
	GivePlayerExp(SkeyQZWangyewei,"xiajiedekuzhong2")		--�ĽܵĿ���2
    SetTask(TASK_LEV_12_ID, 5);
    --ɾ���������
    DelItem(2, 0, 33, 3);
    DelItem(2, 0, 34, 3);
    DelItem(2, 0, 35, 3);
    DelItem(2, 0, 36, 3);
    DelItem(2, 0, 37, 3);
    DelItem(2, 1, 5, 10);
    RemoveTrigger(GetTrigger(83));  --ɾ����ҩ������
end;