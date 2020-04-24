.class public Lcom/rockstargames/hal/scroll/andPagerImpl;
.super Landroid/support/v4/view/ViewPager;
.source "andPagerImpl.java"

# interfaces
.implements Lcom/rockstargames/hal/andScrollView$ScrollImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/scroll/andPagerImpl$1;,
        Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;,
        Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;,
        Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;
    }
.end annotation


# instance fields
.field adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

.field private final andScrollView:Lcom/rockstargames/hal/andScrollView;

.field currentPage:I

.field public fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdatePage:I

.field private pageFromNative:I

.field private touchEventsDisabled:Z


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 6
    .param p1, "andScrollView"    # Lcom/rockstargames/hal/andScrollView;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 205
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    .line 25
    iput v3, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->pageFromNative:I

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->items:Ljava/util/ArrayList;

    .line 190
    iput v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    .line 192
    iput v3, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->lastUpdatePage:I

    .line 194
    new-instance v1, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    .line 196
    new-instance v1, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-direct {v1, p0, v5}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;Lcom/rockstargames/hal/scroll/andPagerImpl$1;)V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    .line 206
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    .line 214
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 216
    .local v0, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v1, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;

    invoke-direct {v1, p0, v5}, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;Lcom/rockstargames/hal/scroll/andPagerImpl$1;)V

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/scroll/andPagerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockstargames/hal/scroll/andPagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/scroll/andPagerImpl;

    .prologue
    .line 22
    iget v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->lastUpdatePage:I

    return v0
.end method

.method static synthetic access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockstargames/hal/scroll/andPagerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->lastUpdatePage:I

    return p1
.end method

.method static synthetic access$200(Lcom/rockstargames/hal/scroll/andPagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/scroll/andPagerImpl;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/rockstargames/hal/scroll/andPagerImpl;)Lcom/rockstargames/hal/andScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/scroll/andPagerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockstargames/hal/scroll/andPagerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->pageFromNative:I

    return p1
.end method


# virtual methods
.method public addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 0
    .param p1, "v"    # Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .prologue
    .line 292
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method public getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 258
    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 259
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-nez v4, :cond_0

    .line 261
    const-string v4, "andPager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v2}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    .line 263
    .local v2, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    .line 264
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    .line 265
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .end local v2    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const-string v4, "andPager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This view\'s layoutparams: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_1
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "andPager"

    const-string v5, "Error measuring"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-boolean v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    if-nez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/rockstargames/hal/andScrollView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 244
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 245
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 248
    .end local v0    # "parent":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public removeAllSubviews()V
    .locals 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    invoke-virtual {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->removeAllViews()V

    .line 344
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "andPager"

    const-string v2, "Unable to remove adapter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBackgroundAndImage(Lcom/rockstargames/hal/andImage;)V
    .locals 0
    .param p1, "img"    # Lcom/rockstargames/hal/andImage;

    .prologue
    .line 201
    return-void
.end method

.method public setPage(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setCurrentItem(I)V

    .line 304
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageWillChange(II)V

    .line 306
    iget v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    if-eq v0, p1, :cond_0

    .line 308
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    .line 309
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageDidChange(II)V

    .line 312
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->pageFromNative:I

    .line 314
    :cond_0
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 226
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    .line 227
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "mv"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    return-void
.end method

.method public transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 4
    .param p1, "from"    # Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .prologue
    .line 325
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v0

    .line 326
    .local v0, "layout":Lcom/rockstargames/hal/ContainerLayout;
    :goto_0
    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/rockstargames/hal/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 329
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 330
    .local v2, "vp":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 331
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 333
    :cond_0
    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 335
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
