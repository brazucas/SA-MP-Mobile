.class Lcom/wardrumstudios/utils/WarGameService$4;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->SaveSnapshot(Ljava/lang/String;Ljava/lang/String;[BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;

.field final synthetic val$data:[B

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$playedMS:J


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 1

    .prologue
    .line 599
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$description:Ljava/lang/String;

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$data:[B

    iput-wide p5, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$playedMS:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 601
    :goto_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$description:Ljava/lang/String;

    const-string v1, "InUse save"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 604
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveSnapshot waiting for screenshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    goto :goto_0

    .line 609
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "SaveSnapshot trying to save"

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarGameService;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v9

    new-instance v0, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$description:Ljava/lang/String;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$data:[B

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B

    iget-wide v6, p0, Lcom/wardrumstudios/utils/WarGameService$4;->val$playedMS:J

    invoke-direct/range {v0 .. v7}, Lcom/wardrumstudios/utils/WarGameService$OpenSnapshotResultHandler;-><init>(Lcom/wardrumstudios/utils/WarGameService;Ljava/lang/String;Ljava/lang/String;[B[BJ)V

    invoke-interface {v9, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 611
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarGameService;->savedScreenshot:[B
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :goto_1
    return-void

    .line 612
    :catch_1
    move-exception v8

    .line 613
    .local v8, "isex":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGameService$4;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v1, "Snapshot IllegalStateException"

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    goto :goto_1
.end method
