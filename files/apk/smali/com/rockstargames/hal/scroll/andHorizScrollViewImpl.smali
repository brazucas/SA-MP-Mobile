.class public Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;
.super Landroid/widget/HorizontalScrollView;
.source "andHorizScrollViewImpl.java"

# interfaces
.implements Lcom/rockstargames/hal/andScrollView$ScrollImpl;


# instance fields
.field private final andScrollView:Lcom/rockstargames/hal/andScrollView;

.field private final container:Lcom/rockstargames/hal/ContainerLayout;

.field private subScrolls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/andScrollView$ScrollImpl;",
            ">;"
        }
    .end annotation
.end field

.field private touchEventsDisabled:Z


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 4
    .param p1, "andScrollView"    # Lcom/rockstargames/hal/andScrollView;

    .prologue
    const/16 v3, 0x64

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 30
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    .line 33
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 36
    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 37
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 1
    .param p1, "v"    # Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 94
    .local v0, "v":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 97
    check-cast v1, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v1, p0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    .line 98
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 55
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andScrollView;->scrollViewDidScroll(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 66
    .local v2, "ret":Z
    iget-boolean v5, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    if-nez v5, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 69
    .local v0, "action":I
    if-eq v0, v7, :cond_0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getScrollX()I

    move-result v4

    .local v4, "x":I
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getWidth()I

    move-result v3

    .line 72
    .local v3, "w":I
    rem-int v1, v4, v3

    .line 73
    .local v1, "mod":I
    div-int/lit8 v5, v3, 0x2

    if-ge v4, v5, :cond_2

    .line 74
    sub-int v5, v4, v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->scrollTo(II)V

    .line 80
    .end local v0    # "action":I
    .end local v1    # "mod":I
    .end local v3    # "w":I
    .end local v4    # "x":I
    :cond_1
    :goto_0
    return v7

    .line 76
    .restart local v0    # "action":I
    .restart local v1    # "mod":I
    .restart local v3    # "w":I
    .restart local v4    # "x":I
    :cond_2
    sub-int v5, v3, v1

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->scrollTo(II)V

    goto :goto_0
.end method

.method public removeAllSubviews()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->removeAllViews()V

    .line 140
    return-void
.end method

.method public setBackgroundAndImage(Lcom/rockstargames/hal/andImage;)V
    .locals 0
    .param p1, "img"    # Lcom/rockstargames/hal/andImage;

    .prologue
    .line 44
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 113
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 48
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "mv"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 4
    .param p1, "from"    # Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .prologue
    .line 124
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v0

    .line 125
    .local v0, "layout":Lcom/rockstargames/hal/ContainerLayout;
    :goto_0
    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 127
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/rockstargames/hal/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 129
    .local v2, "vp":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 130
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 134
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
