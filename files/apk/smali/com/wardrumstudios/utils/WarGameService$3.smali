.class Lcom/wardrumstudios/utils/WarGameService$3;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->LoadSnapshotCount()V
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
        "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$3;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 465
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$3;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;)V
    .locals 3
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;

    .prologue
    .line 468
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 480
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$3;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load snapshots, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$3;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;->getSnapshots()Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->notifySnapshotCountLoaded(I)V

    .line 471
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;->getSnapshots()Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
