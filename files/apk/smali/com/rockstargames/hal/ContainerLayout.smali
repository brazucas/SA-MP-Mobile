.class public Lcom/rockstargames/hal/ContainerLayout;
.super Landroid/widget/AbsoluteLayout;
.source "ContainerLayout.java"


# instance fields
.field protected boundsRect:Landroid/graphics/RectF;

.field canInvalidate:Z

.field clippingChildren:Z

.field protected matrix:Landroid/graphics/Matrix;

.field protected matrixValues:[F

.field protected offsetMatrix:Landroid/graphics/Matrix;

.field protected offsetMatrixValues:[F

.field protected transformOffset:Landroid/graphics/PointF;

.field protected transformedRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    .line 26
    iput-boolean v1, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    .line 186
    iput-boolean v1, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 49
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    :cond_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ContainerLayout"

    const-string v2, "Error attempting to dispatch draw:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 208
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    .line 210
    iget-boolean v0, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->invalidate()V

    .line 214
    :cond_2
    return-void
.end method

.method public setBounds(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 62
    add-int v2, p1, p3

    int-to-float v1, v2

    .local v1, "r":F
    add-int v2, p2, p4

    int-to-float v0, v2

    .line 64
    .local v0, "b":F
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, p2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    int-to-float v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 71
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 72
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 73
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 75
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->updateLayoutParams()V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setClipChildren(Z)V

    .line 191
    iput-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    .line 192
    return-void
.end method

.method public setTransform(FFFFFF)V
    .locals 4
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "tx"    # F
    .param p6, "ty"    # F

    .prologue
    const/16 v1, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    .line 83
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    .line 86
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    iput p5, v0, Landroid/graphics/PointF;->x:F

    .line 90
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    iput p6, v0, Landroid/graphics/PointF;->y:F

    .line 92
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    aput p1, v0, v3

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x2

    aput p5, v0, v1

    .line 93
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x4

    aput p4, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 94
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 97
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->updateLayoutParams()V

    .line 99
    iget-boolean v0, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->invalidate()V

    .line 102
    iput-boolean v3, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    .line 104
    :cond_1
    return-void
.end method

.method protected updateLayoutParams()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 109
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-nez v6, :cond_1

    .line 110
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 152
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_2

    .line 154
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 155
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :cond_0
    :goto_1
    return-void

    .line 114
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    const/16 v8, 0x9

    invoke-static {v6, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v7, v6, v11

    iget-object v8, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    aput v7, v6, v11

    .line 118
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v7, v6, v12

    iget-object v8, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    aput v7, v6, v12

    .line 120
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 123
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 127
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v7, v6, v11

    iget-object v8, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    aput v7, v6, v11

    .line 128
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v7, v6, v12

    iget-object v8, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    aput v7, v6, v12

    .line 130
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setValues([F)V

    goto/16 :goto_0

    .line 159
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    instance-of v6, v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v6, :cond_4

    move-object v0, v2

    .line 161
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 163
    .local v0, "alp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v3, v6

    .line 164
    .local v3, "w":I
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v1, v6

    .line 165
    .local v1, "h":I
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v4, v6

    .line 166
    .local v4, "x":I
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v5, v6

    .line 168
    .local v5, "y":I
    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v6, v3, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-ne v6, v1, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v6, v4, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-eq v6, v5, :cond_0

    .line 170
    :cond_3
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v6, v2

    .line 172
    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput v4, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    move-object v6, v2

    .line 173
    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v7, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 174
    invoke-virtual {p0, v2}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 179
    .end local v0    # "alp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v1    # "h":I
    .end local v3    # "w":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_4
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iget-object v6, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    invoke-virtual {p0, v2}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method
