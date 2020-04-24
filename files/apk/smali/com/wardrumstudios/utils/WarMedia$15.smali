.class Lcom/wardrumstudios/utils/WarMedia$15;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->CreatTextSurface(Landroid/view/SurfaceView;)Landroid/view/SurfaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$15;->this$0:Lcom/wardrumstudios/utils/WarMedia;

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
    .line 1528
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movieTextSurface surfaceChanged width "

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

    .line 1531
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x1

    .line 1514
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$15;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v1, v3}, Lcom/wardrumstudios/utils/WarMedia;->access$1102(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 1515
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$15;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 1516
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1517
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$15;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1519
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$15;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarMedia;->movieViewCreated:Z

    if-nez v1, :cond_0

    .line 1520
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "movieTextSurface surfaceCreated firsttime"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1521
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$15;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v1, v3}, Lcom/wardrumstudios/utils/WarMedia;->access$1202(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 1525
    :goto_0
    return-void

    .line 1523
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "movieTextSurface surfaceCreated"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1534
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "movieTextSurface surfaceDestroyed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$15;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->access$1302(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 1537
    return-void
.end method
