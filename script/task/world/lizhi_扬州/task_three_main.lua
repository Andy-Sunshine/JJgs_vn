--���������֧
--created by lizhi
--2005-9-2 10:12

Include("\\script\\task\\world\\task_var_id.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");
Include("\\script\\task\\world\\task_trigger_list.lua");

---------------------------------------���ݷ�֧��-------------------------------------

function task_01_00()
    local szTalk = {
        "������̫��ù��!",
        "��ǰ����ȥ����ɽ��ҩ",
        "ɽ�ϵ�Ұ�޲�֪��Ϊ�α���������Ϯ�����ң����������ˣ����Ѱ��������ˣ������ܷ�����һ�����",
        "�����ȥ��!"
    };
    TalkEx("task_01_01", szTalk);
end;

function task_01_01()
    SetTask(TASK_YZ_THREE, 2);
    CreateTrigger(0,538,KILL_YZ_BG);
    Msg2Player("ȥ����ɽ�һ��Ų����İ���");
    TaskTip("ȥ����ɽ�һ��Ų����İ���");
end;

function task_02_00()
    local szMsg = {
        "��û���ҵ�{�ҵİ���}��?���Ͷ�������ɽ��ˮ������!"
    }
    local szTalk = {
        "������Ҷ�ʧ�İ���!",
        "��л���������һ����ˣ�",
        "��ʵ��Щ������Ҳ��֪������ô���£����������ȥ���� {�����}, ������֪��!"
    };
    if GetItemCount(2,0,144) >= 1 then
        TalkEx("task_02_01", szTalk);
    else
        TalkEx("task_02_02", szMsg);
    end;
end;

function task_02_02()
    if GetTask(KILL_YZ_BG) == 0 then
        CreateTrigger(0,538,KILL_YZ_BG);
    end;
end;

function task_02_01()
    RemoveTrigger(GetTrigger(KILL_YZ_BG));
    SetTask(TASK_YZ_THREE, 3);
    DelItem(2,0,144,1);
    Msg2Player("ȥ�����ݸ��������ѯ�����");
    TaskTip("ȥ�����ݸ��������ѯ�����");
    GivePlayerAward("Level_45", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"yishouxianshi1")		--��������1
end;

function task_03_00()
    local szTalk = {
        "��ʵ������Щ����ܶ�",
        "����Щ����һЩ������",
        "�ͷ�����ȥ{����ɽ}���Ҵ�һ��{��Գ֮Ƥ}!",
        "�������һЩ�ջ�!"
    };
    TalkEx("task_03_01", szTalk);
end;

function task_03_01()
    SetTask(TASK_YZ_THREE, 4);
    CreateTrigger(0,539,KILL_YZ_CY);
    Msg2Player("ȥ����ɽ�ռ�һ�Ų�Գ֮Ƥ");
    TaskTip("ȥ����ɽ�ռ�һ�Ų�Գ֮Ƥ");
    GivePlayerAward("Level_45", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"yishouxianshi2")		--��������2
end;

function task_04_00()
    local szTalk = {
        "�ţ��Ѿ��õ�����?",
        "�������ǲ���",
        "�ɷ��ͷ�������ȥȡһ������֮����",
        "�����ȥ."
    };
    local szMsg = {
        "�ɷ��ͷ�������ȥȡһ������֮��?"
    };
    if GetItemCount(2,0,145) >= 1 then
        TalkEx("task_04_01", szTalk);
    else
        TalkEx("task_04_02", szMsg);
    end;
end;

function task_04_02()
    if GetTrigger(KILL_YZ_CY) == 0 then
        CreateTrigger(0,539,KILL_YZ_CY);
    end;
end;

function task_04_01()
    RemoveTrigger(GetTrigger(KILL_YZ_CY));
    DelItem(2,0,145,1);
    SetTask(TASK_YZ_THREE, 5);
    CreateTrigger(0,540,KILL_YZ_YH);
    Msg2Player("ȥ����ɽ�ҵ�һ������֮��");
    TaskTip("ȥ����ɽ�ҵ�һ������֮��");
    GivePlayerAward("Level_45", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"yishouxianshi3")		--��������3
