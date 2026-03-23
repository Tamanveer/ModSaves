RegisterTableGoal(GOAL_BlackSword210100_Battle, "BlackSword210100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSword210100_Battle, true)

Goal.Initialize = function (_, arg1, _, _)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:SetStringIndexedNumber("isRunRate", 0)
    arg1:SetStringIndexedNumber("isFirstAttack", 0)
    arg1:SetStringIndexedNumber("isThrowSeal", 0)
    arg1:SetStringIndexedNumber("ReduceCTLightWave", 0)
end

Goal.Activate = function (_, actor, goals)
    Init_Pseudo_Global(actor, goals)
    actor:SetStringIndexedNumber("Dist_SideStep", 5)
    actor:SetStringIndexedNumber("Dist_BackStep", 5)
    actor:DeleteObserve(0)
    local probabilities = {}
    local acts = {}
    local f2_local0 = {}
    Common_Clear_Param(probabilities, acts, f2_local0)
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 38)
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 14540)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 14541)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 14542)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 14543)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 14544)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 14545)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 14546)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000000)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000001)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000002)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000003)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000004)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000005)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000006)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000008)
	actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000009)
	actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000011)
	actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000012)
	actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000013)
	actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000014)
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if actor:HasSpecialEffectId(TARGET_SELF, 14547) == false then
        actor:SetStringIndexedNumber("isRunRate", 100)
    else
        actor:SetStringIndexedNumber("isRunRate", 0)
    end
    if actor:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        actor:SetStringIndexedNumber("isThrowSeal", 1)
        actor:SetStringIndexedNumber("ReduceCTLightWave", 8)
    end
    local distance = actor:GetDist(TARGET_ENE_0)
    local random = actor:GetRandam_Int(1, 100)
	local hp = actor:GetHpRate(TARGET_SELF)
    actor:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    actor:GetEventRequest()
    if actor:GetStringIndexedNumber("isFirstAttack") == 0 and actor:HasSpecialEffectId(TARGET_SELF, 14547) then
        actor:SetStringIndexedNumber("isFirstAttack", 1)
        probabilities[15] = 10000
	elseif actor:HasSpecialEffectId(TARGET_SELF, 30000008) == false and hp <= 0.66 then
		probabilities[27] = 10000
	elseif actor:HasSpecialEffectId(TARGET_SELF, 30000008) then
		if actor:IsRiding(TARGET_ENE_0) == true and actor:HasSpecialEffectId(TARGET_SELF, 14547) == false then
			probabilities[20] = 100
		elseif hp <= 0.33 and actor:GetAttackPassedTime(3023) > 99 then
			probabilities[26] = 10000
		elseif actor:HasSpecialEffectId(TARGET_ENE_0, 79) then
			probabilities[17] = 100
		elseif actor:HasSpecialEffectId(TARGET_SELF, 14506) == true and actor:HasSpecialEffectId(TARGET_SELF, 14507) == false and actor:GetStringIndexedNumber("isFirstAttack") == 0 then
			actor:SetStringIndexedNumber("isFirstAttack", 1)
			probabilities[7] = 100
		elseif distance < 4 then
			if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 6) then
				probabilities[5] = 20
				probabilities[8] = 10
				probabilities[9] = 25
				probabilities[11] = 25
				probabilities[13] = 30
				probabilities[15] = 20
				probabilities[16] = 20
				probabilities[23] = 50
				probabilities[24] = 50
				probabilities[25] = 50
			else
				probabilities[5] = 10
				probabilities[47] = 90
				probabilities[8] = 1
			end
			if actor:HasSpecialEffectId(TARGET_SELF, 14532) then
				probabilities[8] = 360
				probabilities[47] = 180
			end
		elseif distance < 6 then
			probabilities[4] = 35
			probabilities[8] = 10
			probabilities[9] = 15
			probabilities[11] = 15
			probabilities[13] = 25
			probabilities[15] = 20
			probabilities[16] = 20
			probabilities[20] = 30
			probabilities[23] = 30
			probabilities[24] = 30
			probabilities[25] = 30
			if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
				probabilities[47] = 5000
			end
			if actor:HasSpecialEffectId(TARGET_SELF, 14532) then
				if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
					probabilities[8] = 800
				end
				probabilities[47] = 5000
			end
		elseif distance < 12 then
			probabilities[4] = 0
			probabilities[8] = 0
			probabilities[9] = 0
			probabilities[11] = 0
			probabilities[13] = 0
			probabilities[14] = 20
			probabilities[15] = 0
			probabilities[16] = 0
			probabilities[20] = 20
			probabilities[23] = 20
			probabilities[24] = 0
			probabilities[25] = 20
		elseif actor:HasSpecialEffectId(TARGET_SELF, 14506) == false then
			probabilities[4] = 30
			probabilities[5] = 15
			probabilities[9] = 25
			probabilities[13] = 20
			probabilities[15] = 20
			probabilities[16] = 15
			probabilities[14] = 40
			probabilities[49] = 10
			if actor:HasSpecialEffectId(TARGET_SELF, 14530) then
				if random < 30 then
					probabilities[49] = 999
				end
				probabilities[14] = 80
			elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
				probabilities[47] = 5000
			end
			if actor:HasSpecialEffectId(TARGET_SELF, 14532) then
				probabilities[14] = 300
				probabilities[22] = 240
				probabilities[49] = 240
				if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
					probabilities[47] = 5000
				end
			end
			if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and actor:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
				probabilities[14] = 1000
			end
		else
			probabilities[14] = 30
			probabilities[47] = 70
			probabilities[8] = 1
		end
    elseif actor:IsRiding(TARGET_ENE_0) == true and actor:HasSpecialEffectId(TARGET_SELF, 14547) == false then
        probabilities[20] = 100
    elseif actor:HasSpecialEffectId(TARGET_ENE_0, 79) then
        probabilities[17] = 100
    elseif actor:HasSpecialEffectId(TARGET_SELF, 14506) == true and actor:HasSpecialEffectId(TARGET_SELF, 14507) == false and actor:GetStringIndexedNumber("isFirstAttack") == 0 then
        actor:SetStringIndexedNumber("isFirstAttack", 1)
        probabilities[7] = 100
    elseif distance < 4 then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 6) then
            probabilities[5] = 20
            probabilities[8] = 10
            probabilities[9] = 25
            probabilities[11] = 25
            probabilities[13] = 30
            probabilities[15] = 20
            probabilities[16] = 20
			probabilities[23] = 50
			probabilities[24] = 50
        else
            probabilities[5] = 10
            probabilities[47] = 90
            probabilities[8] = 1
        end
        if actor:HasSpecialEffectId(TARGET_SELF, 14532) then
            probabilities[8] = 360
            probabilities[47] = 180
        end
    elseif distance < 6 then
        probabilities[4] = 35
        probabilities[8] = 10
        probabilities[9] = 15
        probabilities[11] = 15
        probabilities[13] = 25
        probabilities[15] = 20
        probabilities[16] = 20
        probabilities[23] = 50
		probabilities[24] = 50
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            probabilities[47] = 5000
        end
        if actor:HasSpecialEffectId(TARGET_SELF, 14532) then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[8] = 800
            end
            probabilities[47] = 5000
        end
    elseif actor:HasSpecialEffectId(TARGET_SELF, 14506) == false then
        probabilities[4] = 30
        probabilities[5] = 15
        probabilities[9] = 25
        probabilities[13] = 20
        probabilities[15] = 20
        probabilities[16] = 15
        probabilities[14] = 40
        probabilities[49] = 10
        if actor:HasSpecialEffectId(TARGET_SELF, 14530) then
            if random < 30 then
                probabilities[49] = 999
            end
            probabilities[14] = 80
        elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            probabilities[47] = 5000
        end
        if actor:HasSpecialEffectId(TARGET_SELF, 14532) then
            probabilities[14] = 300
            probabilities[22] = 240
            probabilities[49] = 240
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                probabilities[47] = 5000
            end
        end
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and actor:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
            probabilities[14] = 1000
        end
    else
        probabilities[14] = 30
        probabilities[47] = 70
        probabilities[8] = 1
    end
    if actor:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        probabilities[11] = 0
    end
    if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        probabilities[8] = 0
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 14506) == false then
        probabilities[7] = 0
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 14506) == true and actor:HasSpecialEffectId(TARGET_SELF, 14507) == false then
        probabilities[7] = 100
        probabilities[49] = 40
        probabilities[14] = 0
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 14547) then
        probabilities[9] = 0
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[14] = 0
        probabilities[16] = 0
        probabilities[20] = 0
        probabilities[21] = 0
    else
        probabilities[15] = 0
    end
    if actor:GetStringIndexedNumber("isThrowSeal") == true then
        probabilities[11] = 0
        probabilities[20] = 0
        probabilities[21] = 0
    end
    probabilities[4] = SetCoolTime(actor, goals, 3003, 10 + actor:GetRandam_Int(0, 5), probabilities[4], 0)
    probabilities[5] = SetCoolTime(actor, goals, 3006, 10 + actor:GetRandam_Int(0, 5), probabilities[5], 0)
    probabilities[7] = SetCoolTime(actor, goals, 3008, 25, probabilities[7], 0)
    probabilities[8] = SetCoolTime(actor, goals, 3009, 5, probabilities[8], 0)
    probabilities[9] = SetCoolTime(actor, goals, 3010, 5 + actor:GetRandam_Int(0, 5), probabilities[9], 0)
    probabilities[10] = SetCoolTime(actor, goals, 3011, 10 + actor:GetRandam_Int(0, 5), probabilities[10], 0)
    probabilities[11] = SetCoolTime(actor, goals, 3012, 10 + actor:GetRandam_Int(0, 5), probabilities[11], 0)
    probabilities[12] = SetCoolTime(actor, goals, 3014, 10 + actor:GetRandam_Int(0, 5), probabilities[12], 0)
    if actor:HasSpecialEffectId(TARGET_SELF, 14532) == false then
        probabilities[14] = SetCoolTime(actor, goals, 3017, 5 + actor:GetRandam_Int(0, 5), probabilities[14], 0)
    else
        probabilities[14] = SetCoolTime(actor, goals, 3017, 3, probabilities[14], 1)
    end
    probabilities[15] = SetCoolTime(actor, goals, 3018, 10 + actor:GetRandam_Int(0, 5), probabilities[15], 0)
    probabilities[21] = SetCoolTime(actor, goals, 3021, 10 + actor:GetRandam_Int(0, 5), probabilities[21], 0)
    probabilities[22] = SetCoolTime(actor, goals, 3011, 10, probabilities[22], 0)
    probabilities[23] = SetCoolTime(actor, goals, 3026, 15, probabilities[23], 0)
    probabilities[23] = SetCoolTime(actor, goals, 3019, 15, probabilities[23], 0)
    probabilities[24] = SetCoolTime(actor, goals, 3029, 45, probabilities[24], 0)
    probabilities[25] = SetCoolTime(actor, goals, 3035, 15, probabilities[25], 0)
    probabilities[27] = SetCoolTime(actor, goals, 3025, 15, probabilities[27], 0)
    probabilities[44] = SetCoolTime(actor, goals, 3002, 10 + actor:GetRandam_Int(0, 5), probabilities[44], 1)
    probabilities[44] = SetCoolTime(actor, goals, 3003, 5 + actor:GetRandam_Int(0, 5), probabilities[44], 1)
    probabilities[45] = SetCoolTime(actor, goals, 3003, 10 + actor:GetRandam_Int(0, 5), probabilities[45], 1)
    probabilities[45] = SetCoolTime(actor, goals, 3002, 5 + actor:GetRandam_Int(0, 5), probabilities[45], 1)
    if actor:HasSpecialEffectId(TARGET_SELF, 14532) == false then
        probabilities[49] = SetCoolTime(actor, goals, 2002, 20, probabilities[49], 1)
        probabilities[49] = SetCoolTime(actor, goals, 2003, 20, probabilities[49], 1)
    end
    acts[1] = REGIST_FUNC(actor, goals, BlackSword210100_Act01)
    acts[2] = REGIST_FUNC(actor, goals, BlackSword210100_Act02)
    acts[3] = REGIST_FUNC(actor, goals, BlackSword210100_Act03)
    acts[4] = REGIST_FUNC(actor, goals, BlackSword210100_Act04)
    acts[5] = REGIST_FUNC(actor, goals, BlackSword210100_Act05)
    acts[6] = REGIST_FUNC(actor, goals, BlackSword210100_Act06)
    acts[7] = REGIST_FUNC(actor, goals, BlackSword210100_Act07)
    acts[8] = REGIST_FUNC(actor, goals, BlackSword210100_Act08)
    acts[9] = REGIST_FUNC(actor, goals, BlackSword210100_Act09)
    acts[10] = REGIST_FUNC(actor, goals, BlackSword210100_Act10)
    acts[11] = REGIST_FUNC(actor, goals, BlackSword210100_Act11)
    acts[12] = REGIST_FUNC(actor, goals, BlackSword210100_Act12)
    acts[13] = REGIST_FUNC(actor, goals, BlackSword210100_Act13)
    acts[14] = REGIST_FUNC(actor, goals, BlackSword210100_Act14)
    acts[15] = REGIST_FUNC(actor, goals, BlackSword210100_Act15)
    acts[16] = REGIST_FUNC(actor, goals, BlackSword210100_Act16)
    acts[17] = REGIST_FUNC(actor, goals, BlackSword210100_Act17)
    acts[18] = REGIST_FUNC(actor, goals, BlackSword210100_Act18)
    acts[19] = REGIST_FUNC(actor, goals, BlackSword210100_Act19)
    acts[20] = REGIST_FUNC(actor, goals, BlackSword210100_Act20)
    acts[21] = REGIST_FUNC(actor, goals, BlackSword210100_Act21)
    acts[22] = REGIST_FUNC(actor, goals, BlackSword210100_Act22)
	acts[23] = REGIST_FUNC(actor, goals, BlackSword210100_Act23)
	acts[24] = REGIST_FUNC(actor, goals, BlackSword210100_Act24)
	acts[25] = REGIST_FUNC(actor, goals, BlackSword210100_Act25)
	acts[26] = REGIST_FUNC(actor, goals, BlackSword210100_Act26)
	acts[27] = REGIST_FUNC(actor, goals, BlackSword210100_Act27)
    acts[40] = REGIST_FUNC(actor, goals, BlackSword210100_Act40)
    acts[41] = REGIST_FUNC(actor, goals, BlackSword210100_Act41)
    acts[42] = REGIST_FUNC(actor, goals, BlackSword210100_Act42)
    acts[42] = REGIST_FUNC(actor, goals, BlackSword210100_Act42)
    acts[43] = REGIST_FUNC(actor, goals, BlackSword210100_Act43)
    acts[44] = REGIST_FUNC(actor, goals, BlackSword210100_Act44)
    acts[45] = REGIST_FUNC(actor, goals, BlackSword210100_Act45)
    acts[46] = REGIST_FUNC(actor, goals, BlackSword210100_Act46)
    acts[47] = REGIST_FUNC(actor, goals, BlackSword210100_Act47)
    acts[48] = REGIST_FUNC(actor, goals, BlackSword210100_Act48)
    acts[49] = REGIST_FUNC(actor, goals, BlackSword210100_Act49)
    Common_Battle_Activate(actor, goals, probabilities, acts, REGIST_FUNC(actor, goals, BlackSword210100_ActAfter_AdjustSpace), f2_local0)
