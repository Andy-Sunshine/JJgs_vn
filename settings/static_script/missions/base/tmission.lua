----------------------------------------------------
-- mission base class
-- by windle
-- 2010-2-25 12:09
----------------------------------------------------
Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\class\\mem.lua")
Include("\\settings\\static_script\\missions\\base\\mission_head.lua")
Include("\\script\\lib\\define.lua")
---------------------------------------------
tMissionBase = {
	MissionId = 0,
	MapId = 0,
	realMapId = 0,

	msOption = nil,
	msTimer = nil,
	stages = nil,
	rule = nil,

	bDynamicMap = 1,

	entryPos = {1600, 3200},
--	entryPos = {
--		[1] = {1600, 3200},
--		[2] = {1600, 2300},
--	},
--	entryPos = {
--		{ {1600, 3200}, {1600, 2300} };
--	},
	exitPos = {300, 1646, 3549},
--	exitPos = {
--		[100] = {x, y},
--		[300] = {x, y},
--	}
--	exitPos = {	{x, y}, {x, y} },
}

function tMissionBase:Open()
	local nMapId, nMapIdx;
	if self.bDynamicMap == 1 then
		nMapId, nMapIdx = DynamicLoadMap(self.realMapId);
	end
	if not nMapId then return end

	self:setSubWorld(nMapId);
	OpenMission(self.MissionId);
	self:SetMissionV(MV_MAP_ID, nMapId);
	self:SetMissionV(MV_MAP_INDEX,nMapIdx);
	self:SetMissionV(MV_RETURN_MAP_ID, GetWorldPos());
	self:resetSubWorld();
	return nMapId;
end
function tMissionBase:Run()
	RunMission(self.MissionId);
end
function tMissionBase:Close()
	CloseMission(self.MissionId);
end
function tMissionBase:Join(nMapId, nCamp)
	if nMapId then
		self:setSubWorld(nMapId);
		JoinMission(PlayerIndex, nCamp);
		self:resetSubWorld();
	end
end
function tMissionBase:TeamJoin(nMapId, nCamp)
	gf_TeamOperate(self.Join, self, nMapId, nCamp);
end
----------------------------------------------
-- api callBack
function InitMission()
	g_theMS:onInit();
end;

function RunMission()
	g_theMS:onStart();
end;

function EndMission()
	g_theMS:onClose();
end;

function JoinMission(RoleIndex,nCamp)
--	PlayerIndex = RoleIndex;
	g_theMS:onJoin(nCamp);
--	PlayerIndex = RoleIndex;
end;

function OnLeave(RoleIndex)
	PlayerIndex = RoleIndex;
	g_theMS:onLeave();
	PlayerIndex = RoleIndex;
	if GetMSPlayerCount(g_theMS.MissionId) == 0 then
		g_theMS:Close();
	end
end;

function OnTimer()
	g_theMS:onTimer()
end

-----------------------------------------------
tMissionOption = {
	--进入操作
	nInitFightState = 1,	--初始战斗状态（进入Mission时的战斗状态）
	szInitDeahScript = "",	--初始死亡脚本（进入Mission时的死亡脚本）

	bForbidChangePK = 1,	--进入关卡时是否禁止转换PK状态
	bUseScrollEnable = 0,	--进入关卡时是否允许使用回城符
	bForbitTrade = 1,		--进入关卡时是否禁止交易
	bStallEnable = 0,		--进入关卡时是否允许摆摊
	bOpenFriendliness = 0,	--进入关卡时是否可以增加好感度
	bDeathPunish = 0,		--进入关卡时是否有死亡惩罚
	bClearMomentum = 1,		--进入关卡时是否要清空杀气值
	bInteractiveEnable = 0,	--进入关卡时是否允许做互动动作
	bForbitTeam = 1,		--进入关卡时是否禁止队伍操作
	bLeaveTeam = 0,			--进入关卡时是否要离开队伍
	bForbitMomentum = 1,	--不可增加杀气值
	bForbitSuperSkill = 0,	--屏蔽镇派

	--离开操作
	nRestoreFightState = 0,	--离开时要恢复的战斗状态（离开Mission时的战斗状态）
	szRestoreDeahScript = "",	--离开Mission时要挂的死亡脚本

	bRestoreForbidChangePK = 0,		--离开关卡时是否禁止转换PK状态
	bRestoreUseScrollEnable = 1,	--离开关卡时是否允许使用回城符
	bRestoreForbitTrade = 0,		--离开关卡时是否禁止交易
	bRestoreStallEnable = 1,		--离开关卡时是否允许摆摊
	bRestoreOpenFriendliness = 0,	--离开关卡时是否可以增加好感度
	bRestoreDeathPunish = 1,		--离开关卡时是否有死亡惩罚
	bRestoreClearMomentum = 0,		--离开关卡时是否要清空杀气值
	bRestoreInteractiveEnable = 1,	--离开关卡时是否允许做互动动作
	bRestoreForbitTeam = 0,			--离开关卡时是否禁止队伍操作
	bRestoreLeaveTeam = 0,			--离开关卡时是否要退队
}
-----------------------------------------------
-- OnXXX
function tMissionBase:onInit()
	self:clearData()
	self:action("s0");
