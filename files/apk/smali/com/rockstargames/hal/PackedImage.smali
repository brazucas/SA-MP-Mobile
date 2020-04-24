.class public Lcom/rockstargames/hal/PackedImage;
.super Ljava/lang/Object;
.source "PackedImage.java"


# instance fields
.field attributes:Lcom/rockstargames/hal/PackedImageAttributes;

.field bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field filteringTurnedOff:Z

.field myPaint:Landroid/graphics/Paint;

.field private previousDrawHeight:I

.field private previousDrawWidth:I

.field private previousFilter:Landroid/graphics/ColorFilter;

.field private scaleX:F

.field private scaleY:F

.field sourceRect:Landroid/graphics/Rect;

.field targetRect:Landroid/graphics/RectF;

.field tiledBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/PackedImageAttributes;)V
    .locals 3
    .param p1, "attrs"    # Lcom/rockstargames/hal/PackedImageAttributes;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/PackedImage;->filteringTurnedOff:Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->previousFilter:Landroid/graphics/ColorFilter;

    .line 139
    iput v1, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawWidth:I

    iput v1, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawHeight:I

    .line 42
    iput-object p1, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    .line 44
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget-object v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/TextureAtlas;->addReference(Lcom/rockstargames/hal/PackedImage;)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 52
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 53
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 54
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 55
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 56
    return-void
.end method


# virtual methods
.method public Draw(Landroid/graphics/Canvas;IIZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "tiled"    # Z

    .prologue
    .line 135
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZLandroid/graphics/ColorFilter;)V

    .line 136
    return-void
.end method

.method public Draw(Landroid/graphics/Canvas;IIZLandroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "tiled"    # Z
    .param p5, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v6, 0x0

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "scaleChanged":Z
    iget v2, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawWidth:I

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawHeight:I

    if-eq p3, v2, :cond_1

    .line 148
    :cond_0
    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    .line 149
    int-to-float v2, p3

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    .line 151
    iput p2, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawWidth:I

    .line 152
    iput p3, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawHeight:I

    .line 153
    const/4 v1, 0x1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->previousFilter:Landroid/graphics/ColorFilter;

    if-eq p5, v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 161
    iput-object p5, p0, Lcom/rockstargames/hal/PackedImage;->previousFilter:Landroid/graphics/ColorFilter;

    .line 164
    :cond_2
    if-nez v0, :cond_3

    .line 166
    const-string v2, "PackedImage"

    const-string v3, "PackedImage attempting to draw null bitmap!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 222
    :goto_0
    return-void

    .line 174
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    const-string v2, "PackedImage"

    const-string v3, "PackedImage attempting to draw recycled bitmap!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 178
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rockstargames/hal/TextureAtlasCache;->evictAll()V

    .line 179
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 180
    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    :cond_5
    const-string v2, "PackedImage"

    const-string v3, "PackedImage unable to reload recycled bitmap!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 195
    :cond_6
    if-eqz p4, :cond_8

    .line 197
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->tiledBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 199
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/rockstargames/hal/PackedImage;->tiledBitmap:Landroid/graphics/Bitmap;

    .line 202
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/rockstargames/hal/PackedImage;->tiledBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 203
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 206
    :cond_7
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 207
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 211
    :cond_8
    if-eqz v1, :cond_9

    .line 213
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 214
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 215
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetX()I

    move-result v3

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 216
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetY()I

    move-result v3

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 219
    :cond_9
    iget-object v2, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget-object v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->height:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetY:I

    return v0
.end method

.method public getPackedHeight()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedHeight:I

    return v0
.end method

.method public getPackedWidth()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->y:I

    return v0
.end method

.method public turnOffFiltering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-boolean v1, p0, Lcom/rockstargames/hal/PackedImage;->filteringTurnedOff:Z

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rockstargames/hal/PackedImage;->filteringTurnedOff:Z

    .line 121
    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 123
    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 125
    const/4 v0, 0x1

    .line 126
    .local v0, "fudge":I
    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 127
    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 128
    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 129
    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 131
    .end local v0    # "fudge":I
    :cond_0
    return-void
.end method

.method public unload()Lcom/rockstargames/hal/TextureAtlas;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget-object v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/TextureAtlas;->removeReference(Lcom/rockstargames/hal/PackedImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/PackedImageAttributes;

    iget-object v0, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
