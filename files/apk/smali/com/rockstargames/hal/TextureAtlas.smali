.class public Lcom/rockstargames/hal/TextureAtlas;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# static fields
.field private static FORCE_ARGB4444:Z


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field private bitmapName:Ljava/lang/String;

.field private flags:I

.field private references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/PackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/TextureAtlas;->FORCE_ARGB4444:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static getBitmapStats()Ljava/lang/String;
    .locals 9

    .prologue
    .line 38
    const-string v0, "bmps: "

    .line 40
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v2

    .line 42
    .local v2, "tac":Lcom/rockstargames/hal/TextureAtlasCache;
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Lcom/rockstargames/hal/TextureAtlasCache;->size()I

    move-result v1

    .line 46
    .local v1, "size":I
    const/16 v3, 0x400

    if-ge v1, v3, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .end local v1    # "size":I
    :cond_0
    :goto_0
    return-object v0

    .line 48
    .restart local v1    # "size":I
    :cond_1
    const/high16 v3, 0x100000

    if-ge v1, v3, :cond_2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v1, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "k"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.2fMB"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-float v7, v1

    const/high16 v8, 0x49800000    # 1048576.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 182
    iput-object p2, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    .line 183
    return-void
.end method

.method public addReference(Lcom/rockstargames/hal/PackedImage;)V
    .locals 2
    .param p1, "pImage"    # Lcom/rockstargames/hal/PackedImage;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    .line 218
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/TextureAtlasCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getBitmapInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public loadImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Z)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "isRetrying"    # Z

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3e800000    # 0.25f

    const/4 v8, 0x1

    .line 81
    iget-object v5, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 82
    iget-object v4, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    .line 177
    :goto_0
    return-object v4

    .line 84
    :cond_0
    const/4 v4, 0x0

    .line 91
    .local v4, "returnBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget v5, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    if-nez v5, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    .local v3, "originalBitmap":Landroid/graphics/Bitmap;
    :goto_1
    sget-boolean v5, Lcom/rockstargames/hal/TextureAtlas;->FORCE_ARGB4444:Z

    if-eqz v5, :cond_4

    .line 123
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 124
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 97
    .end local v3    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    iget v5, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_2

    .line 107
    const/4 v5, 0x4

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 108
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 118
    .restart local v3    # "originalBitmap":Landroid/graphics/Bitmap;
    :goto_2
    const-string v5, "TextureAtlas"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scale in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale, density: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 132
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 110
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_1
    iget v5, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 112
    const/4 v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 113
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "originalBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 116
    .end local v3    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .restart local v3    # "originalBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 129
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    move-object v4, v3

    goto/16 :goto_0

    .line 136
    .end local v3    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "err":Ljava/lang/OutOfMemoryError;
    const-string v5, "andImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextureAtlas: Out of memory trying to create image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rockstargames/hal/TextureAtlasCache;->evictAll()V

    .line 141
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->invalidateHierarchy()V

    .line 142
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 146
    const-wide/16 v6, 0x32

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    :goto_3
    if-nez p1, :cond_5

    .line 154
    invoke-virtual {p0, v8}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 156
    :cond_5
    iget v5, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    if-ne v5, v8, :cond_6

    iget v5, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_6

    .line 158
    const-string v5, "andImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextureAtlas: Trying again with scale = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    div-float/2addr v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v5, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    iget v6, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    or-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    div-float/2addr v7, v10

    invoke-virtual {p0, v5, v6, v7}, Lcom/rockstargames/hal/TextureAtlas;->setParameters(Ljava/lang/String;IF)V

    .line 160
    invoke-virtual {p0, v8}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 164
    :cond_6
    const-string v5, "andImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextureAtlas: Unable to free enough memory to load image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method public removeReference(Lcom/rockstargames/hal/PackedImage;)Z
    .locals 1
    .param p1, "pImage"    # Lcom/rockstargames/hal/PackedImage;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->dump()V

    .line 203
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParameters(Ljava/lang/String;IF)V
    .locals 0
    .param p1, "name_"    # Ljava/lang/String;
    .param p2, "flags_"    # I
    .param p3, "scale_"    # F

    .prologue
    .line 64
    iput-object p1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    .line 66
    iput p3, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
