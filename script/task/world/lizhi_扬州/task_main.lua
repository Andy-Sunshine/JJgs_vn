--��������
--created by lizhi
--2005-9-1 10:21

Include("\\script\\task\\world\\task_var_id.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\task_award.lua");
Include("\\script\\task\\world\\task_trigger_list.lua");

function task_06_00()
    local szTalk = {
        "��ʵ����һЩ�������鷳����",
        "�����ݵ�Ů���ĺ���,����һ���ֲ������������ڲ����ж����������ȥ�ҳ�����򿴿���Ҫʲôҩ�ģ�",
        "�����ȥ!"
    };
    TalkEx("task_06_01", szTalk);
end;

function task_06_01()
    SetTask(TASK_FIVE, 7);
    Msg2Player("ȥ����������￴��");
    TaskTip("ȥ����������￴��");
end;

function task_07_xh_00()
    local szTalk = {
        "������������ݶ��Ͻǣ����ȥ�����ɣ�"
    };
    TalkEx("", szTalk);
end;

function task_07_cm_00()
    local szTalk = {
        "�������ĺ������ģ�����Щ�����Ѳ����������ĺ����Ǻ��ӵĲ�����ε��ˣ���ҪһЩʲôҩ��?",
        "�Ǻ��ӵĲ�������֣��ƺ����ж�������������ֲ���ȷ��������Ūһ���ƻ��������ѹ��һ�¶���.���������Ĵ���û��ʲô�ϻ�����ȥ���ֻ����鱦ɽ���ϻ�����ȡ��һ���ƻ��������"
    };
    TalkEx("task_07_01", szTalk);
end;

function task_07_01()
    SetTask(TASK_FIVE, 8);
    CreateTrigger(0,533,KILL_YZ_LAOHU);
    Msg2Player("ȥ���ֻ��鱦ɽ���ϻ�����ȡ��һ���ƻ����");
    TaskTip("ȥ���ֻ��鱦ɽ���ϻ�����ȡ��һ���ƻ����");
    GivePlayerAward("Level_20","easy");
	GivePlayerExp(SkeyYZxiahouqin,"lianerdeqizheng1")		--��������֢1
end;

function task_08_00()
    local szTalk = {
        "�ƻ���Ǵ���������?."
    };
    TalkEx("task_08_01", szTalk);
end;

function task_08_01()
    if GetTrigger(KILL_YZ_LAOHU) == 0 then
        CreateTrigger(0,533,KILL_YZ_LAOHU);
    end;
end;

function task_09_00()
    local szTalk = {
        "�ԣ��ԣ��������ְ׻������,������ʱ�Ļ���һ���Ǹ����ӵĲ�����!",
        "����,���ǻ������,���ȥ�����ĺ�������,�������ٷ���,�������е���.",
        "����͸Ϲ�ȥ.",
    };
    local szNot = {
        "<sex> t�m ���c Ho�ng h? linh c�t ch�a?",
        "V�n ch�a t�m ���c."
    };
    if GetItemCount(2,0,44) >= 1 then
        TalkEx("task_09_01", szTalk);
    else
        TalkEx("task_08_01", szNot);
    end;
end;

function task_09_01()
    SetTask(TASK_FIVE, 10);
    RemoveTrigger(GetTrigger(KILL_YZ_LAOHU));
    DelItem(2,0,44,1);
    AddItem(2,0,45,1);
    Msg2Player("��������������ݸ����ĺ�������");
    TaskTip("��������������ݸ����ĺ�������");
    GivePlayerAward("Level_20","easy");
	GivePlayerExp(SkeyYZxiahouqin,"lianerdeqizheng2")		--��������֢2
end;

function task_10_00()
    local szTalk = {
        "���ǳ´������Ե�ҩ!",
        "����˵�������Ҫİ���˸��Ķ���,�����ǳԵ�",
        "���ܵ����ˣ��������ĺ��ٽ����������İ���",
    };
    TalkEx("task_10_01", szTalk);
end;

function task_10_01()
    SetTask(TASK_FIVE, 11);
    DelItem(2,0,45,1);
    Msg2Player("����������ĺ���");
    TaskTip("����������ĺ���");
    GivePlayerAward("Level_20","easy");
	GivePlayerExp(SkeyYZxiahouqin,"lianerdeqizheng3")		--��������֢3
end;

function task_11_00()
    local szTalk = {
        "�����Ĳ��Ѿ��õ����ǰ�.",
        "�����̫��л����!"
    };
    TalkEx("task_11_01", szTalk);
end;

