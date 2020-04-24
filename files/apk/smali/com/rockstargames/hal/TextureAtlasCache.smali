.class public Lcom/rockstargames/hal/TextureAtlasCache;
.super Landroid/support/v4/util/LruCache;
.source "TextureAtlasCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Lcom/rockstargames/hal/TextureAtlas;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 11
    return-void
.end method


# virtual methods
.method protected create(Lcom/rockstargames/hal/TextureAtlas;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Lcom/rockstargames/hal/TextureAtlas;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/rockstargames/hal/TextureAtlas;->loadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/rockstargames/hal/TextureAtlas;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/TextureAtlasCache;->create(Lcom/rockstargames/hal/TextureAtlas;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected entryRemoved(ZLcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Lcom/rockstargames/hal/TextureAtlas;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p2, Lcom/rockstargames/hal/TextureAtlas;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rockstargames/hal/TextureAtlasCache;->entryRemoved(ZLcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Lcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Lcom/rockstargames/hal/TextureAtlas;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/rockstargames/hal/TextureAtlas;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/rockstargames/hal/TextureAtlasCache;->sizeOf(Lcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
