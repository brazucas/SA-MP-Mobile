.class Lcom/wardrumstudios/utils/WarMedia$16$1;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$16;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$16;)V
    .locals 0

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

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
    .line 1638
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movieView surfaceChanged width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput p3, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    .line 1640
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput p4, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    .line 1641
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x1

    .line 1628
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-boolean v2, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    .line 1629
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewCreated:Z

    if-nez v0, :cond_0

    .line 1630
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "movieViewCreated surfaceCreated firsttime"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-boolean v2, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewCreated:Z

    .line 1635
    :goto_0
    return-void

    .line 1633
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "movieViewCreated surfaceCreated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 1644
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "movieViewCreated surfaceDestroyed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-boolean v2, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    .line 1647
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0, v2}, Lcom/wardrumstudios/utils/WarMedia;->access$1402(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 1648
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-string v1, ""

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    .line 1649
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->access$1502(Lcom/wardrumstudios/utils/WarMedia;Ljava/lang/String;)Ljava/lang/String;

    .line 1650
    return-void
.end method
