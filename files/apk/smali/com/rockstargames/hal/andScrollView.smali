.class public Lcom/rockstargames/hal/andScrollView;
.super Lcom/rockstargames/hal/andView;
.source "andScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andScrollView$ScrollImpl;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field private impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

.field private pageFromNative:I

.field public paging:Z

.field private touchEventsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 22
    iput-boolean v2, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    .line 23
    const/4 v1, -0x1

    iput v1, p0, Lcom/rockstargames/hal/andScrollView;->pageFromNative:I

    .line 67
    iput-boolean v2, p0, Lcom/rockstargames/hal/andScrollView;->paging:Z

    .line 48
    new-instance v0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    .line 49
    .local v0, "vertical":Lcom/rockstargames/hal/scroll/andScrollViewImpl;
    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    .line 50
    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .line 51
    invoke-virtual {v0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 52
    sget v1, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    .line 54
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andScrollView;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 64
    new-instance v0, Lcom/rockstargames/hal/andScrollView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andScrollView;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public changeImplTo(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 3
    .param p1, "changeTo"    # Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {p1, v1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    .line 100
    iget-object v1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 101
    .local v0, "viewparent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 103
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "viewparent":Landroid/view/ViewParent;
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    move-object v1, p1

    .line 109
    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    .line 110
    iput-object p1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .line 111
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
    .line 58
    sget v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    .line 59
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 60
    return-void
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected getInnerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected getOuterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    return-object v0
.end method

.method public native onTouchEvent(IIIFF)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 175
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/andScrollView;->onTouchEvent(IIIFF)V

    .line 178
    .end local v2    # "index":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllSubviews()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->removeAllSubviews()V

    .line 162
    :cond_0
    return-void
.end method

.method public removeFromSuperview()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    .local v0, "vp":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "vp":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    :cond_0
    return-void
.end method

.method public native scrollViewDidScroll(I)V
.end method

.method public native scrollViewPageDidChange(II)V
.end method

.method public native scrollViewPageWillChange(II)V
.end method

.method public setBackgroundImage(Lcom/rockstargames/hal/andImage;)V
    .locals 1
    .param p1, "img"    # Lcom/rockstargames/hal/andImage;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v0, p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->setBackgroundAndImage(Lcom/rockstargames/hal/andImage;)V

    .line 167
    return-void
.end method

.method public setContentSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 115
    return-void
.end method

.method public setHorizontal(ZZ)V
    .locals 3
    .param p1, "horizontal"    # Z
    .param p2, "paged"    # Z

    .prologue
    .line 71
    iput-boolean p2, p0, Lcom/rockstargames/hal/andScrollView;->paging:Z

    .line 78
    if-eqz p1, :cond_0

    .line 80
    if-nez p2, :cond_1

    .line 81
    :try_start_0
    new-instance v1, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/andScrollView;->changeImplTo(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v1, Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/andScrollView;->changeImplTo(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "andScrollView"

    const-string v2, "Exception changing view to horizontal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v0, p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->setPage(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 125
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    .line 126
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v0, p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->setTouchEventsEnabled(Z)V

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
