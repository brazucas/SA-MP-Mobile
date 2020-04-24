.class Lcom/wardrumstudios/utils/WarMedia$21;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->DrawMovieText()V
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
    .line 2495
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 2497
    const/4 v11, 0x1

    .line 2498
    .local v11, "clearText":Z
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarMedia;->access$2300(Lcom/wardrumstudios/utils/WarMedia;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2499
    :cond_0
    const/4 v11, 0x0

    .line 2500
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextDisplayNow:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarMedia;->access$2400(Lcom/wardrumstudios/utils/WarMedia;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2506
    .local v1, "drawText":Ljava/lang/String;
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    .line 2507
    .local v10, "canvas":Landroid/graphics/Canvas;
    if-eqz v10, :cond_1

    .line 2508
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v3, Lcom/wardrumstudios/utils/WarMedia;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarMedia;->access$2500(Lcom/wardrumstudios/utils/WarMedia;)I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2509
    .local v0, "layoutText":Landroid/text/StaticLayout;
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, v3, Lcom/wardrumstudios/utils/WarMedia;->sTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarMedia;->access$2600(Lcom/wardrumstudios/utils/WarMedia;)I

    move-result v3

    add-int/lit8 v5, v3, -0x64

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2511
    .local v2, "sLayoutText":Landroid/text/StaticLayout;
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2512
    const/high16 v3, 0x42500000    # 52.0f

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v4}, Lcom/wardrumstudios/utils/WarMedia;->access$2700(Lcom/wardrumstudios/utils/WarMedia;)I

    move-result v4

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    int-to-float v4, v4

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2513
    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2514
    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2515
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2516
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v10}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2520
    .end local v0    # "layoutText":Landroid/text/StaticLayout;
    .end local v1    # "drawText":Ljava/lang/String;
    .end local v2    # "sLayoutText":Landroid/text/StaticLayout;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    if-eqz v11, :cond_3

    .line 2521
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    .line 2522
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    if-eqz v10, :cond_2

    .line 2524
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2525
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v10}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2527
    :cond_2
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$21;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2529
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    return-void

    .line 2504
    :cond_4
    const-string v3, ""

    goto/16 :goto_0
.end method
