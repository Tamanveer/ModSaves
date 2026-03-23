// ==EMEVD==
// @docs    er-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "N:\\GR\\data\\Param\\event\\common_macro.emevd\u0000N:\\GR\\data\\Param\\event\\common.emevd\u0000N:\\GR\\data\\Param\\event\\common_func.emevd\u0000N:\\GR\\data\\Param\\event\\m60.emevd\u0000"
// @linked    [0,84,156,238]
// @version    3.6.3
// ==/EMEVD==

// コンストラクタ -- constructor
$Event(0, Default, function() {
    RegisterBonfire(1043350000, 1043351950, 0, 0, 0, 5);
    RegisterBonfire(1043350001, 1043351951, 0, 0, 0, 5);
    $InitializeEvent(0, 1043352270, 1043355270, 1043352270);
    $InitializeEvent(0, 1043350652, 1520, 710520, 1770, 710770, 69090, 69370);
    $InitializeEvent(0, 1043353750, 1043350700, 1043350703);
    $InitializeEvent(0, 1043353760, 1043350780, 1043350781, 60060, 9522);
    $InitializeEvent(1, 1043353760, 1043350782, 1043350783, 60060, 9522);
    $InitializeEvent(0, 1043353770, 1043350975);
    $InitializeEvent(0, 1043353780, 1043350975);
    $InitializeCommonEvent(0, 90005300, 1043350975, 1043350975, 0, 0, 0); //No respawn
    $InitializeCommonEvent(0, 90005704, 1043350710, 3621, 3620, 1043359251, 3);
    $InitializeCommonEvent(0, 90005703, 1043350710, 3621, 3622, 1043359251, 3621, 3620, 3624, -1);
    $InitializeCommonEvent(0, 90005702, 1043350710, 1043359259, 1043359259, 1043359259);
    $InitializeCommonEvent(0, 9005811, 10000850, 1043350800, 4, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1043350801, 4, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1043350810, 4, 10000851);
    $InitializeCommonEvent(0, 9005811, 10000850, 1043350811, 4, 10000851);
    $InitializeEvent(0, 1043353710, 1043350710);
    $InitializeEvent(0, 1043353711, 1043350710);
});

// プリコンストラクタ -- preconstructor
$Event(50, Default, function() {
    SetCharacterBackreadState(1043350710, true);
    $InitializeEvent(0, 1043352200);
});

// 亜人テリトリー2_王軍死体化 -- Demi-Human Territory 2_Royal Corps Corpse
$Event(1043352200, Restart, function() {
    ForceCharacterTreasure(1043355200);
});

// 王軍VS亜人_交戦イベント -- Royal Army VS Ajin_Battle Event
$Event(1043352270, Restart, function(chrEntityId, areaEntityId) {
    EnableNetworkSync();
    ClearSpEffect(chrEntityId, 4800);
    ClearSpEffect(chrEntityId, 5653);
    SetSpEffect(chrEntityId, 4802);
    EndIf(EventFlag(1043352270));
    SetSpEffect(chrEntityId, 4800);
    SetSpEffect(chrEntityId, 5653);
    WaitFor(
        ((CharacterType(10000, TargetType.BlackPhantom) && CharacterHasSpEffect(10000, 3710))
            || CharacterType(10000, TargetType.Alive)
            || CharacterType(10000, TargetType.GrayPhantom)
            || CharacterType(10000, TargetType.WhitePhantom))
            && (HasDamageType(chrEntityId, 10000, DamageType.Unspecified)
                || HasDamageType(chrEntityId, 35000, DamageType.Unspecified)
                || HasDamageType(35000, chrEntityId, DamageType.Unspecified)
                || EntityInRadiusOfEntity(10000, chrEntityId, 10, 1)
                || EntityInRadiusOfEntity(35000, chrEntityId, 10, 1)
                || InArea(10000, areaEntityId)
                || InArea(35000, areaEntityId)));
    SetNetworkconnectedEventFlagID(1043352270, ON);
    ClearSpEffect(chrEntityId, 4800);
    ClearSpEffect(chrEntityId, 5653);
});

