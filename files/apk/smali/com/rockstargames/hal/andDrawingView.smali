.class public Lcom/rockstargames/hal/andDrawingView;
.super Lcom/rockstargames/hal/andView;
.source "andDrawingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;,
        Lcom/rockstargames/hal/andDrawingView$Shape;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field public shapes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/andDrawingView$Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;-><init>(Lcom/rockstargames/hal/andDrawingView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andDrawingView;->setView(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    .line 23
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andDrawingView;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 33
    new-instance v0, Lcom/rockstargames/hal/andDrawingView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDrawingView;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public addPoint(IFF)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 219
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {v0, p2, p3}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPoint(FF)V

    .line 220
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    .line 221
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andDrawingView$Shape;->clear()V

    .line 232
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    .line 233
    return-void
.end method

.method public createShape(Z)I
    .locals 2
    .param p1, "filled"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    new-instance v1, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-direct {v1, p1}, Lcom/rockstargames/hal/andDrawingView$Shape;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    sget v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    .line 28
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 29
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;->invalidate()V

    .line 39
    return-void
.end method

.method public removePoint(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "pointIndex"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {v0, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->removePoint(I)V

    .line 226
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    .line 227
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    .line 44
    iget v2, p0, Lcom/rockstargames/hal/andDrawingView;->width:F

    .line 45
    .local v2, "oldWidth":F
    iget v1, p0, Lcom/rockstargames/hal/andDrawingView;->height:F

    .line 47
    .local v1, "oldHeight":F
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 49
    iget v8, p0, Lcom/rockstargames/hal/andDrawingView;->width:F

    div-float v6, v8, v2

    .line 50
    .local v6, "scaleWidth":F
    iget v8, p0, Lcom/rockstargames/hal/andDrawingView;->height:F

    div-float v5, v8, v1

    .line 51
    .local v5, "scaleHeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 53
    iget-object v8, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rockstargames/hal/andDrawingView$Shape;

    .line 54
    .local v4, "s":Lcom/rockstargames/hal/andDrawingView$Shape;
    iget-boolean v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-nez v8, :cond_2

    .line 56
    iget-object v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [F

    .line 57
    .local v7, "temp":[F
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    iget-object v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 59
    mul-int/lit8 v9, v3, 0x2

    iget-object v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v6

    aput v8, v7, v9

    .line 60
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v9, v8, 0x1

    iget-object v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v5

    aput v8, v7, v9

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63
    :cond_0
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    .line 64
    iget-object v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 65
    const/4 v3, 0x0

    :goto_2
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_1

    .line 66
    aget v8, v7, v3

    add-int/lit8 v9, v3, 0x1

    aget v9, v7, v9

    invoke-static {v4, v8, v9}, Lcom/rockstargames/hal/andDrawingView$Shape;->access$000(Lcom/rockstargames/hal/andDrawingView$Shape;FF)V

    .line 65
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 68
    :cond_1
    iget-boolean v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 69
    iget-object v8, v4, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 51
    .end local v3    # "p":I
    .end local v7    # "temp":[F
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "s":Lcom/rockstargames/hal/andDrawingView$Shape;
    :cond_3
    return-void
.end method

.method public setFillColour(IIIII)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    iget-object v0, v0, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    .line 203
    return-void
.end method

.method public setPoints(I[F)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "points"    # [F

    .prologue
    .line 237
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {v0, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->setPoints([F)V

    .line 238
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    .line 239
    return-void
.end method

.method public setStrokeColour(IIIII)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    iget-object v0, v0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    .line 209
    return-void
.end method

.method public setStrokeThickness(IF)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "thickness"    # F

    .prologue
    .line 213
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$Shape;

    iget-object v0, v0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    .line 215
    return-void
.end method
