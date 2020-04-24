.class Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;
.super Ljava/lang/Object;
.source "andThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedNativeRunnable"
.end annotation


# instance fields
.field private delay:I

.field private runnableId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "millisDelay"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->runnableId:I

    .line 20
    iput p2, p0, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->delay:I

    .line 21
    return-void
.end method


# virtual methods
.method public post()Z
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 33
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 35
    iget v1, p0, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->delay:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    const/4 v1, 0x1

    .line 40
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->runnableId:I

    invoke-static {v0}, Lcom/rockstargames/hal/andThread;->access$000(I)V

    .line 27
    return-void
.end method