end
function tMissionBase:onStart()
	self:action("start");
end
function tMissionBase:onClose()
	if self.bDynamicMap == 1 then
		local nMapId, nMapIdx = SetMissionV(MV_MAP_ID), SetMissionV(MV_MAP_INDEX);
		ClearMapNpc(nMapIdx);
		FreeDynamicMap(nMapId, nMapIdx);
	end

	for i = 1, getn(self.msCamp) do
		self.msCamp[i]:turnPlayer(msCamp.delPlayer, self.msCamp[i]);
	end
	self:clearData()
end
function tMissionBase:onJoin(nCamp)
	nCamp = nCamp or 1;
	local m, x, y = self:getEntryPos(nCamp);
	if NewWorld(m, x, y) ~= 1 then return end

	msOption = self.msOption;
	SetLogoutRV(1);	--设置登陆点为城市重生点
--	CreateTrigger(3,self.tbLogTrigger.nID,self.tbLogTrigger.nCustomID);	--创建登陆触发器
	SetFightState(msOption.nInitFightState);	--战斗状态
	SetDeathScript(msOption.szInitDeahScript);	--死亡脚本

	ForbidChangePK(msOption.bForbidChangePK);	--转换PK状态
	UseScrollEnable(msOption.bUseScrollEnable);	--使用回城符
	ForbitTrade(msOption.bForbitTrade);	--交易
	StallEnable(msOption.bStallEnable);	--摆摊
	OpenFriendliness(msOption.bOpenFriendliness);	--好感度
	SetDeathPunish(msOption.bDeathPunish);	--死亡惩罚
	InteractiveEnable(msOption.bInteractiveEnable);	--互动
	SetCreateTeam(msOption.bForbitTeam);
	SetMomentumBoundSwitch(msOption.bForbitMomentum);	--可增加杀气值
	gf_ForbidFactionSkill(msOption.bForbitSuperSkill);	--屏蔽镇派
	if msOption.bLeaveTeam == 1 then
		LeaveTeam();		--离开队伍
	end;
	if msOption.bClearMomentum == 1 then
		SetMomentum(0);		--清除杀气值
	end;

	ResetToNpcDamage(0);
	ResetToPlayerDamage(0);
	StopTimeGuage(-2);	--清除界面计时器

	if msOption.bSetRebornPos == 1 then
		msOption:SetRandomRebornPos(nCamp);
	end;
	self.msCamp[nCamp]:addPlayer()
end
function tMissionBase:onLeave()
	if self.beforeLeave then
		self:beforeLeave();
	end
	msOption = self.msOption;
	SetLogoutRV(0);	--设置登陆点为下线坐标
