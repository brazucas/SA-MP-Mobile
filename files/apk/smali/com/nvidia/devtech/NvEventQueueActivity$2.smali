.class Lcom/nvidia/devtech/NvEventQueueActivity$2;
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
    .line 787
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 845
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput p3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    .line 847
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput p4, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    .line 848
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget v1, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->setGameWindowSize(II)V

    .line 849
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->hideSystemUI()V

    .line 850
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x1

    .line 792
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_4

    move v0, v1

    .line 793
    .local v0, "firstRun":Z
    :goto_0
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-object p1, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 796
    if-eqz v0, :cond_5

    .line 802
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-static {v2, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->access$002(Lcom/nvidia/devtech/NvEventQueueActivity;Z)Z

    .line 803
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v1, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    invoke-virtual {v1, v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->init(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget v3, v3, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/nvidia/devtech/NvEventQueueActivity;->setGameWindowSize(II)V

    .line 830
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v1, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v1, v1, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 831
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    invoke-virtual {v1, v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->init(Z)Z

    .line 832
    :cond_2
    if-eqz v0, :cond_3

    .line 833
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v1, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->GamepadReportSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 834
    :cond_3
    return-void

    .line 792
    .end local v0    # "firstRun":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 799
    .restart local v0    # "firstRun":Z
    :cond_5
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v2, v2, Lcom/nvidia/devtech/NvEventQueueActivity;->ResumeEventDone:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->resumeEvent()V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->pauseEvent()V

    .line 863
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-virtual {v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->destroyEGLSurface()V

    .line 864
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$2;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    .line 865
    return-void
.end method
