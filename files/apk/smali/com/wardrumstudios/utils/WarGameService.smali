.class public Lcom/wardrumstudios/utils/WarGameService;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;
.implements Lcom/google/android/gms/common/api/ResultCallback;
.implements Lcom/wardrumstudios/utils/WarActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
        ">;",
        "Lcom/wardrumstudios/utils/WarActivityLifecycleListener;"
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0xf

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_DRIVE:I = 0x8

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field public static final RC_SHOWSNAPSHOTLIST:I = 0x2081

.field private static final TAG:Ljava/lang/String; = "WarGameService"


# instance fields
.field private TestSnapshot:Z

.field private isPaused:Z

.field private mActivity:Lcom/wardrumstudios/utils/WarBase;

.field protected mDebugLog:Z

.field protected mDebugTag:Ljava/lang/String;

.field protected mHelper:Lcom/google/example/games/basegameutils/GameHelper;

.field protected mRequestedClients:I

.field private savedData:[B

.field private savedDescription:Ljava/lang/String;

.field private savedName:Ljava/lang/String;

.field savedScreenshot:[B


# direct methods
.method protected constructor <init>(Lcom/wardrumstudios/utils/WarBase;)V
    .locals 2
    .param p1, "activity"    # Lcom/wardrumstudios/utils/WarBase;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->TestSnapshot:Z

    .line 60
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 79
    iput v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    .line 85
    const-string v0, "WarGameService"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    .line 92
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    .line 93
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v0, p0}, Lcom/wardrumstudios/utils/WarBase;->AddLifecycleListener(Lcom/wardrumstudios/utils/WarActivityLifecycleListener;)V

    .line 96
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->setRequestedClients(I)V

    .line 97
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 98
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->onStart()V

    .line 104
    return-void
.end method


# virtual methods
.method public DeleteAllSnapshots()V
    .locals 1

    .prologue
    .line 673
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public DeleteSnapshot(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 622
    const-string v1, "Deleting snapshot..."

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 624
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->TestSnapshot:Z

    if-eqz v1, :cond_0

    .line 669
    :goto_0
    return-void

    .line 628
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$5;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarGameService$5;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "isex":Ljava/lang/IllegalStateException;
    const-string v1, "Snapshot "

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetConnectionStatus()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public IncrementAchievement(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    const-string v0, "Trying to unlock an achievement but we\'re not signed in."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public LoadFromCloud()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/appstate/AppStateManager;->load(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    const-string v0, "The GamesClient is not connected so data cannot be saved to the cloud."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public LoadSnapshotCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->TestSnapshot:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotCountLoaded(I)V

    .line 484
    :goto_0
    return-void

    .line 465
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$3;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarGameService$3;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method

.method public RefreshData(Z)V
    .locals 0
    .param p1, "forceReload"    # Z

    .prologue
    .line 339
    return-void
.end method

.method public ResolveState(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "resolvedVersion"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/appstate/AppStateManager;->resolve(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 429
    return-void
.end method

.method public SaveScreenshot([B)V
    .locals 0
    .param p1, "screenshot"    # [B

    .prologue
    .line 553
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    .line 554
    return-void
.end method

.method public SaveSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "playedMS"    # J

    .prologue
    .line 557
    const-string v3, "Saving snapshot..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    if-eqz v3, :cond_2

    .line 560
    :try_start_0
    sget-object v3, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 561
    .local v15, "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save snapshot, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 619
    .end local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :cond_0
    :goto_0
    return-void

    .line 563
    .restart local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_0
    const-string v3, "OpenSnapshotResult"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 564
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->writeBytes([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    new-instance v14, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v14}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    .line 566
    .local v14, "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 567
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_1

    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    .line 568
    :cond_1
    invoke-virtual {v14}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v13

    .line 569
    .local v13, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    sget-object v3, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v5

    invoke-interface {v3, v4, v5, v13}, Lcom/google/android/gms/games/snapshot/Snapshots;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v13    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .end local v14    # "metadataBuilder":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .end local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :catch_0
    move-exception v11

    .line 596
    .local v11, "isex":Ljava/lang/IllegalStateException;
    const-string v3, "Snapshot IllegalStateException"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    .end local v11    # "isex":Ljava/lang/IllegalStateException;
    .restart local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :sswitch_1
    :try_start_1
    const-string v3, "Conflict while saving, resolving..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 575
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v12

    .line 576
    .local v12, "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    .line 578
    .local v2, "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    sget-object v3, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v15}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/google/android/gms/games/snapshot/Snapshots;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 579
    .local v10, "conflictResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v10}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 599
    .end local v2    # "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    .end local v10    # "conflictResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    .end local v12    # "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    .end local v15    # "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    :cond_2
    new-instance v16, Ljava/lang/Thread;

    new-instance v3, Lcom/wardrumstudios/utils/WarGameService$4;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/wardrumstudios/utils/WarGameService$4;-><init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;Ljava/lang/String;[BJ)V

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 561
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public SaveToCloud([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 409
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/appstate/AppStateManager;->updateImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    const-string v0, "The GamesClient is not connected so data cannot be saved to the cloud."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowAchievementList()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v0, "The GamesClient is not connected so the achievement list cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowLeaderboard(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    const-string v0, "The GamesClient is not connected so the requested leaderboard cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowLeaderboards()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v0, "The GamesClient is not connected so the leaderboards cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSignInUI()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    .line 318
    :cond_0
    return-void
.end method

.method public ShowSnapshotList()V
    .locals 7

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->TestSnapshot:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->savedData:[B

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const-string v2, "Saved Snapshots"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x2710

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/Snapshots;->getSelectSnapshotIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2081

    invoke-virtual {v6, v0, v1}, Lcom/wardrumstudios/utils/WarBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public SignOut()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->signOut()V

    .line 326
    return-void
.end method

.method public SubmitScore(Ljava/lang/String;J)V
    .locals 2
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    .line 398
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v0, "The GamesClient is not connected so the new score cannot be submitted to the leaderboards cannot be shown."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking Achievement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Done Unlocking Achievement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v0, "Trying to unlock an achievement while the achievements are not available."

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WarGameService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    .line 287
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugTag:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget v2, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    invoke-direct {v0, v1, v2}, Lcom/google/example/games/basegameutils/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 109
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public native notifyAchievementsLoaded([Ljava/lang/String;[Z[I[I)V
.end method

.method public native notifySignInChange(Z)V
.end method

.method public native notifySignInFailed()V
.end method

.method public native notifySnapshotCountLoaded(I)V
.end method

.method public native notifySnapshotLoading()V
.end method

.method public native notifySnapshotSelected([B)V
.end method

.method public native notifyStateConflict(ILjava/lang/String;[B[B)V
.end method

.method public native notifyStateLoaded(II[B)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    const/16 v1, 0x2081

    if-ne p1, v1, :cond_0

    .line 130
    packed-switch p2, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotLoading()V

    .line 133
    const-string v1, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 134
    .local v0, "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    sget-object v1, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/wardrumstudios/utils/WarGameService$1;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarGameService$1;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 190
    .end local v0    # "metadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/example/games/basegameutils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLeaderboardMetadataLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "buffer"    # Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    .prologue
    .line 283
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause OpenSnapshotResult mActivity.paused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarBase;->paused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onPause()V

    .line 212
    return-void
.end method

.method public onResult(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    .prologue
    .line 433
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;

    move-result-object v0

    .line 434
    .local v0, "conflictResult":Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;

    move-result-object v1

    .line 435
    .local v1, "loadedResult":Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
    if-eqz v1, :cond_3

    .line 436
    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStateKey()I

    move-result v3

    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getLocalData()[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->notifyStateLoaded(II[B)V

    .line 445
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->release()V

    .line 446
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->release()V

    .line 447
    :cond_2
    return-void

    .line 439
    :cond_3
    if-eqz v0, :cond_0

    .line 440
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getStateKey()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getResolvedVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getLocalData()[B

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getServerData()[B

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/wardrumstudios/utils/WarGameService;->notifyStateConflict(ILjava/lang/String;[B[B)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 46
    check-cast p1, Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService;->onResult(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarGameService;->isPaused:Z

    .line 221
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->notifySignInFailed()V

    .line 280
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 3

    .prologue
    .line 227
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarGameService$2;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarGameService$2;-><init>(Lcom/wardrumstudios/utils/WarGameService;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifySignInChange(Z)V

    .line 275
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService;->mActivity:Lcom/wardrumstudios/utils/WarBase;

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 206
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onStop()V

    .line 217
    return-void
.end method

.method protected setRequestedClients(I)V
    .locals 0
    .param p1, "requestedClients"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/wardrumstudios/utils/WarGameService;->mRequestedClients:I

    .line 125
    return-void
.end method
