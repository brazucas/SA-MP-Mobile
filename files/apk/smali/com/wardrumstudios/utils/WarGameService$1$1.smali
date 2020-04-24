.class Lcom/wardrumstudios/utils/WarGameService$1$1;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService$1;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
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
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarGameService$1;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService$1;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$1$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 154
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$1$1;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .prologue
    .line 156
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 163
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$1;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    .line 164
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$1;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save snapshot, status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/Snapshot;->readFully()[B

    move-result-object v0

    .line 159
    .local v0, "data":[B
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$1$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$1;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$1;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1, v0}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotSelected([B)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