--	RemoveTrigger(GetTrigger(msOption.tbLogTrigger.nCustomID));	--删除登陆触发器
	SetFightState(msOption.nRestoreFightState);	--战斗状态
	SetDeathScript(msOption.szRestoreDeahScript);	--死亡脚本

	ForbidChangePK(msOption.bRestoreForbidChangePK);	--PK状态
	UseScrollEnable(msOption.bRestoreUseScrollEnable);	--回城符
	ForbitTrade(msOption.bRestoreForbitTrade);	--禁止交易
	StallEnable(msOption.bRestoreStallEnable);	--禁止摆摊
	OpenFriendliness(msOption.bRestoreOpenFriendliness);	--不增加好感度
	SetDeathPunish(msOption.bRestoreDeathPunish);	--死亡惩罚
	InteractiveEnable(msOption.bRestoreInteractiveEnable);	--互动
	SetCreateTeam(msOption.bRestoreForbitTeam);
	if msOption.bRestoreClearMomentum == 1 then
		SetMomentum(0);		--清除杀气值
	end;
	SetMomentumBoundSwitch(0);	--不可增加杀气值
	gf_ForbidFactionSkill(0);	--屏蔽镇派

	SetTempRevPos(0,0,0);	--临时重生点清除
	SetCampToPlayer("");	--清除战斗阵营
	StopTimeGuage(-2);	--清除界面计时器
	ResetToNpcDamage(0);
	ResetToPlayerDamage(0);

	local nClosingState = self:GetMissionV(MV_MISSION_STATUS);
	if msOption.bRestoreLeaveTeam == 1 or nClosingState ~= 1 then
		LeaveTeam();	--离开队伍
	end;
	if IsPlayerDeath() == 1 then	--如果死了
		RevivePlayer(0);	--原地复活
	end;
end
function tMissionBase:onTimer()
	local nStep = self:GetMissionV(MV_TIMER_STEP) + 1;
	self:SetMissionV(MV_TIMER_STEP, nStep);
	getStage(g_theMS):onTimer(nStep);
end

----------------------------------------------
-- Timer
msTimer = {
	MissionId = 0,
	nTimerId = 0,
}
--function newTimer(MissionId, TimerId)
--	local t = new(msTimer);
--	t.MissionId = MissionId;
--	t.TimerId = TimerId;
--	return t;
--end
function msTimer:start(nTimerInterval)
	StartMissionTimer(g_theMS.MissionId, self.nTimerId, nTimerInterval * 18);
end
function msTimer:stop()
	StopMissionTimer(g_theMS.MissionId, self.nTimerId);
end
function msTimer:setInterval(nTimerInterval)
	self:stop();
	self:start(nTimerInterval);
end
-------------------------------------------------------
-- camp
msCamp = {
	CampId = 0;
}
function msCamp:addPlayer(nPlayerIndex)
	local OldPlayerIdx = PlayerIndex;
	if nPlayerIndex then
		PlayerIndex = nPlayerIndex;
	end

	AddMSPlayer(self.MissionId, self.CampId);
	SetCampToPlayer(self.CampType or "");
	PlayerIndex = OldPlayerIdx;
end

function msCamp:delPlayer(nPlayerIndex)
	local OldPlayerIdx = PlayerIndex;
	if nPlayerIndex then
		PlayerIndex = nPlayerIndex;
	end
	DelMSPlayer(self.MissionId, self.CampId);
	NewWorld(g_theMS:getExitPos());

	PlayerIndex = OldPlayerIdx;
end

function msCamp:getCount(nCampId)
	return GetMSPlayerCount(self.MissionId, nCampId or self.CampId);
end
function msCamp:reflash(bForce)
	self.players = {};
	tIndex = self.players;
	local nTotalPlayerNum = GetMSPlayerCount(self.MissionId,self.CampId);
	local nPId, nPIndex = 0,0;
	if nTotalPlayerNum ~= 0 then
		for i=1,nTotalPlayerNum do
			nPId, nPIndex = GetNextPlayer(self.MissionId,nPId,self.CampId);
			if nPIndex > 0 then
				tIndex[i] = nPIndex;
			end
		end
	end;
	if nTotalPlayerNum ~= getn(tIndex) then
		WriteLog("[To祅 b� h祄 s� b竜 l鏸]: trong h祄 s� ms_GetMSPlayerIndex nh薾 頲 s� ngi c馻 phe n祇  so v韎 getn(tIndex) kh玭g ng nh蕋. S� ngi:"..nTotalPlayerNum..", getn(tIndex) ch猲h l謈h l�:"..getn(tIndex));
	end;
--	self.lastReflashTime = GetTime()
end
function msCamp:turnPlayer(funOper, ...)
	self:reflash();
	local oldPlayerIdx = PlayerIndex;
	for i, p in self.players do
		PlayerIndex = p;
		funOper(gf_UnPack(arg));
	end
	PlayerIndex = oldPlayerIdx;