end

function BlackSword210100_Act01(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f3_local0 = 3
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f3_local4 = 0
    local f3_local5 = 20
    local f3_local6 = 20
    Approach_Act_Flex(actor, goals, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local action = 3000
    local success_distance = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act02(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f4_local0 = 2.5
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f4_local4 = 0
    local f4_local5 = 20
    local f4_local6 = 20
    Approach_Act_Flex(actor, goals, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local action = 3001
    local success_distance = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act03(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f5_local0 = 3
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f5_local4 = 0
    local f5_local5 = 20
    local f5_local6 = 20
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local action = 3002
    local success_distance = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 1)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act04(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f6_local0 = 5.5
    local f6_local1 = 0
    local f6_local2 = 999
    local f6_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f6_local4 = 0
    local f6_local5 = 20
    local f6_local6 = 20
    Approach_Act_Flex(actor, goals, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local action = 3003
    local success_distance = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act05(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f7_local0 = 5
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f7_local4 = 0
    local f7_local5 = 20
    local f7_local6 = 20
    Approach_Act_Flex(actor, goals, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act06(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f8_local0 = 6
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f8_local4 = 0
    local f8_local5 = 20
    local f8_local6 = 20
    Approach_Act_Flex(actor, goals, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3007
    local f8_local8 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act07(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f9_local0 = 1.5
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f9_local4 = 0
    local f9_local5 = 20
    local f9_local6 = 20
    Approach_Act_Flex(actor, goals, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3008
    local f9_local8 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f9_local7, TARGET_ENE_0, f9_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act08(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f10_local0 = 3009
    local f10_local1 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act09(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f11_local0 = 6
    local f11_local1 = 0
    local f11_local2 = 999
    local f11_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f11_local4 = 0
    local f11_local5 = 20
    local f11_local6 = 20
    Approach_Act_Flex(actor, goals, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3010
    local f11_local8 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act10(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f12_local0 = 3011
    local f12_local1 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act11(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f13_local0 = 6
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f13_local4 = 0
    local f13_local5 = 20
    local f13_local6 = 20
    Approach_Act_Flex(actor, goals, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3012
    local f13_local8 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act12(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f14_local0 = 3.5
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f14_local4 = 0
    local f14_local5 = 20
    local f14_local6 = 20
    Approach_Act_Flex(actor, goals, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3014
    local f14_local8 = 3.5
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act13(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f15_local0 = 3
    local f15_local1 = 0
    local f15_local2 = 999
    local f15_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f15_local4 = 0
    local f15_local5 = 20
    local f15_local6 = 20
    Approach_Act_Flex(actor, goals, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local action = 3015
    local success_distance = 2
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 1)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act14(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local action = 3017
    local success_distance = 999
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act15(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f17_local0 = 3.5
    local f17_local1 = 0
    local f17_local2 = 999
    local f17_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f17_local4 = 0
    local f17_local5 = 20
    local f17_local6 = 20
    Approach_Act_Flex(actor, goals, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local action = 3018
    local success_distance = 2
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act16(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f18_local0 = 5
    local f18_local1 = 0
    local f18_local2 = 999
    local f18_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f18_local4 = 0
    local f18_local5 = 20
    local f18_local6 = 20
    Approach_Act_Flex(actor, goals, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local action = 3004
    local success_distance = 2
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act17(arg0, goals, _)
    Approach_Act_Flex(arg0, goals, 1, 1, 1, 100, 0, 0.1, 0.1)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3110, TARGET_ENE_0, 3, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act18(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    local f20_local0 = 3
    local f20_local1 = 0
    local f20_local2 = 999
    local f20_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f20_local4 = 0
    local f20_local5 = 20
    local f20_local6 = 20
    Approach_Act_Flex(actor, goals, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act19(actor, goals, _)
    local random = actor:GetRandam_Int(1, 100)
    local f21_local0 = 3
    local f21_local1 = 0
    local f21_local2 = 999
    local f21_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f21_local4 = 0
    local f21_local5 = 20
    local f21_local6 = 20
    Approach_Act_Flex(actor, goals, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    if random <= 50 then
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
        if random <= 50 then
            goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    else
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
        if random <= 50 then
            goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            goals:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act20(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f22_local0 = 40
    local f22_local1 = 0
    local f22_local2 = 999
    local f22_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f22_local4 = 0
    local f22_local5 = 20
    local f22_local6 = 20
    Approach_Act_Flex(actor, goals, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local action = 3020
    local success_distance = 2
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act21(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f23_local0 = 10
    local f23_local1 = 0
    local f23_local2 = 999
    local f23_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f23_local4 = 0
    local f23_local5 = 20
    local f23_local6 = 20
    Approach_Act_Flex(actor, goals, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local action = 3021
    local success_distance = 2
    actor:SetNumber(0, 0)
    actor:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, action, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act22(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f24_local0 = 4
    local f24_local1 = 0
    local f24_local2 = 999
    local f24_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f24_local4 = 0
    local f24_local5 = 20
    local f24_local6 = 20
    Approach_Act_Flex(actor, goals, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3011
    local f24_local8 = 3.5
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act23(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f24_local0 = 4
	if actor:HasSpecialEffectId(TARGET_SELF, 30000008) then
		f24_local0 = 20
	end
    local f24_local1 = 0
    local f24_local2 = 999
    local f24_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f24_local4 = 0
    local f24_local5 = 20
    local f24_local6 = 20
    Approach_Act_Flex(actor, goals, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3026
	if actor:HasSpecialEffectId(TARGET_SELF, 30000008) then
		f24_local7 = 3019
	end
    local f24_local8 = 15
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act24(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f24_local0 = 4
    local f24_local1 = 0
    local f24_local2 = 999
    local f24_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f24_local4 = 0
    local f24_local5 = 20
    local f24_local6 = 20
    Approach_Act_Flex(actor, goals, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3029
    local f24_local8 = 999
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act25(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f24_local0 = 20
    local f24_local1 = 0
    local f24_local2 = 999
    local f24_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f24_local4 = 0
    local f24_local5 = 20
    local f24_local6 = 20
    Approach_Act_Flex(actor, goals, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3035
    local f24_local8 = 999
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, 0, 0, 0, 0)
	
	local f25_TPDirection = AI_DIR_TYPE_ToFL
	local f25_TPDistance = 22
	local f25_TPIdkEnemyGuyIg = TARGET_ENE_0
	
	goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
	goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
	
	goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act26(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f24_local0 = 4
    local f24_local1 = 0
    local f24_local2 = 999
    local f24_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f24_local4 = 0
    local f24_local5 = 20
    local f24_local6 = 20
    Approach_Act_Flex(actor, goals, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3023
    local f24_local8 = 999
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act27(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    local f24_local0 = 4
    local f24_local1 = 0
    local f24_local2 = 999
    local f24_local3 = actor:GetStringIndexedNumber("isRunRate")
    local f24_local4 = 0
    local f24_local5 = 20
    local f24_local6 = 20
    Approach_Act_Flex(actor, goals, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3025
    local f24_local8 = 999
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act40(arg0, goals, _)
    goals:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act41(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act42(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act43(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, 1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act44(arg0, goals, _)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act45(arg0, goals, _)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    goals:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act46(arg0, goals, _)
    goals:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act47(actor, goals, _)
    local f32_local0 = 0.5
    local f32_local1 = 6013
    local f32_local2 = TARGET_ENE_0
    local f32_local3 = 0
    local f32_local4 = AI_DIR_TYPE_R
    local f32_local5 = 0
    local f32_local6 = actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
    if f32_local6 == true then
        f32_local1 = 6012
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 14547) then
        goals:AddSubGoal(GOAL_COMMON_SpinStep, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local random = actor:GetRandam_Int(1, 100)
    if actor:GetAttackPassedTime(6002) > 5 and actor:GetAttackPassedTime(6003) > 5 then
        if actor:HasSpecialEffectId(TARGET_SELF, 14506) then
            random = random - 80
        elseif actor:HasSpecialEffectId(TARGET_SELF, 14532) and actor:GetDist(TARGET_ENE_0) < 6 then
            random = random - 70
        end
    else
        random = random + 20
    end
    if random < 20 or actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, -1, 3) then
        if actor:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 5) and f32_local6 == true then
            f32_local1 = 6002
        elseif actor:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 5) and f32_local6 == false then
            f32_local1 = 6003
        end
    end
    goals:AddSubGoal(GOAL_COMMON_SpinStep, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act48(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_Act49(actor, goals, _)
    local distance0 = 6
    local f34_local0 = 50
    local action = -1
    local is_walking = true
    local f34_local1 = 1
    local f34_local2 = 10
    local random0 = 1.5
    local random1 = 0.5
    if actor:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and actor:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki then
        random0 = actor:GetRandam_Float(2.5, 3.5)
        random1 = actor:GetRandam_Float(2.5, 3.5)
    end
    local f34_local3 = actor:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f34_local1)
    local f34_local4 = actor:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f34_local1)
    actor:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f34_local1)
    local f34_local5 = actor:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f34_local1)
    local distance1 = actor:GetDist(TARGET_ENE_0)
    local random2 = actor:GetRandam_Int(0, 1)
    if f34_local4 == true and f34_local3 == true then
    elseif f34_local4 == true and f34_local3 == false then
        random2 = 0
    elseif f34_local4 == false and f34_local3 == true then
        random2 = 1
    elseif f34_local4 == false and f34_local3 == false then
        random2 = 2
    end
    if f34_local0 < distance1 then
        goals:AddSubGoal(GOAL_COMMON_ApproachTarget, f34_local2, TARGET_ENE_0, actor:GetRandam_Float(distance0, f34_local0), TARGET_SELF, true, action)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif distance1 <= f34_local0 and distance0 <= distance1 then
        if random2 <= 1 then
            actor:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
            goals:AddSubGoal(GOAL_COMMON_SidewayMove, random0, TARGET_ENE_0, random2, 100, is_walking, false, action, resultTypeIfGuardSuccess)
        else
            goals:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, distance0, TARGET_SELF, true, action)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif distance1 < distance0 then
        if f34_local5 == true then
            goals:AddSubGoal(GOAL_COMMON_LeaveTarget, random1, TARGET_ENE_0, actor:GetRandam_Float(distance0, f34_local0), TARGET_ENE_0, is_walking, action, GUARD_GOAL_DESIRE_RET_Success)
        elseif random2 <= 1 then
            goals:AddSubGoal(GOAL_COMMON_SidewayMove, random0, TARGET_ENE_0, random2, 100, is_walking, false, action, resultTypeIfGuardSuccess)
        else
            BlackSword210100_Act05(actor, goals)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210100_ActAfter_AdjustSpace(_, goals, _)
    goals:AddSubGoal(GOAL_BlackSword210100_AfterAttackAct, 10)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (_, _, _)
end

Goal.Interrupt = function (_, actor, goals)
    local random0 = actor:GetRandam_Int(1, 100)
    local random1 = actor:GetRandam_Int(1, 100)
    local distance = actor:GetDist(TARGET_ENE_0)
    local hp = actor:GetHpRate(TARGET_SELF)
    actor:GetNumber(0)
    actor:GetNumber(1)
    actor:GetRandam_Int(0, 10)
    local random2 = actor:GetRandam_Int(0, 5)
    local f38_local0 = actor:HasSpecialEffectId(TARGET_SELF, 14547)
    if actor:IsLadderAct(TARGET_SELF) then
        return false
    elseif actor:IsInterupt(INTERUPT_Shoot) and actor:HasSpecialEffectId(TARGET_SELF, 14506) == false and actor:HasSpecialEffectId(TARGET_SELF, 14531) then
        if distance > 6 or f38_local0 == true then
            goals:ClearSubGoal()
            BlackSword210100_Act47(actor, goals)
            return true
        elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            local f38_local1 = 3006
            if actor:GetAttackPassedTime(3010) > 10 then
                f38_local1 = 3010
            elseif actor:GetAttackPassedTime(3012) > 10 and actor:GetStringIndexedNumber("isThrowSeal") == false then
                f38_local1 = 3012
            end
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f38_local1, TARGET_ENE_0, 0, 0, 0)
            return true
        end
    end
    if actor:IsInterupt(INTERUPT_Inside_ObserveArea) and actor:IsInsideObserve(0) and actor:GetTimer(2) <= 0 then
        goals:ClearSubGoal()
        actor:Replaning()
        return true
    elseif actor:IsInterupt(INTERUPT_FindAttack) and actor:GetTimer(1) <= 0 and actor:HasSpecialEffectId(TARGET_SELF, 14531) and actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + actor:GetMapHitRadius(TARGET_SELF)) then
        actor:SetTimer(1, 10)
        goals:ClearSubGoal()
        if random0 < 33 then
            actor:SetTimer(2, 0.5)
            goals:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_ENE_0)
            goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3010, TARGET_ENE_0, 0, 0, 0)
        elseif random0 < 66 and actor:GetStringIndexedNumber("isThrowSeal") == false then
            goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3012, TARGET_ENE_0, 0, 0, 0)
        else
            goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3011, TARGET_ENE_0, 0, 0, 0)
        end
        return true
    elseif actor:IsInterupt(INTERUPT_Damaged) and actor:HasSpecialEffectId(TARGET_SELF, 5035) == false then
        if actor:HasSpecialEffectId(TARGET_SELF, 14506) and distance < 3 then
            goals:ClearSubGoal()
            BlackSword210100_Act47(actor, goals)
            return true
        elseif distance < 1.5 then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                if 20 + random2 <= actor:GetAttackPassedTime(3009) and actor:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 9, 0, 0) then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0)
                    return true
                elseif 10 + random2 <= actor:GetAttackPassedTime(3010) then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3010, TARGET_ENE_0, 0, 0, 0)
                    return true
                elseif 10 + random2 <= actor:GetAttackPassedTime(3012) and actor:GetStringIndexedNumber("isThrowSeal") == false and 5 + random2 <= actor:GetAttackPassedTime(3010) and actor:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3012, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    goals:ClearSubGoal()
                    BlackSword210100_Act47(actor, goals)
                    return true
                end
            else
                goals:ClearSubGoal()
                BlackSword210100_Act47(actor, goals)
                return true
            end
        end
    end
    if actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:HasSpecialEffectId(TARGET_SELF, 5030) then
        if actor:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, 0, 0) then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            goals:ClearSubGoal()
            BlackSword210100_Act47(actor, goals)
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:HasSpecialEffectId(TARGET_SELF, 5031) and distance > 6 and actor:HasSpecialEffectId(TARGET_SELF, 14506) and actor:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        goals:ClearSubGoal()
        local f38_local1 = 7
        local f38_local2 = 0
        local f38_local3 = 999
        local f38_local4 = actor:GetStringIndexedNumber("isRunRate")
        local f38_local5 = 0
        local f38_local6 = 20
        local f38_local7 = 20
        Approach_Act_Flex(actor, goals, f38_local1, f38_local2, f38_local3, f38_local4, f38_local5, f38_local6, f38_local7)
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 6, 0, 0, 0, 0)
        return true
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if actor:HasSpecialEffectId(TARGET_SELF, 14532) and distance < 8 then
            goals:ClearSubGoal()
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0, 0)
            else
                BlackSword210100_Act47(actor, goals)
            end
            return true
        
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000008) == false and hp <= 0.66 then
			goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
			return true
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000000) then
			if actor:HasSpecialEffectId(TARGET_SELF, 30000008) then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
				return true
			elseif distance > 3 then
				goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 10, 0, 0, 0)
                return true
			else
				goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 10, 0, 0, 0)
                return true
			end
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000001) then
			if random0 < 33 then
				goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			elseif random0 < 66 then
				goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			else
				goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			end
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000002) then
			if random1 > 50 then
                goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			else
                goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			end
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000003) then
			if distance < 5 then
                goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			end
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000004) then
			if actor:HasSpecialEffectId(TARGET_SELF, 30000008) then
                goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			end
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000006) then
			goals:ClearSubGoal()
			goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 4, TARGET_ENE_0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0)
			return true
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000009) then
			goals:ClearSubGoal()
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 999, 0, 0, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
			
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0, 0)
			return true
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000005) and actor:HasSpecialEffectId(TARGET_SELF, 30000008) then
			goals:ClearSubGoal()
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 999, 0, 0, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
			if actor:HasSpecialEffectId(TARGET_SELF, 30000010) then
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			end
			if random0 <= 33 then
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			elseif random0 <= 66 then
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			else
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0)
                return true
			end
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000011) then
			goals:ClearSubGoal()
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 999, 0, 0, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
			return true
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000012) then
			goals:ClearSubGoal()
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 999, 0, 0, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
			
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
			return true
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000014) then
			goals:ClearSubGoal()
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
			return true
		elseif actor:HasSpecialEffectId(TARGET_SELF, 30000013) then
			if actor:GetAttackPassedTime(3027) > 12 then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0)
				return true
			elseif actor:GetAttackPassedTime(3000) > 12 then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0)
			elseif actor:GetAttackPassedTime(3004) > 12 then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
				return true
			elseif actor:GetAttackPassedTime(3020) > 12 then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 0, 0, 0)
				return true
			elseif actor:GetAttackPassedTime(3036) > 12 then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0)
				return true
			elseif actor:GetAttackPassedTime(3025) > 12 then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0)
				return true
			end
		elseif actor:HasSpecialEffectId(TARGET_SELF, 14540) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3000) > 12 and random0 < 30 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f38_local0 == false and actor:HasSpecialEffectId(TARGET_SELF, 14506) == false and 12 - actor:GetStringIndexedNumber("ReduceCTLightWave") < actor:GetAttackPassedTime(3017) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 14541) and f38_local0 == false then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 3 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 14542) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 4 + actor:GetMapHitRadius(TARGET_SELF)) and random0 < 30 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3014) > 20 and f38_local0 == false and random1 < 60 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3004) > 8 then
                if f38_local0 == true then
                    BlackSword210100_Act47(actor, goals)
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                if actor:HasSpecialEffectId(TARGET_SELF, 14548) and actor:GetAttackPassedTime(3025) > 20 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                goals:ClearSubGoal()
                BlackSword210100_Act47(actor, goals)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 14543) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3000) > 12 and random0 < 30 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3012) > 30 and actor:GetStringIndexedNumber("isThrowSeal") == false and random1 < 40 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3010) > 20 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + actor:GetMapHitRadius(TARGET_SELF)) and f38_local0 == false and actor:GetAttackPassedTime(3014) > 20 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                if actor:HasSpecialEffectId(TARGET_SELF, 14548) and actor:GetAttackPassedTime(3025) > 20 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and 12 - actor:GetStringIndexedNumber("ReduceCTLightWave") < actor:GetAttackPassedTime(3017) and actor:HasSpecialEffectId(TARGET_SELF, 14506) == false and f38_local0 == false then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                goals:ClearSubGoal()
                BlackSword210100_Act47(actor, goals)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 14544) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3000) > 12 and random0 < 30 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3018) > 5 and f38_local0 == true and random0 < 50 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3012) > 30 and f38_local0 == true and actor:GetStringIndexedNumber("isThrowSeal") == false and random1 < 40 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + actor:GetMapHitRadius(TARGET_SELF)) and f38_local0 == true and actor:GetAttackPassedTime(3010) > 20 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3004) > 8 then
                if f38_local0 == true then
                    BlackSword210100_Act47(actor, goals)
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3012) > 30 and actor:GetStringIndexedNumber("isThrowSeal") == false then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3010) > 20 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and 12 - actor:GetStringIndexedNumber("ReduceCTLightWave") < actor:GetAttackPassedTime(3017) and f38_local0 == false and actor:HasSpecialEffectId(TARGET_SELF, 14506) == false then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 14545) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3000) > 12 and random0 < 30 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
            elseif actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f38_local0 == false and actor:HasSpecialEffectId(TARGET_SELF, 14506) == false and 12 - actor:GetStringIndexedNumber("ReduceCTLightWave") < actor:GetAttackPassedTime(3017) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 14546) then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) and random1 < 60 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 5, 0, 0, 120)
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 5, 0, 0, 120)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + actor:GetMapHitRadius(TARGET_SELF)) and random0 < 60 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3018) > 5 and f38_local0 == true and random0 < 50 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                if f38_local0 == true then
                    BlackSword210100_Act47(actor, goals)
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif actor:HasSpecialEffectId(TARGET_SELF, 5026) then
			if actor:HasSpecialEffectId(TARGET_SELF, 30000008) then
				goals:ClearSubGoal()
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 999, 0, 0, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
				if random0 <= 33 then
					goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
				elseif random0 <= 66 then
					goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
				else
					goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 999, 0, 0, 0, 0)
					goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 4, TARGET_ENE_0)
					goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
					
					goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0, 0)
				end
			elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 4 + actor:GetMapHitRadius(TARGET_SELF)) and random0 < 30 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + actor:GetMapHitRadius(TARGET_SELF)) and actor:GetAttackPassedTime(3014) > 20 and f38_local0 == false and random1 < 60 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                if f38_local0 == true then
                    BlackSword210100_Act47(actor, goals)
                else
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + actor:GetMapHitRadius(TARGET_SELF)) then
                goals:ClearSubGoal()
                if actor:HasSpecialEffectId(TARGET_SELF, 14548) and actor:GetAttackPassedTime(3025) > 20 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            else
                goals:ClearSubGoal()
                return true
            end
        end
    end
    if actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:HasSpecialEffectId(TARGET_SELF, 5032) then
        goals:ClearSubGoal()
        if actor:HasSpecialEffectId(TARGET_SELF, 14506) then
            goals:AddSubGoal(GOAL_COMMON_LeaveTarget, 7, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        else
            goals:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        end
        return true
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:HasSpecialEffectId(TARGET_SELF, 5034) and actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 60, 4) then
        if distance < 3.5 then
            if random0 <= 30 and f38_local0 == false and 20 + random2 <= actor:GetAttackPassedTime(3014) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0)
                return true
            end
            goals:ClearSubGoal()
            if actor:HasSpecialEffectId(TARGET_SELF, 14548) and actor:GetAttackPassedTime(3025) > 20 then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
            else
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
            end
            return true
        else
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:HasSpecialEffectId(TARGET_SELF, 5036) then
        goals:ClearSubGoal()
        BlackSword210100_Act47(actor, goals)
        return true
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(79) then
        goals:ClearSubGoal()
        actor:Replaning()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlackSword210100_AfterAttackAct, "BlackSword210100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSword210100_AfterAttackAct, true)

Goal.Activate = function (_, actor, goals)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetToTargetAngle(TARGET_ENE_0)
    actor:SetStringIndexedNumber("DistMin_AAA", -999)
    actor:SetStringIndexedNumber("DistMax_AAA", 7)
    actor:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    actor:SetStringIndexedNumber("Angle_AAA", 180)
    actor:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    actor:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    actor:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    actor:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if distance >= 5 then
        actor:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        actor:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        actor:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif distance >= 2 then
        actor:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        actor:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        actor:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        actor:SetStringIndexedNumber("Odds_Back_AAA", 10)
        actor:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        actor:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        actor:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        actor:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        actor:SetStringIndexedNumber("Odds_Back_AAA", 10)
        actor:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        actor:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        actor:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    goals:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end