function task_11_01()
    SetTask(TASK_FIVE, 12);
    local szTalk = {
        "�ţ���˵���ϵ������۸���ǣ����������Ĳ���Ҳˮ�Ǵ��ߣ����е���������ק�������ȱ����ȴ��������������ȥ����һ��!",
        "�õģ������ȥ��"
    };
    TalkEx("task_12_01", szTalk);
    GivePlayerAward("Level_20","hard");
	GivePlayerExp(SkeyYZxiahouqin,"lianerdeqizheng4")		--��������֢4
end;

function task_12_00()
    local szTalk = {
        "Nghe n�i gi? c? v? nguy�n li�u l�m v? kh? ? Giang Nam ��t nhi�n t�ng cao, th? r�n {M�nh Nham } b? �p l�m m�t s? binh kh?, ng��i ��n �� �i�u tra xem!",
        "T�i h? l�n ���ng ngay!"
    };
    TalkEx("task_12_01", szTalk);
end;

function task_12_01()
    SetTask(TASK_FIVE, 13);
    Msg2Player("ȥ�����ݸ�����������̸̸");
    TaskTip("ȥ�����ݸ�����������̸̸");
end;

function task_13_00()
    local szTalk = {
        "��˵���������ļ۸��Ѿ����˼���������ô���°�?",
        "�ǰ�!��֪��Ϊʲô���ض��������չ����У����Ա�˵�����ˡ���������ʯʲô�Ķ����˺ü����ļ�Ǯ�ˣ�������Ǯ���������ˡ��������ʱ���Ȼ���и�������ѵ��������Ӳ����ϱ���������ô�൶��:�������Ĳ��ϰ�?",
        "Ŷ��ԭ�������������Ǳ����쵶����Ů����˭��?",
        "���ҿ���ô��˵��!�����������Ҳ����ϾͿ϶��и�������ˣ���˵��ȥ����ض��ñ��Ǹ����������ˡ��������ܰ�����������Ĳ��ϣ����ܹ����ڽ��ϵ������ܸ����㡣",
        "��ô����Ҫʲô������?�������Ū����?",
        "���������ֶθ�����Ū�����ˡ��ϴΣ��и�������Ūһ�����������ݴ󷢱ʡ����·����Ȫ���ʱ�򱻲ݿ����ˡ���ֻ�е���Ȫ��ȥ����Щ�ݿ����Ϸ���һЩ�ˡ��������20�����������ɡ�",
    };
    TalkEx("task_13_01", szTalk);
end;

function task_13_01()
    SetTask(TASK_FIVE, 14);
    CreateTrigger(0,534,KILL_YZ_CK);
    Msg2Player("ȥ��Ȫ���ɱ�ݿܶ��20������!");
    TaskTip("ȥ��Ȫ���ɱ�ݿܶ��20������!");
    GivePlayerAward("Level_25", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"jiagegaozhangdewuqi1")		--�۸���ǵ�����1
end;

function task_14_00()
    local szTalk = {
        "����û����˰�!��Щ�����㹻�Ҷ���ܶ�����ˡ����ҵ��˽���˿�࣬�����ǵ���Ȫ��������ǿ����ҵ�����"
    };
    local szNot = {
        "20����������������"
    };
    if GetItemCount(2,0,98) >= 20 then
        TalkEx("task_14_01", szTalk);
    else
        TalkEx("task_14_02", szNot);
    end;
end;

function task_14_02()
    if GetTrigger(KILL_YZ_CK) == 0 then
        CreateTrigger(0,534,KILL_YZ_CK);
    end;
end;

function task_14_01()
    RemoveTrigger(GetTrigger(KILL_YZ_CK));
    DelItem(2,0,98,20);
    SetTask(TASK_FIVE, 15);
    Msg2Player("ȥ��Ȫ������˿��");
    TaskTip("ȥ��Ȫ������˿��");
    GivePlayerAward("Level_25", "hard", "trinket", "Level_25");
	GivePlayerExp(SkeyYZxiahouqin,"jiagegaozhangdewuqi2")		--�۸���ǵ�����2
end;

function task_15_00()
    local szTalk = {
        "�������˿��ɣ���˵���ڴ����չ��������кξ��ģ�Ч����˭?",
        "�Ǻǣ�ɱ�˰�,С�Թԣ��ѵ��ؼ��ж��������ﵱȻ����̵����ˣ��Ҳ�˵��Ҳ�ܲµ���?",
        "��Ϊһ��Ů�ӣ�������˺ݶ�����ɱ��˵�ĸ��Է�˯��һ��ƽ����",
        "Ӵ������ô��˵�Һݶ��أ����ǰ�ū�ҵ��ĸ����ˣ������һ�����ĵľ����أ���Ȼ��˵�Һݶ���������Ҳ�Ͳ����ˣ����ˣ��Ǹ�СŮ���������Ҳ����ˣ�ֻ��ϧ��ô���������ӣ������϶��Ǵ���Ů�أ�",
        "��Ҫ����?СŮ��?Ī����˵�����ĺ���?����ô֪�����ж���?",
        "��,�Ҳ���֪�����,�һ�֪�������ʮ����û���ҵ����ƽ�ҩ,�����������㽻����!",
        "��Ȼ������!����һ��ʤ���߼�����,�����������������!",
        "��ȥ���������������ڶ���������ҵ�3������ø�����˿",
        "������ȥ!"
    };
    TalkEx("task_15_01", szTalk);
