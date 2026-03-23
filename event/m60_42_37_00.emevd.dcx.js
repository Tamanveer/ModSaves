// ==EMEVD==
// @docs    er-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "N:\\GR\\data\\Param\\event\\common_func.emevd\u0000N:\\GR\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.5
// ==/EMEVD==

// コンストラクタ -- constructor
$Event(0, Default, function() {
    //RegisterBonfire(1042370000, 1042371950, 0, 0, 0, 5);
    RegisterBonfire(1042370001, 1042371951, 0, 0, 0, 5); //gatefront tower grace
    $InitializeCommonEvent(0, 90005100, 71001, 76111, 1042371980, 77100, 2, 78100, 78101, 78102, 78103, 78104, 78105, 78106, 78107, 78108, 78109);
    $InitializeCommonEvent(0, 900005610, 1042371680, 100, 800, 0);
    $InitializeCommonEvent(0, 900005610, 1042371681, 100, 800, 0);
    $InitializeCommonEvent(0, 90005880, 1042370800, 1042370805, 1042372800, 1042370800, 30120, 60, 42, 37, 0, 1042372805);
    $InitializeCommonEvent(0, 90005881, 1042370800, 1042370805, 1042372801, 1042372802, 20300, 1042371805, 60, 42, 37, 0, 1042372805);
    $InitializeCommonEvent(0, 90005882, 1042370800, 1042370805, 1042372800, 1042370800, 1042372806, 1042375810, 1042371800, 1042370810, 1042372810, 902500520, -1, 20000);
    $InitializeCommonEvent(0, 90005883, 1042370800, 1042370805, 1042371805);
    $InitializeCommonEvent(0, 90005885, 1042370800, 0, 1042372806, 1042372807, 0, 1);
    $InitializeCommonEvent(0, 90005300, 10009800, 10009800, 0, 0, 0); //No respawn
    $InitializeCommonEvent(0, 90005300, 10009801, 10009801, 0, 0, 0); //No respawn
    $InitializeCommonEvent(0, 90005300, 10009802, 10009802, 0, 0, 0); //No respawn
    $InitializeCommonEvent(0, 90005300, 10009803, 10009803, 0, 0, 0); //No respawn
    $InitializeCommonEvent(0, 90005300, 10009804, 10009803, 0, 0, 0); //No respawn
    //Commander Boss stuff
    $InitializeCommonEvent(0, 90005870, 1042370801, 903251603, 12);
    $InitializeCommonEvent(0, 90005872, 1042370801, 12, 0);
    $InitializeCommonEvent(0, 90005860, 1042370801, 0, 1042370801, 0, 0, 0);
    
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949850, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949851, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949852, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949853, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949854, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949855, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949856, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949857, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949858, 19, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1042949859, 19, 10000851);
    
    $InitializeEvent(0, 1042372610);
    $InitializeEvent(0, 1042372651, 1520, 710520, 1770, 710770, 69090, 69370);
    $InitializeEvent(0, 1042373700, 78102, 1042370950, 1042379204);
    $InitializeEvent(0, 1042373701, 1042370950, 1042379204);
    $InitializeEvent(0, 1042373702, 1042370950, 1042379205);
    $InitializeEvent(0, 1042373703, 1042370950, 1042379205);
    $InitializeEvent(0, 1042373704, 10009800, 10009900, 2, -1); //gatefront balista activate
    $InitializeEvent(1, 1042373704, 10009801, 10009900, 2, -1); //gatefront balista activate
    $InitializeEvent(2, 1042373704, 10009802, 10009900, 2, -1); //gatefront balista activate
    $InitializeEvent(3, 1042373704, 10009803, 10009900, 2, -1); //gatefront balista activate
    $InitializeEvent(4, 1042373704, 10009804, 10009900, 2, -1); //gatefront balista activate
    $InitializeEvent(0, 1042373706, 1042371700, 1042371702, 60060, 9522);
    $InitializeEvent(0, 1042373707);
});

// プリコンストラクタ -- preconstructor
$Event(50, Default, function() {
    $InitializeCommonEvent(0, 90005251, 1042370200, 5, 0, -1);
});

// 円形サークル用ナビメッシュ切り抜きアセット無効化 -- Disable navimesh cutout asset for circular circle
$Event(1042372610, Restart, function() {
    DisableAsset(1042371610);
});

