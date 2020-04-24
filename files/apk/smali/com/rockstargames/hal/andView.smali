.class public Lcom/rockstargames/hal/andView;
.super Ljava/lang/Object;
.source "andView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andView$andViewImpl;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field private alpha:F

.field protected antiFlicker:Z

.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/andView;",
            ">;"
        }
    .end annotation
.end field

.field protected container:Lcom/rockstargames/hal/ContainerLayout;

.field public debugString:Ljava/lang/String;

.field protected handle:I

.field protected height:F

.field protected originX:F

.field protected originY:F

.field protected paddingB:F

.field protected paddingR:F

.field public parent:Lcom/rockstargames/hal/andView;

.field protected positionOverridden:Z

.field protected userInteractionEnabled:Z

.field protected view:Landroid/view/View;

.field protected width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/rockstargames/hal/andView;->positionOverridden:Z

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    .line 423
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockstargames/hal/andView;->alpha:F

    .line 459
    iput-boolean v1, p0, Lcom/rockstargames/hal/andView;->antiFlicker:Z

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    .line 35
    iput p1, p0, Lcom/rockstargames/hal/andView;->handle:I

    .line 37
    sget v0, Lcom/rockstargames/hal/andView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andView;->staticCount:I

    .line 38
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andView;
    .locals 7
    .param p0, "handle"    # I

    .prologue
    const/high16 v3, 0x43480000    # 200.0f

    const/4 v1, 0x0

    .line 48
    new-instance v0, Lcom/rockstargames/hal/andView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 49
    .local v0, "a":Lcom/rockstargames/hal/andView;
    new-instance v2, Lcom/rockstargames/hal/andView$andViewImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/rockstargames/hal/andView$andViewImpl;-><init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/rockstargames/hal/andView;->setView(Landroid/view/View;)V

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public addSubview(Lcom/rockstargames/hal/andView;)V
    .locals 4
    .param p1, "v"    # Lcom/rockstargames/hal/andView;

    .prologue
    .line 262
    :try_start_0
    instance-of v1, p1, Lcom/rockstargames/hal/andLabel;

    if-eqz v1, :cond_0

    .line 271
    :cond_0
    iput-object p0, p1, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    .line 272
    iget-object v1, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 273
    iget-object v1, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "andView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception adding view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clipChildren(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 107
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    sget v0, Lcom/rockstargames/hal/andView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andView;->staticCount:I

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/rockstargames/hal/andView;->alpha:F

    return v0
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method public getDebugId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    .line 420
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rockstargames/hal/andView;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/rockstargames/hal/andView;->handle:I

    return v0
.end method

.method public getHidden()Z
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInnerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getOuterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    return-object v0
.end method

.method public invalidateHierarchy()V
    .locals 3

    .prologue
    .line 408
    iget-object v2, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    .line 412
    .local v0, "c":Lcom/rockstargames/hal/andView;
    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->invalidateHierarchy()V

    goto :goto_0

    .line 413
    .end local v0    # "c":Lcom/rockstargames/hal/andView;
    :cond_1
    return-void
.end method

.method native onAttachedToWindow(I)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 98
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/andView;->onTouchEvent(IIIFF)V

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method

.method native onTouchEvent(IIIFF)V
.end method

.method public printHierarchy(I)V
    .locals 7
    .param p1, "indent"    # I

    .prologue
    .line 388
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 390
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 391
    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getDebugId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/rockstargames/hal/andView;->originX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/rockstargames/hal/andView;->originY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/rockstargames/hal/andView;->width:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/rockstargames/hal/andView;->height:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 398
    .local v1, "cont":Landroid/view/View;
    const-string v5, " / ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 400
    const-string v5, "andView"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v5, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    .line 403
    .local v0, "c":Lcom/rockstargames/hal/andView;
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v5}, Lcom/rockstargames/hal/andView;->printHierarchy(I)V

    goto :goto_1

    .line 404
    .end local v0    # "c":Lcom/rockstargames/hal/andView;
    :cond_1
    return-void
.end method