end;

function task_05_00()
    local szTalk = {
        "��ˮ��������ɽ�ķ�ˮ��������֮�ء�",
        "Ҳ������ɽ���ֵ����޵�ԭ������Ϊ��ˮ��������ʲô���顣",
        "��˵����Ϥ��ˮ���ľ���{������}�ˣ���ȥ����������ˮ���ǲ��Ƿ�����ʲô!",
        "���������ݸ����Ͻ�!"
    };
    local szMsg = {
        "Phi�n <sex> ��n V? Di s�n mang l�ng ng�n h? v?!"
    };
    if GetItemCount(2,0,146) >= 1 then
        TalkEx("task_05_01", szTalk);
    else
        TalkEx("task_05_02", szMsg);
    end;
end;

function task_05_02()
    if GetTask(KILL_YZ_YH) == 0 then
        CreateTrigger(0,540,KILL_YZ_YH);
    end;
end;

function task_05_01()
    RemoveTrigger(GetTrigger(KILL_YZ_YH));
    DelItem(2,0,146,1);
    SetTask(TASK_YZ_THREE, 6);
    Msg2Player("ȥ���ݸ����Ͻ���������");
    TaskTip("ȥ���ݸ����Ͻ���������");
    GivePlayerAward("Level_45", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"yishouxianshi4")		--��������4
end;

function task_06_00()
    local szTalk = {
        "��������ɽ�����飿",
        "���ϴ�ȥ����ɽ��ʱ�����澹Ȼ����ǹ���һ����ݺݵ��۸���һ�١�",
        "�ܷ����������ҽ�ѵ{30}��{ǹ��}��������!",
        "�����ȥ�����Ե���"
    };
    TalkEx("task_06_01", szTalk);
end;

function task_06_01()
    CreateTrigger(0,541,KILL_YZ_QS);
    SetTask(TASK_YZ_THREE, 7);
    Msg2Player("ȥ��ˮ����ѵ30��ǹ��");
    TaskTip("ȥ��ˮ����ѵ30��ǹ��");
    GivePlayerAward("Level_45", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"yidongzhiyuan1")		--�춯֮Դ1
end;

function task_07_00()
    local szTalk = {
        "����������ǰ����ˮ�����ҽ�ѵ{30}��{ǹ��}����ڶ�����"
    };
    TalkEx("task_07_01", szTalk);
end;

function task_07_01()
    if GetTrigger(KILL_YZ_QS) == 0 then
        CreateTrigger(0,541,KILL_YZ_QS);
    end;
end;

function task_08_00()
    local szTalk = {
        "��л������",
        "�������ˮ�������飬��ʵ������йء�",
        "����������ˮ������������﷢��һ������ֵ�����." 
    };
    TalkEx("task_08_00_00", szTalk);
end;

function task_08_00_00()
    local szTalk = {
        "��ʱ�����к�ɫ�Ļ�����ȼ�գ������޷����𣬺��ǹŹ֡�",
        "�����ɷ�ǰ����ˮ��һ�������ĵĵط���ȡ��һЩ����!"
    };
    TalkEx("task_08_01", szTalk);
end;

function task_08_01()
    SetTask(TASK_YZ_THREE, 9);
    AddItem(2,0,147,1);
    Msg2Player("ȥ��ˮ��һ�������ĵĵط�ȡһ����������");
    TaskTip("ȥ��ˮ��һ�������ĵĵط�ȡһ����������");
    GivePlayerAward("Level_45", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"yidongzhiyuan2")		--�춯֮Դ2
end;

