.class Lcom/nvidia/devtech/NvEventQueueActivity$3;
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
    .line 882
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 904
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput p3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewWidth:I

    .line 905
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput p4, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewHeight:I

    .line 906
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 886
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewIsActive:Z

    .line 887
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewCreated:Z

    if-nez v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewCreated:Z

    .line 899
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->InVideview:Z

    .line 900
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-boolean v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewIsActive:Z

    .line 912
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieIsStopping:Z

    .line 913
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity$3;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->InVideview:Z

    .line 914
    return-void
.end method