.method protected recalcLayout()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 155
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getScale()F

    move-result v6

    .line 156
    .local v6, "scale":F
    iget v11, p0, Lcom/rockstargames/hal/andView;->originX:F

    mul-float/2addr v11, v6

    float-to-int v9, v11

    .local v9, "x":I
    iget v11, p0, Lcom/rockstargames/hal/andView;->originY:F

    mul-float/2addr v11, v6

    float-to-int v10, v11

    .line 157
    .local v10, "y":I
    iget v11, p0, Lcom/rockstargames/hal/andView;->width:F

    mul-float/2addr v11, v6

    float-to-int v8, v11

    .local v8, "w":I
    iget v11, p0, Lcom/rockstargames/hal/andView;->height:F

    mul-float/2addr v11, v6

    float-to-int v2, v11

    .line 164
    .local v2, "h":I
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v5

    .line 165
    .local v5, "outerView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 167
    .local v7, "vglp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    .line 168
    .local v4, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    instance-of v11, v5, Lcom/rockstargames/hal/ContainerLayout;

    if-eqz v11, :cond_1

    move-object v11, v5

    .line 169
    check-cast v11, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v11, v9, v10, v8, v2}, Lcom/rockstargames/hal/ContainerLayout;->setBounds(IIII)V

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getInnerView()Landroid/view/View;

    move-result-object v3

    .line 197
    .local v3, "innerView":Landroid/view/View;
    if-ne v3, v5, :cond_3

    .line 233
    .end local v3    # "innerView":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 174
    :cond_1
    :try_start_0
    move-object v0, v7

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_2
    if-nez v4, :cond_2

    .line 182
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v4, v8, v2, v9, v10}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 191
    .restart local v4    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 178
    .local v1, "ex":Ljava/lang/Exception;
    const-string v11, "andView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LayoutParams failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 185
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    iput v9, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 186
    iput v10, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 187
    iput v8, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 188
    iput v2, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_3

    .line 200
    .restart local v3    # "innerView":Landroid/view/View;
    :cond_3
    instance-of v11, v3, Lcom/rockstargames/hal/ContainerLayout;

    if-eqz v11, :cond_4

    .line 201
    check-cast v3, Lcom/rockstargames/hal/ContainerLayout;

    .end local v3    # "innerView":Landroid/view/View;
    invoke-virtual {v3, v14, v14, v8, v2}, Lcom/rockstargames/hal/ContainerLayout;->setBounds(IIII)V

    goto :goto_1

    .line 205
    .restart local v3    # "innerView":Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    .line 206
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 210
    if-eqz v7, :cond_5

    .line 211
    :try_start_1
    move-object v0, v7

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_5
    :goto_4
    if-nez v4, :cond_7

    .line 222
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v4, v8, v2, v14, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 231
    .restart local v4    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 213
    :catch_1
    move-exception v1

    .line 215
    .restart local v1    # "ex":Ljava/lang/Exception;
    if-eqz v7, :cond_6

    instance-of v11, v7, Landroid/view/ViewGroup$LayoutParams;

    if-nez v11, :cond_0

    .line 218
    :cond_6
    const-string v11, "andView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LayoutParams failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 225
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    iput v14, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 226
    iput v14, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 227
    iput v8, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 228
    iput v2, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_5
.end method

.method public removeAllSubviews()V
    .locals 3

    .prologue
    .line 305
    :goto_0
    iget-object v1, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    .line 308
    .local v0, "child":Lcom/rockstargames/hal/andView;
    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->removeFromSuperview()V

    .line 310
    iget-object v1, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v0    # "child":Lcom/rockstargames/hal/andView;
    :cond_0
    return-void
.end method

.method public removeFromSuperview()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    iget-object v0, v0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v0, "andView"

    const-string v1, "Attempting to remove view with no parent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendViewToBack(Lcom/rockstargames/hal/andView;)V
    .locals 3
    .param p1, "view"    # Lcom/rockstargames/hal/andView;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "outer":Landroid/view/View;
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 117
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 426
    iput p1, p0, Lcom/rockstargames/hal/andView;->alpha:F

    .line 428
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 429
    return-void
.end method

.method public setAntiFlicker()V
    .locals 3

    .prologue
    .line 462
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rockstargames/hal/andView;->antiFlicker:Z

    .line 464
    iget-object v2, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andView;

    .line 465
    .local v1, "v":Lcom/rockstargames/hal/andView;
    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->setAntiFlicker()V

    goto :goto_0

    .line 466
    .end local v1    # "v":Lcom/rockstargames/hal/andView;
    :cond_0
    return-void
.end method