function task_09_00()
    local szTalk = {
        "��˵���ݸ���¥�����ٹ���ͼ������ͽ����.",
        "ȥ����Ҳ���ܹ��õ�ʲô���õ��鱨��",
    };
    local szHaveNoBottle = {
        "Chi�c b�nh kh�ng ta ��a ng��i l�m m�t r�i ?? May ta c�n m�y b�nh ��ng ��n d��c, chuy�n n�y phi�n <sex> v�y."
    }
    local szHaveBottle = {
        "? ��y c? chi�c b�nh kh�ng ng��i v�o L��ng Th�y ��ng t�ng 1 l�y m�t �t c�t v? ��y. Ta mu�n d�ng c�t r�i quanh nh? �� t��ng nh? ng��i qu? c?."
    };
    if GetItemCount(2,0,148) >= 1 then  --�Ѿ���������
        TalkEx("task_09_01", szTalk);
    else
        if GetItemCount(2,0,147) >= 1 then  --û�������п�ƿ��
            TalkEx("", szHaveBottle);
        else                                --û������Ҳû��ƿ��
            TalkEx("", szHaveNoBottle);
            AddItem(2,0,147,1);
        end;
    end;
end;

function task_09_01()
    SetTask(TASK_YZ_THREE, 10);
    DelItem(2,0,148,1);
    Msg2Player("ȥ����������");
    TaskTip("ȥ����������");
    GivePlayerAward("Level_45", "hard", "head", "Level_39");
	GivePlayerExp(SkeyYZxiahouqin,"yidongzhiyuan3")		--�춯֮Դ3
end;

function task_10_00()
    local szTalk = {
        "��̵���ı��",
        "��������Ὺ��Ц����Щ��������ū�Һθ��أ�",
        "��˵��ά������һ����Ϊ������֬��ϡ���",
        "ū��ȥ���������һ���ֺη���",
        "��ά�������ݵĶ��Ͻǣ����������ȥ���!"
    };
    TalkEx("task_10_01", szTalk);
end;

function task_10_01()
    SetTask(TASK_YZ_THREE, 11);
    Msg2Player("ȥ�ҽ�ά����������֬������");
    TaskTip("ȥ�ҽ�ά����������֬������");
end;

function task_11_00()
    local szTalk = {
        "�ҵ�{������֬}�Ѿ������ˡ�",
        "��ȥ�ռ�������������ϵİ��̡��䵱Ұ�����ϵ���ɰ���ӻ����Ʒ����ϵķ䳲�Լ��䵱���Ƕ������Ů�������ϵ���ױϻ��һ�ݽ����ҡ�",
        "�������¸�������һ�ݣ�"
    };
    TalkEx("task_11_01", szTalk);
end;

function task_11_01()
    SetTask(TASK_YZ_THREE, 12);
    Msg2Player("ȥ�ռ����Ͻ�����ά");
end;

--����	2,1,26
--Ұ�� ��ɰ (2,2,30)
--��Ʒ� �䳲 (2,1,13)
--Ů���� ��ױϻ (2,1,57)

function task_12_00()
    local szTalk = {
        "��ô��ͰѲ���������!",
        "��������Ժ�Ƭ��",
        "����������֬����������պ�!"
    };
    local szMsg = {
        "�ռ�������������ϵİ��̡��䵱Ұ�����ϵ���ɰ���ӻ����Ʒ����ϵķ䳲�Լ��䵱���Ƕ������Ů�������ϵ���ױϻ��һ��."
    };
    if GetItemCount(2,1,26) >= 1 and GetItemCount(2,2,30) >= 1 and GetItemCount(2,1,13) >= 1 and GetItemCount(2,1,57) >= 1 then
        TalkEx("task_12_01", szTalk);
    else
        TalkEx("", szMsg);
    end;
end;

function task_12_01()
    DelItem(2,1,26,1);
    DelItem(2,2,30,1);
    DelItem(2,1,13,1);
    DelItem(2,1,57,1);
    AddItem(2,0,149,1);
    SetTask(TASK_YZ_THREE, 13);
    Msg2Player("��������֬��������");
    TaskTip("��������֬��������");
    GivePlayerAward("Level_40", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"liangshuiyinmou1")		--��ˮ��ı
end;

function task_12_02()
    DelItem(2,1,26,1);
    DelItem(2,2,30,1);
    DelItem(2,1,13,1);
    DelItem(2,1,57,1);
    AddItem(2,0,149,1);
    SetTask(TASK_YZ_THREE, 13);
    Msg2Player("��������֬��������");
    TaskTip("��������֬��������");
