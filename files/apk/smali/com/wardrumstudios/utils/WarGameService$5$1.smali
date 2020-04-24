.class Lcom/wardrumstudios/utils/WarGameService$5$1;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService$5;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;)V
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
        "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarGameService$5;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService$5;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 636
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$5$1;->onResult(Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;

    .prologue
    .line 639
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    .line 640
    .local v0, "status":I
    if-nez v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v2, "Successfully deleted snapshot."

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$5$1;->this$1:Lcom/wardrumstudios/utils/WarGameService$5;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarGameService$5;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error deleting snapshot! status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