end;

function task_15_01()
    SetTask(TASK_FIVE, 16);
    CreateTrigger(0,535,KILL_YZ_DCC);
    Msg2Player("ȥ������Ķ���������ҵ�3�����");
    TaskTip("ȥ������Ķ���������ҵ�3�����");
    GivePlayerAward("Level_30", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"shenminvren1")		--����Ů��1
end;

function task_16_00()
    local szTalk = {
        "�Ѿ��õ�����?",
        "�Ե�",
        "������������󸻯����!",
    };
    local szNot = {
        "��ȥ��3�����!"
    };
    if GetItemCount(2,0,99) >= 3 then
        TalkEx("task_16_01", szTalk);
    else
        TalkEx("task_16_02", szNot);
    end;
end;

function task_16_02()
    if GetTrigger(KILL_YZ_DCC) == 0 then
        CreateTrigger(0,535,KILL_YZ_DCC);
    end;
end;

function task_16_01()
    RemoveTrigger(GetTrigger(KILL_YZ_DCC));
    SetTask(TASK_FIVE, 17);
    AddItem(2,0,302,1);   --��󸻯����
    DelItem(2,0,99,3);
    Msg2Player("����󸻯��������������֤һ��");
    TaskTip("����󸻯��������������֤һ��");
    GivePlayerAward("Level_30", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"shenminvren2")		--����Ů��2
end;

function task_17_00()
    local szTalk = {
        "�����󸻯����Ӧ����û��ʲô����",
        "������.",
        "�����ҩ�ø��ĺ��ٿ����������",
    };
    TalkEx("task_17_01", szTalk);
end;

function task_17_01()
    SetTask(TASK_FIVE, 18);
    Msg2Player("ѯ��һ���ĺ��ٵ����");
    TaskTip("ѯ��һ���ĺ��ٵ����");
    GivePlayerAward("Level_30", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"shenminvren3")		--����Ů��3
end;

function task_18_00()
    local szTalk = {
        "��Ȼ��������Ѿ���֤����󸻯����!",
        "�Ǿ����㽫ҩ�ཻ���ĺ���ʹ�ð�.",
    };
    TalkEx("task_18_01", szTalk);
end;

function task_18_01()
    SetTask(TASK_FIVE, 19);
    Msg2Player("����󸻯������ĺ�������");
    TaskTip("����󸻯������ĺ�������");
    GivePlayerAward("Level_30", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"shenminvren4")		--����Ů��4
end;

function task_19_00()
    local szTalk = {};
    if GetSex() == 1 then
        szTalk = {
            "���������ҩ���˰�!!",
            "��?.",
            "лл����,�������ҩ�Һö���",
        };
    elseif GetSex() == 2 then
        szTalk = {
            "���������ҩ���˰�!!",
            "��?.",
            "лл����,�������ҩ�Һö���",
        };
    end;
    TalkEx("task_19_01", szTalk);
end;

function task_19_01()
    SetTask(TASK_FIVE, 20);
    DelItem(2,0,302,1);
    Msg2Player("����Ϣ�����ĺ���");
    TaskTip("����Ϣ�����ĺ���");
    GivePlayerAward("Level_30", "hard", "weapon", "Level_28");
	GivePlayerExp(SkeyYZxiahouqin,"shenminvren5")		--����Ů��5
end;

function task_20_00()
    local szTalk = {
        "����������û������!",
        "��������!"
    };
    TalkEx("task_20_01", szTalk);
end;

function task_20_01()
    local szTalk = {
        "Ͷ�������ŵ�ԭ�����Ҫ������ʤ������;�б���׷ɱ,���ڶ�����Ȫ�帽������Ϫ��.",
        "�鷳�㾡���ȥ֧Ԯ!"
    };
    SetTask(TASK_FIVE, 21);
    TalkEx("", szTalk);
    Msg2Player("ȥ��Ȫ�����Ϫ��������ʤ����");
    TaskTip("ȥ��Ȫ�����Ϫ��������ʤ����");
    GivePlayerAward("Level_34", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"jiuzhuleisheng")		--������ʤ
end;

function task_22_00()
    local szTalk = {
        "�Ѿ�������?",
        "��������ȥ����һ��."
    };
    TalkEx("task_22_01", szTalk);
end;

