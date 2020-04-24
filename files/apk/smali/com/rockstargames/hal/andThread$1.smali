.class final Lcom/rockstargames/hal/andThread$1;
.super Ljava/lang/Object;
.source "andThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andThread;->runOnBackgroundThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:I

.field final synthetic val$runnableId:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/rockstargames/hal/andThread$1;->val$delay:I

    iput p2, p0, Lcom/rockstargames/hal/andThread$1;->val$runnableId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    iget v1, p0, Lcom/rockstargames/hal/andThread$1;->val$delay:I

    if-lez v1, :cond_0

    .line 100
    :try_start_0
    iget v1, p0, Lcom/rockstargames/hal/andThread$1;->val$delay:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    iget v1, p0, Lcom/rockstargames/hal/andThread$1;->val$runnableId:I

    invoke-static {v1}, Lcom/rockstargames/hal/andThread;->access$000(I)V

    .line 109
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "HAL"

    const-string v2, "Interrupted sleep:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