.method public setBackgroundColour(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    const/4 v1, 0x0

    .line 130
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_0

    .line 131
    const/high16 p3, 0x44160000    # 600.0f

    .line 132
    :cond_0
    cmpg-float v0, p4, v1

    if-gtz v0, :cond_1

    .line 133
    const/high16 p4, 0x44160000    # 600.0f

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/rockstargames/hal/andView;->positionOverridden:Z

    if-nez v0, :cond_2

    .line 137
    iput p1, p0, Lcom/rockstargames/hal/andView;->originX:F

    .line 138
    iput p2, p0, Lcom/rockstargames/hal/andView;->originY:F

    .line 141
    :cond_2
    iput p3, p0, Lcom/rockstargames/hal/andView;->width:F

    .line 142
    iput p4, p0, Lcom/rockstargames/hal/andView;->height:F

    .line 143
    iput p5, p0, Lcom/rockstargames/hal/andView;->paddingR:F

    .line 144
    iput p6, p0, Lcom/rockstargames/hal/andView;->paddingB:F

    .line 149
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->recalcLayout()V

    .line 150
    return-void
.end method

.method public setDebugString(Ljava/lang/String;)V
    .locals 2
    .param p1, "debugstr"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rockstargames/hal/andView;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 440
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native setPlatformSize(III)V
.end method

.method public setTransform(FFFFFF)V
    .locals 7
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "tx"    # F
    .param p6, "ty"    # F

    .prologue
    .line 449
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/ContainerLayout;->setTransform(FFFFFF)V

    .line 451
    return-void
.end method

.method public setUserInteractionEnabled(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    .line 472
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 70
    iput-object p1, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 74
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setId(I)V

    .line 75
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/rockstargames/hal/ContainerLayout;->setPadding(IIII)V

    .line 77
    :cond_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public toImage(Ljava/lang/String;)Lcom/rockstargames/hal/andImage;
    .locals 19
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 316
    const/16 v12, 0x72

    .line 317
    .local v12, "finalWidth":I
    const/16 v11, 0x72

    .line 323
    .local v11, "finalHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 324
    .local v1, "viewBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v17

    .line 326
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 327
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v5, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 328
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 332
    const/high16 v2, 0x42e40000    # 114.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rockstargames/hal/andView;->width:F

    div-float v18, v2, v3

    .line 333
    .local v18, "widthScale":F
    const/high16 v2, 0x42e40000    # 114.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rockstargames/hal/andView;->height:F

    div-float v13, v2, v3

    .line 335
    .local v13, "heightScale":F
    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 337
    .local v15, "scale":F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 338
    .local v6, "scaleMat":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 339
    invoke-virtual {v6, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 341
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v5, v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 344
    .local v16, "shrunkBitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x72

    const/16 v3, 0x72

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 347
    .local v10, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    .local v9, "c":Landroid/graphics/Canvas;
    const/high16 v2, 0x42e40000    # 114.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rockstargames/hal/andView;->width:F

    mul-float/2addr v3, v15

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42e40000    # 114.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rockstargames/hal/andView;->height:F

    mul-float/2addr v4, v15

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 351
    new-instance v8, Lcom/rockstargames/hal/PackedImageAttributes;

    invoke-direct {v8}, Lcom/rockstargames/hal/PackedImageAttributes;-><init>()V

    .line 352
    .local v8, "attrib":Lcom/rockstargames/hal/PackedImageAttributes;
    const/4 v2, 0x0

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->x:I

    .line 353
    const/4 v2, 0x0

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->y:I

    .line 354
    const/16 v2, 0x72

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->width:I

    .line 355
    const/16 v2, 0x72

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->height:I

    .line 356
    const/16 v2, 0x72

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->packedWidth:I

    .line 357
    const/16 v2, 0x72

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->packedHeight:I

    .line 358
    const/4 v2, 0x0

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->offsetX:I

    .line 359
    const/4 v2, 0x0

    iput v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->offsetY:I

    .line 360
    new-instance v2, Lcom/rockstargames/hal/TextureAtlas;

    invoke-direct {v2}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    iput-object v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    .line 361
    iget-object v2, v8, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    iput-object v10, v2, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    .line 363
    new-instance v14, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {v14, v8}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/PackedImageAttributes;)V

    .line 365
    .local v14, "image":Lcom/rockstargames/hal/PackedImage;
    new-instance v2, Lcom/rockstargames/hal/andImage;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v14}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    return-object v2
.end method