end

function task_13_jw_00()
    local szMsg = {
        "<sex> mu�n l�m Thi�n H��ng ph�n n�a kh�ng? Ch?c�n ��n Giang T�n Th�n t�m kh�i �m tr�n ng��i �m h�n, chu sa tr�n m�nh Heo r�ng, t?ong tr�n ong v�ng v?l��c trang s�c tr�n ng��i N?Ki�m h�o, t�m �� nguy�n li�u ta s?gi�p ng��i l�m."
    };
    local szElse = {
        "��������֬��������."
    };
    local szTalk = {
        "��ng l? s? nguy�n li�u n�y r�i! ��i ta m�t l�t!",
        "��",
        "Thi�n H��ng ph�n ��y! <sex> c�m l�y!",
        "�a t?!"
    };
    if GetItemCount(2,0,149) >= 1 then
        TalkEx("", szElse);
    else
        if GetItemCount(2,1,26) >= 1 and GetItemCount(2,2,30) >= 1 and GetItemCount(2,1,13) >= 1 and GetItemCount(2,1,57) >= 1 then
            TalkEx("task_12_02", szTalk);
        else
            TalkEx("", szMsg);
        end;
    end;
end;

function task_13_qr_00()
    local szMsg = {
        "����������ȥ��"
    };
    local szTalk = {
        "��Ⱥ��ɱ�����ͽ.",
        "����͵�����ҵ��Ϸ����!",
        "�����ܲ��ܰ��Ҷ������"
    };
    if GetItemCount(2,0,149) >= 1 then
        TalkEx("task_13_qr_01", szTalk);
    else
        TalkEx("", szMsg);
    end;
end;

function task_13_qr_01()
    SetTask(TASK_YZ_THREE, 14);
    DelItem(2,0,149,1);
    CreateTrigger(0,542,KILL_YZ_JT);
    Msg2Player("������ȥ��ˮ����������ͽ�����һ��Ϸ����");
    TaskTip("������ȥ��ˮ����������ͽ�����һ��Ϸ����");
    GivePlayerAward("Level_45", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"liangshuiyinmou2")		--��ˮ��ı2
end;

function task_14_00()
    local szTalk = {
        "����������˵���ͽ�ƺ����ٻ�һ������!",
        "�ƺ��ǽ���������",
        "���ͽ�ƺ�������Ϊ�����Ż�ۼ�����ˮ������������ɽ��Ұ���춯Ҳ�����!",
        "������ȥ{��ˮ������}�����ɣ�.",
    };
    local szMsg = {"�Ϸ���ΰ��Ҷ��������!"};
    if GetItemCount(2,0,303) >= 1 then --�Ϸ����
        TalkEx("task_14_01", szTalk);
    else
        TalkEx("task_14_02", szMsg);
    end;
end;

function task_14_02()
    if GetTrigger(KILL_YZ_JT) == 0 then
        CreateTrigger(0,542,KILL_YZ_JT);
    end;
end;

function task_14_01()
    RemoveTrigger(GetTrigger(KILL_YZ_JT));
    SetTask(TASK_YZ_THREE, 15);
    DelItem(2,0,303,1);   --�Ϸ����
    Msg2Player("ȥ��ˮ�������ɱ������");
    TaskTip("ȥ��ˮ�������ɱ������");
    GivePlayerAward("Level_45", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"liangshuiyinmou3")		--��ˮ��ı3
end;

function task_16_00()
    local szTalk = {
        "����������������",
        "������ȥ{����}��{�ƴ�}�˽�һ�º�����������!"
    };
    TalkEx("task_16_01", szTalk);
end;

function task_16_01()
    SetTask(TASK_YZ_THREE, 17);
    SetTask(TASK_YZ_TWO, 4);
    GivePlayerAward("Level_50", "hell", "chest", "Level_44");
	GivePlayerExp(SkeyYZxiahouqin,"liangshuiyinmou4")		--��ˮ��ı4
end;