// チュートリアルメッセージ_騎乗 -- Tutorial message_Riding
$Event(1043350652, Restart, function(tutorialParamId, eventFlagId, tutorialParamId2, eventFlagId2, eventFlagId3, eventFlagId4) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    WaitFor(
        PlayerIsInOwnWorld()
            && PlayerHasItem(ItemType.Goods, 130)
            && PlayerInMap(60, 43, 35, 0)
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

// NPC318_混沌の宿主_NPC初期化イベント_初期状態 -- NPC318_Host of Chaos_NPC initialization event_Initial state
$Event(1043353710, Restart, function(chrEntityId) {
    WaitFixedTimeFrames(1);
    DisableNetworkSync();
    if (PlayerIsInOwnWorld()) {
        if (EventFlag(3620)) {
            SetEventFlagID(1043379255, OFF);
        }
    }
L10:
    if (!(EventFlag(3626) && (!EventFlag(1043369200) || EventFlag(1043360800)))) {
        DisableCharacter(chrEntityId);
        SetCharacterBackreadState(chrEntityId, true);
        WaitFor(EventFlag(3626) && (!EventFlag(1043369200) || EventFlag(1043360800)));
        RestartEvent();
    }
L5:
    GotoIf(L1, EventFlag(3620));
    GotoIf(L2, EventFlag(3621));
    GotoIf(L3, EventFlag(3622));
    GotoIf(L4, EventFlag(3623));
L1:
    SetCharacterBackreadState(chrEntityId, false);
    EnableCharacter(chrEntityId);
    SetCharacterTeamType(chrEntityId, TeamType.FriendlyNPC);
    ForceAnimationPlayback(chrEntityId, 90100, false, false, false);
    GotoIf(L20, mainGroupAbuse);
L2:
    SetCharacterBackreadState(chrEntityId, false);
    EnableCharacter(chrEntityId);
    SetCharacterTeamType(chrEntityId, TeamType.HostileNPC);
    Goto(L20);
L3:
    SetCharacterBackreadState(chrEntityId, false);
    EnableCharacter(chrEntityId);
    SetCharacterTeamType(chrEntityId, TeamType.HostileNPC);
    Goto(L20);
L4:
    ForceCharacterTreasure(chrEntityId);
    DisableCharacter(chrEntityId);
    SetCharacterBackreadState(chrEntityId, true);
    Goto(L20);
L20:
    WaitFor(!(EventFlag(3626) && (!EventFlag(1043369200) || EventFlag(1043360800))));
    RestartEvent();
});

// NPC318_混沌の宿主_死亡確認_初期状態 -- NPC318_Host of Chaos_Death confirmation_Initial state
$Event(1043353711, Restart, function(chrEntityId) {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(EventFlag(1044389209));
    EndIf(EventFlag(1035469209));
    EndIf(EventFlag(1039529209));
    if (!EventFlag(1043359259)) {
        WaitFor(EventFlag(1043359259));
        BatchSetNetworkconnectedEventFlags(3620, 3624, OFF);
        SetNetworkconnectedEventFlagID(3623, ON);
        SaveRequest();
        EndEvent();
    }
L1:
    WaitFixedTimeFrames(1);
    EndIf(EventFlag(3626));
    ForceCharacterTreasure(chrEntityId);
    DisableCharacter(chrEntityId);
    SetCharacterBackreadState(chrEntityId, true);
    EndEvent();
});

// 傭兵剣士_非表示イベント -- Mercenary swordsman_hidden event
$Event(1043353750, Restart, function(chrEntityId, chrEntityId2) {
    WaitFixedTimeFrames(1);
    SetCharacterBackreadState(chrEntityId, true);
    DisableCharacter(chrEntityId);
    SetCharacterBackreadState(chrEntityId2, true);
    DisableCharacter(chrEntityId2);
    DisableCharacter(1043350701);
    DisableCharacter(1043350702);
    SetCharacterBackreadState(1043350701, true);
    SetCharacterBackreadState(1043350702, true);
    DisableCharacterAI(1043350701);
    DisableCharacterAI(1043350702);
});

// Blackknife Lightning Boss Wall Enter
$Event(1043353760, Default, function(entityId, entityId2, animationId, actionButtonParameterId){
    EndIf(!PlayerIsInOwnWorld() || EventFlagState(ON, TargetEventFlagType.EventFlag, 1043350975));
    online = HasMultiplayerState(MultiplayerState.Multiplayer)
        || HasMultiplayerState(MultiplayerState.MultiplayerPending);
    onlineAct &= !online;
    onlineAct &= PlayerIsInOwnWorld() && ActionButtonInArea(actionButtonParameterId, entityId);
    WaitFor(onlineAct);
L1:
    SetCharacterAIState(1043350975, Enabled);
    RotateCharacter(10000, entityId2, -1, true);
    ForceAnimationPlayback(10000, animationId, false, false, false);
    WaitFixedTimeSeconds(2);
    DisplayBossHealthBar(Enabled, 1043350975, 0, 902101000);
});

// Blackknife Dead
$Event(1043353770, Default, function(chrEntityId){
    SetCharacterAIState(1043350975, Disabled)
    WaitForEventFlag(OFF, TargetEventFlagType.EventFlag, chrEntityId);
    WaitFor(CharacterDeadAlive(chrEntityId, DeathState.Alive));
    WaitFor(CharacterRatioDead(chrEntityId));
    SetEventFlag(TargetEventFlagType.EventFlag, chrEntityId, ON);
    HandleBossDefeatAndDisplayBanner(chrEntityId, TextBannerType.GreatEnemyFelled);
    AwardItemsIncludingClients(2100000000);
});

// Boss Walls Down
$Event(1043353780, Restart, function(chrEntityId){
    WaitFixedTimeFrames(5);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, chrEntityId);
    DisableAsset(1043350780);
    DeleteAssetfollowingSFX(1043350780, true);
    DisableAsset(1043350782);
    DeleteAssetfollowingSFX(1043350782, true);
    DisableAsset(1043350800);
    DeleteAssetfollowingSFX(1043350800, true);
    DisableAsset(1043350801);
    DeleteAssetfollowingSFX(1043350801, true);
    DisableAsset(1043350810);
    DeleteAssetfollowingSFX(1043350810, true);
    DisableAsset(1043350811);
    DeleteAssetfollowingSFX(1043350811, true);
    ForceAnimationPlayback(10000, 913000, false, false, false);
});
