.class Lcom/wardrumstudios/utils/WarGameService$1;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 134
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$1;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .prologue
    .line 137
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 179
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    .line 180
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open snapshot, status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 139
    :sswitch_0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/Snapshot;->readFully()[B

    move-result-object v1

    .line 140
    .local v1, "data":[B
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v3, v1}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    goto :goto_0

    .line 144
    .end local v1    # "data":[B
    :sswitch_1
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v4, "Conflict while opening the selected snapshot, resolving..."

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 145
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    .line 146
    .local v2, "latest":Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    .line 148
    .local v0, "conflict":Lcom/google/android/gms/games/snapshot/Snapshot;
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conflict = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "latest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conflictId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 151
    sget-object v3, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v4}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lcom/google/android/gms/games/snapshot/Snapshots;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    new-instance v4, Lcom/wardrumstudios/utils/WarGameService$1$1;

    invoke-direct {v4, p0}, Lcom/wardrumstudios/utils/WarGameService$1$1;-><init>(Lcom/wardrumstudios/utils/WarGameService$1;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto/16 :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method