function task_22_01()
    local szTalk = {
        "��˵��ʤ���������׼����һ�����صı����͸����ǳ�����.",
        "��ȥ��Ϫ���������ʤ��ʬ��,�Ѷ����ҵ�������."
    };
    TalkEx("task_22_02", szTalk);
end;

function task_22_02()
    SetTask(TASK_FIVE, 23);
    Msg2Player("ȥ��Ϫ�������ʤ��ʬ��");
    TaskTip("ȥ��Ϫ�������ʤ��ʬ��");
    GivePlayerAward("Level_34", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"shenmibaowu1")		--���ر���1
end;

function task_23_00()
    local szTalk = {
        "Ӧ�ò�ֹ����Щ,������ϸ����һ��.",
        "ȥ������������ʿ����Ѱ�����ص�ͼ�Ҳ�!",
    };
    local szNot = {
        "Ng��i th? �i �i�u tra thi th? c�a L�i Th�ng xem c? ph�t hi�n g? kh�ng?"
    };
    if GetItemCount(2,0,103) >= 1 then
        TalkEx("task_23_01", szTalk);
    else
        TalkEx("", szNot);
    end;
end;

function task_23_01()
    SetTask(TASK_FIVE, 24);
    DelItem(2,0,103,1);
    CreateTrigger(0,537,KILL_YZ_WS);
    Msg2Player("ȥѰ�����ص�ͼ�Ҳ���");
    TaskTip("ȥѰ�����ص�ͼ�Ҳ���!");
    GivePlayerAward("Level_34", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"shenmibaowu2")		--���ر���2
end;

function task_24_00()
    local szTalk = {
        "��������ų�ͷ�����ص�ͼ,������ɽ���Ʒ�����ʹ�����ص�ͼ����������������.",
        "�����ھ�ȥ."
    };
    local szNot = {
        "Mau ��n {Thanh Kh? ��ng} ��nh b�i {Thi�n �m v? s�} �o�t {n�a t�m b�n ��} c�n l�i!"
    };
    if GetItemCount(2,0,104) >= 1 then
        TalkEx("task_24_01", szTalk);
    else
        TalkEx("task_24_02", szNot);
    end;
end;

function task_24_02()
    if GetTrigger(KILL_YZ_WS) == 0 then
        CreateTrigger(0,537,KILL_YZ_WS);
    end;
end;

function task_24_01()
    AddItem(2,0,105,1);
    DelItem(2,0,104,1);
    SetTask(TASK_FIVE, 25);
    Msg2Player("ȥ����ɽʹ�����ص�ͼ!");
    TaskTip("ȥ����ɽʹ�����ص�ͼ!");
    GivePlayerAward("Level_34", "hard");
	GivePlayerExp(SkeyYZxiahouqin,"shenmibaowu3")		--���ر���3
end;

function task_25_00()
    local szTalk = {
        "��ͷ���ӻ��깺��, Ȼ��������ɽ167.195������һ��!"
    };
    local szMsg = {
        "T�m kh�ng ���c {B�n �� th�n b�}?? May m? ta c�n 1 t�m, c�m l�y �i!"
    };
    if GetItemCount(2,0,105) >= 1 then
        TalkEx("", szTalk);
    else
        TalkEx("task_25_00_00", szMsg);
    end;
end;

function task_25_00_00()
    AddItem(2,0,105,1);
end;

function task_26_00()
    local szTalk = {
        "�Ѿ��õ�����",
        "�����ݱ��ｻ������ɽһ�����������."
    };
    TalkEx("task_26_01", szTalk);
end;

function task_26_01()
    SetTask(TASK_FIVE, 27);
    Msg2Player("ȥ����ɽ������");
    TaskTip("ȥ����ɽ������");
    GivePlayerAward("Level_34", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"shenmibaowu4")		--���ر���4
end;

function task_27_00()
    local szTalk = {
        "��Ȼ��������ô����.",
        "��֪���ˣ���������ȥ�ظ��ĺ��ٰ�."
    };
    TalkEx("task_27_01", szTalk);
end;

function task_27_01()
    SetTask(TASK_FIVE, 28);
    DelItem(2,0,106,1);
    Msg2Player("�ظ��ĺ���");
    TaskTip("�ظ��ĺ���");
    GivePlayerAward("Level_34", "easy");
	GivePlayerExp(SkeyYZxiahouqin,"shenmibaowu5")		--���ر���5
end;

function task_28_00()
    local szTalk = {
        "�������˸�һ����.",
        "����������!"
    };
    TalkEx("task_28_01", szTalk);
end;

function task_28_01()
    SetTask(TASK_FIVE, 29);
    GivePlayerAward("Level_34", "hard", "weapon", "Level_34");
	GivePlayerExp(SkeyYZxiahouqin,"shenmibaowu6")		--���ر���6
end;

