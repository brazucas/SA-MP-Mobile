.class public Lcom/rockstargames/hal/scroll/andScrollViewImpl;
.super Landroid/widget/ScrollView;
.source "andScrollViewImpl.java"

# interfaces
.implements Lcom/rockstargames/hal/andScrollView$ScrollImpl;


# instance fields
.field private final andScrollView:Lcom/rockstargames/hal/andScrollView;

.field backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundRect:Landroid/graphics/Rect;

.field private final container:Lcom/rockstargames/hal/ContainerLayout;

.field private lastBackgroundBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

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

.field touchStart:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 4
    .param p1, "andScrollView"    # Lcom/rockstargames/hal/andScrollView;

    .prologue
    const/16 v3, 0xc8

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    .line 39
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->setId(I)V

    .line 44
    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 45
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 1
    .param p1, "v"    # Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 143
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 144
    .local v0, "v":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 146
    instance-of v1, v0, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 147
    check-cast v1, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v1, p0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    .line 148
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 71
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v2}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmap:Ljava/lang/ref/SoftReference;

    .line 78
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 79
    .local v1, "bms":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 84
    .end local v1    # "bms":Landroid/graphics/BitmapShader;
    :cond_1
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 88
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 113
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 100
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andScrollView;->scrollViewDidScroll(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 127
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    :cond_0
    return v0
.end method

.method public removeAllSubviews()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->removeAllViews()V

    .line 192
    return-void
.end method

.method public setBackgroundAndImage(Lcom/rockstargames/hal/andImage;)V
    .locals 4
    .param p1, "img"    # Lcom/rockstargames/hal/andImage;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object v2

    iput-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

    .line 58
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundRect:Landroid/graphics/Rect;

    .line 59
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v2}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmap:Ljava/lang/ref/SoftReference;

    .line 64
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 65
    .local v1, "bms":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 164
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 93
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "mv"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    :cond_0
    return-void
.end method

.method public transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 4
    .param p1, "from"    # Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .prologue
    .line 175
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v0

    .line 176
    .local v0, "layout":Lcom/rockstargames/hal/ContainerLayout;
    :goto_0
    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/rockstargames/hal/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 180
    .local v2, "vp":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 181
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    :cond_0
    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 185
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