// 地図石碑光SFX切り替え -- Map stone monument light SFX switching
$Event(1042372620, Restart, function(assetEntityId, entityId, eventFlagId) {
    DisableNetworkSync();
    if (EventFlag(eventFlagId)) {
        ForceAnimationPlayback(entityId, 1, false, false, false);
        DeleteAssetfollowingSFX(assetEntityId, true);
        EndEvent();
    }
L0:
    CreateAssetfollowingSFX(assetEntityId, 200, 803220);
    WaitFor(EventFlag(eventFlagId));
    ForceAnimationPlayback(entityId, 1, false, false, false);
    DeleteAssetfollowingSFX(assetEntityId, true);
});

// チュートリアルメッセージ_騎乗 -- Tutorial message_Riding
$Event(1042372651, Restart, function(tutorialParamId, eventFlagId, tutorialParamId2, eventFlagId2, eventFlagId3, eventFlagId4) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    WaitFor(
        PlayerIsInOwnWorld()
            && PlayerHasItem(ItemType.Goods, 130)
            && PlayerInMap(60, 42, 37, 0)
            && !PlayerHasItem(ItemType.Goods, 9109)
            && !(HasMultiplayerState(MultiplayerState.Multiplayer)
                || HasMultiplayerState(MultiplayerState.MultiplayerPending))
            && !CharacterHasSpEffect(10000, 100690)
            && !CharacterHasSpEffect(10000, 9640));
    SetEventFlagID(eventFlagId, ON);
    SetEventFlagID(eventFlagId2, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    WaitFixedTimeSeconds(1);
    ShowTutorialPopup(tutorialParamId2, true, true);
    EndIf(EventFlag(eventFlagId3));
    DirectlyGivePlayerItem(ItemType.Goods, 9109, eventFlagId, 1);
    DirectlyGivePlayerItem(ItemType.Goods, 9137, eventFlagId2, 1);
    SetEventFlagID(eventFlagId3, ON);
    SetEventFlagID(eventFlagId4, ON);
});

// NPC100娘マリカ_導き会話許可_関所前 -- NPC100 daughter Marika_guidance conversation permission_in front of the checkpoint
$Event(1042373700, Restart, function(eventFlagId, entityId, eventFlagId2) {
    WaitFixedTimeFrames(1);
    EndIf(!PlayerIsInOwnWorld());
    EndIf(EventFlag(1042379203));
    WaitFor(
        EventFlag(eventFlagId)
            && EntityInRadiusOfEntity(20000, entityId, 5, 1)
            && !EventFlag(eventFlagId2));
    SetEventFlagID(1042372701, ON);
    WaitFor(
        !EventFlag(eventFlagId)
            || !EntityInRadiusOfEntity(20000, entityId, 5, 1)
            || EventFlag(eventFlagId2));
    SetEventFlagID(1042372701, OFF);
    RestartEvent();
});

// NPC100娘マリカ_契約会話再生監視_関所前 -- NPC100 daughter Marika_Contract conversation playback monitoring_In front of the checkpoint
$Event(1042373701, Restart, function(entityId, eventFlagId) {
    WaitFixedTimeFrames(1);
    EndIf(!PlayerIsInOwnWorld());
    EndIf(EventFlag(4680));
    WaitFor(EventFlag(4680));
    if (EntityInRadiusOfEntity(20000, entityId, 5, 1)) {
        SetEventFlagID(eventFlagId, ON);
    }
    EndEvent();
});

// NPC100娘マリカ_導き会話再生監視_関所前 -- NPC100 daughter Marika_Guide conversation playback monitoring_In front of the checkpoint
$Event(1042373702, Restart, function(entityId, eventFlagId) {
    WaitFixedTimeFrames(1);
    EndIf(!PlayerIsInOwnWorld());
    EndIf(EventFlag(1042379203));
    WaitFor(EventFlag(1042379203));
    if (EntityInRadiusOfEntity(20000, entityId, 5, 1)) {
        SetEventFlagID(eventFlagId, ON);
    }
    EndEvent();
});

