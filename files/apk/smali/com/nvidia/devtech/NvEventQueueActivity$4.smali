.class Lcom/nvidia/devtech/NvEventQueueActivity$4;
.super Ljava/lang/Object;
.source "NvEventQueueActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;->systemInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/devtech/NvEventQueueActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 941
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "surfaceChanged called - movieTextView"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x1

    .line 929
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "surface2222222Created called - subView"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v1, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 931
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 932
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v1, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 933
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v1, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewCreated:Z

    if-nez v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v3, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewCreated:Z

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v3, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewIsActive:Z

    .line 938
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 945
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "surfaceDestroyed called - movieTextView"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewFirstDestroy:Z

    .line 947
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$4;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewIsActive:Z

    .line 948
    return-void
.end method
