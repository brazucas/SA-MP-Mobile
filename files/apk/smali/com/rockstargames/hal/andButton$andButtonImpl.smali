.class public Lcom/rockstargames/hal/andButton$andButtonImpl;
.super Landroid/widget/ImageButton;
.source "andButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andButtonImpl"
.end annotation


# instance fields
.field private attached:Z

.field packedImage:Lcom/rockstargames/hal/PackedImage;

.field pressedFilter:Landroid/graphics/ColorFilter;

.field final synthetic this$0:Lcom/rockstargames/hal/andButton;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andButton;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    .line 134
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 143
    iput-boolean v1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    .line 135
    invoke-virtual {p0, p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setId(I)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setAdjustViewBounds(Z)V

    .line 139
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 173
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 174
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget-boolean v3, v3, Lcom/rockstargames/hal/andButton;->userInteractionEnabled:Z

    if-eqz v3, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 181
    .local v0, "eventaction":I
    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 195
    .end local v0    # "eventaction":I
    :cond_2
    return v2

    .line 184
    .restart local v0    # "eventaction":I
    :pswitch_0
    iget-object v3, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget-object v4, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget v4, v4, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v3, v4}, Lcom/rockstargames/hal/andButton;->onClick(I)V

    .line 185
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v3, -0x666667

    invoke-direct {v1, v3, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 186
    .local v1, "filter":Landroid/graphics/ColorFilter;
    iput-object v1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 187
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method isAttached()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    .line 150
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    .line 157
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 230
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    .line 232
    :cond_1
    const/4 v6, 0x0

    .line 234
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZLandroid/graphics/ColorFilter;)V

    .line 236
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andButton;->userInteractionEnabled:Z

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 213
    .local v2, "index":I
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget-object v1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget v1, v1, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/andButton;->onTouchEvent(IIIFF)V

    .line 214
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0
    .param p1, "packedImage"    # Lcom/rockstargames/hal/PackedImage;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    .line 221
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    .line 222
    return-void
.end method