// NPC100娘マリカ_目的会話再生禁止_関所前 -- NPC100 Daughter Marika_Objective conversation playback prohibited_In front of the checkpoint
$Event(1042373703, Restart, function(entityId, eventFlagId) {
    WaitFixedTimeFrames(1);
    EndIf(!PlayerIsInOwnWorld());
    EndIf(EventFlag(1042379207));
    WaitFor(EntityInRadiusOfEntity(20000, entityId, 5, 1) && EventFlag(eventFlagId));
    SetEventFlagID(1042372702, ON);
    WaitFor(!EntityInRadiusOfEntity(20000, entityId, 5, 1));
    SetEventFlagID(1042372702, OFF);
    RestartEvent();
});

$Event(1042373704, Restart, function(chrEntityId, areaEntityId, timeSeconds, animationId) {
    EndIf(ThisEventSlot());
    DisableCharacterAI(chrEntityId);
    chrSp = (CharacterType(10000, TargetType.BlackPhantom) && CharacterHasSpEffect(10000, 3710))
        || CharacterType(10000, TargetType.Alive)
        || CharacterType(10000, TargetType.BluePhantom)
        || CharacterType(10000, TargetType.WhitePhantom);
    sp = CharacterHasSpEffect(chrEntityId, 481)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90110)
        && !CharacterHasSpEffect(chrEntityId, 90160);
    sp2 = CharacterHasSpEffect(chrEntityId, 482)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90120)
        && !CharacterHasSpEffect(chrEntityId, 90160)
        && !CharacterHasSpEffect(chrEntityId, 90162);
    sp3 = CharacterHasSpEffect(chrEntityId, 483)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90140)
        && !CharacterHasSpEffect(chrEntityId, 90160)
        && !CharacterHasSpEffect(chrEntityId, 90161);
    sp4 = CharacterHasSpEffect(chrEntityId, 484)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90130)
        && !CharacterHasSpEffect(chrEntityId, 90161)
        && !CharacterHasSpEffect(chrEntityId, 90162);
    sp5 = CharacterHasSpEffect(chrEntityId, 487)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90150)
        && !CharacterHasSpEffect(chrEntityId, 90160);
    areaChrSp = InArea(10000, areaEntityId) && chrSp;
    WaitFor(
        HasDamageType(chrEntityId, 0, DamageType.Unspecified)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260)
            || areaChrSp
            || sp
            || sp2
            || sp3
            || sp4
            || sp5);
    SetNetworkconnectedThisEventSlot(ON);
    if (areaChrSp.Passed) {
        WaitFixedTimeSeconds(timeSeconds);
        if (Signed(animationId) != -1) {
            ForceAnimationPlayback(chrEntityId, animationId, true, false, false);
        }
    }
L1:
    EnableCharacterAI(chrEntityId);
});

$Event(1042373705, Restart, function(eventFlagId){
    SetEventFlagID(eventFlagId, OFF);
    EndEvent();
});

$Event(1042373706, Default, function(entityId, entityId2, animationId, actionButtonParameterId){
    EndIf(!PlayerIsInOwnWorld());
    online = HasMultiplayerState(MultiplayerState.Multiplayer)
        || HasMultiplayerState(MultiplayerState.MultiplayerPending);
    onlineAct &= !online;
    GotoIf(S0, online);
    onlineAct &= PlayerIsInOwnWorld() && ActionButtonInArea(actionButtonParameterId, entityId);
    WaitFor(onlineAct);
    if (!EventFlag(1042370801))  {
        WaitFixedTimeSeconds(0.1);
        DisplayGenericDialog(20035, PromptType.OKCANCEL, NumberofOptions.OneButton, entityId, 3);
S0:
        RestartEvent();
    }
L1:
    RotateCharacter(10000, entityId2, -1, true);
    ForceAnimationPlayback(10000, animationId, false, false, false);
});

$Event(1042373707, Restart, function(){
    $InitializeEvent(0, 1042373705, 10009800); //sets no respawn enemies to spawn again
    $InitializeEvent(1, 1042373705, 10009801); //sets no respawn enemies to spawn again
    $InitializeEvent(2, 1042373705, 10009802); //sets no respawn enemies to spawn again
    $InitializeEvent(3, 1042373705, 10009803); //sets no respawn enemies to spawn again
    $InitializeEvent(4, 1042373705, 10009804); //sets no respawn enemies to spawn again
    $InitializeEvent(5, 1042373705, 1042370801); //sets no respawn enemies to spawn again
    $InitializeEvent(6, 1042373705, 10000850); //sets no respawn enemies to spawn again
});