end
--------------------------------------------------------
-- Auxiliary
function tMissionBase:setSubWorld(nMapId)
	if self.oldSubWorld then
		print("[Error] [tMissionBase:setSubWorld] [set v� reset kh玭g tng th輈h !!!]");
		return
	end

	local newSubWorld = SubWorldID2Idx(nMapId);
	if newSubWorld < 0 then
		print(format("[Error] [tMissionBase:setSubWorld] [nMapId=%s b� l鏸]", tostring(nMapId)));
		return
	end;

	self.oldSubWorld = SubWorld;
	SubWorld = newSubWorld;
end

function tMissionBase:resetSubWorld()
	SubWorld = self.oldSubWorld;
	self.oldSubWorld = nil;
end

function tMissionBase:clearData()
	for i=1,10 do
		SetMissionS(i,"");
	end;
	for i=1,100 do
		SetMissionV(i,0);
	end;
end

--------------------------------------------------
-- MissionV, MissionS
function tMissionBase:GetMissionV(nVId)
	return GetMissionV(nVId);
end

function tMissionBase:SetMissionV(nVId, nVal)
	return SetMissionV(nVId, nVal);
end

function tMissionBase:GetMissionS(nVId)
	return GetMissionS(nVId);
end

function tMissionBase:SetMissionS(nVId, sVal)
	return SetMissionS(nVId, sVal);
end

---------------------------------------------------------------
function tMissionBase:Msg2MSAll(msg)
	return Msg2MSAll(self.MissionId, msg);
end
function tMissionBase:Msg2MSGroup(msg, group)
	return Msg2MSGroup(self.MissionId, msg, group);
end
function tMissionBase:Msg2MSPlayer(msg, pid)
	return Msg2MSPlayer(self.MissionId, msg, pid);
end
---------------------------------------------------------------
function tMissionBase:action(act)
	local p = self.rule[act];
	if not p then
		print(format("[dixuangong:action] [error Action] [act=%s]", tostring(act)));
		return
	end
	if type(p) == "function" then
		return p(self, act);
	end
	setStage(p);
end

---------------------------------------------------------------
function newMission(base)
	if g_theMS then
		print("[error] [redefine g_theMS]");
		return g_theMS;
	end
	g_theMS = gf_CopyInherit(tMissionBase, base);
	return g_theMS;
end


----------------------------------------------------------------
function main()
	getStage():onTalk();
end

function onPlayerDeath(killer)
--	Msg2Player("你死了");
end

function onNpcDeath(npcIdx, f, x)
	getStage():onNpcDeath(npcIdx);
end

function OnDeath(id, f, x)
	if f == 1 then
		onPlayerDeath(id);
	else
		if x then
			SubWorld = f;
		end
		local oldPIdx = PlayerIndex;
		if not PlayerIndex or PlayerIndex <= 0 then
			local nPId, nPIndex = GetNextPlayer(g_theMS.MissionId,0,0);
			PlayerIndex = nPIndex;
		end
		onNpcDeath(id, f, x);
		PlayerIndex = oldPIdx;
	end
end

function onTrap(id)
	getStage():onTrap(id);
end


---------------------------------------------------
function tMissionBase:getEntryPos(nCamp)
	local pos;
	nCamp = nCamp or 1;
	if type(self.entryPos[nCamp]) ~= "table" then
		pos = self.entryPos;
	else
		pos = self.entryPos[nCamp];
	end
	if not pos then
		print(format("[tMissionBase:getEntryPos] [error entry pos] [nCamp = %s]", tostring(nCamp)));
		return
	end
	local nMapId = self:GetMissionV(MV_MAP_ID);
	return nMapId, self:getAPos(pos);
end
function tMissionBase:getExitPos(nCamp)
--	local pos;
--	nCamp = nCamp or 1;
--	if type(self.entryPos[nCamp]) ~= "table" then
--		pos = self.exitPos;
--	else
--		pos = self.exitPos[nCamp];
--	end
--	if not pos then
--		print(format("[tMissionBase:getEntryPos] [error entry pos] [nCamp = %s]", tostring(nCamp)));
--		return
--	end
--	local nMapId = self:GetMissionV(MV_EXIT_MAP_ID);
--	return nMapId, self:getAPos(pos);
	return gf_UnPack(self.exitPos);
end
function tMissionBase:getAPos(pos)
	if type(pos[1]) == "table" then
		pos = pos[random(1, getn(pos))];
	end
	return pos[1], pos[2];
end

function tMissionBase:getMapId()
	return self:GetMissionV(MV_MAP_ID), self:GetMissionV(MV_MAP_INDEX);
end
