.class public Lcom/rockstargames/hal/andImage;
.super Ljava/lang/Object;
.source "andImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andImage$andImageReferencer;
    }
.end annotation


# static fields
.field private static caulk:Landroid/graphics/Bitmap;

.field private static hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/rockstargames/hal/TextureAtlas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private packedImage:Lcom/rockstargames/hal/PackedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packedImage"    # Lcom/rockstargames/hal/PackedImage;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    .line 180
    return-void
.end method

.method private static LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/rockstargames/hal/TextureAtlas;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    .line 66
    .local v0, "atlas":Lcom/rockstargames/hal/TextureAtlas;
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/rockstargames/hal/TextureAtlas;

    .end local v0    # "atlas":Lcom/rockstargames/hal/TextureAtlas;
    invoke-direct {v0}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    .line 70
    .restart local v0    # "atlas":Lcom/rockstargames/hal/TextureAtlas;
    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/rockstargames/hal/TextureAtlas;->LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 75
    return-object v0
.end method

.method public static createImage(Ljava/lang/String;)Lcom/rockstargames/hal/andImage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/rockstargames/hal/andImage;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static dumpAllImages()V
    .locals 3

    .prologue
    .line 90
    sget-object v2, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    .line 92
    .local v0, "atlas":Lcom/rockstargames/hal/TextureAtlas;
    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlas;->dump()V

    goto :goto_0

    .line 95
    .end local v0    # "atlas":Lcom/rockstargames/hal/TextureAtlas;
    :cond_0
    sget-object v2, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 96
    return-void
.end method

.method public static getCaulk()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/16 v8, 0x4000

    const/16 v7, 0x80

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 26
    sget-object v3, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 28
    const/16 v2, 0x80

    .line 29
    .local v2, "side":I
    new-array v0, v8, [I

    .line 30
    .local v0, "cols":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_3

    .line 31
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    div-int/lit16 v6, v1, 0x80

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    move v6, v4

    :goto_2
    if-ne v3, v6, :cond_2

    const/high16 v3, -0x1000000

    :goto_3
    aput v3, v0, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 31
    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_2

    :cond_2
    const v3, -0xff01

    goto :goto_3

    .line 32
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v7, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    .line 35
    :cond_4
    sget-object v3, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    return-object v3
.end method

.method private static getTextureAtlas(Ljava/lang/String;IF)Lcom/rockstargames/hal/TextureAtlas;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "scale"    # F

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    .line 49
    .local v0, "atlas":Lcom/rockstargames/hal/TextureAtlas;
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/rockstargames/hal/TextureAtlas;

    .end local v0    # "atlas":Lcom/rockstargames/hal/TextureAtlas;
    invoke-direct {v0}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    .line 53
    .restart local v0    # "atlas":Lcom/rockstargames/hal/TextureAtlas;
    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/rockstargames/hal/TextureAtlas;->setParameters(Ljava/lang/String;IF)V

    .line 57
    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmap()Landroid/graphics/Bitmap;

    .line 59
    return-object v0
.end method

.method public static loadImageFromBytes(Ljava/lang/String;[BI)Lcom/rockstargames/hal/andImage;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-static {p1, v4, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .local v1, "image":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 149
    new-instance v0, Lcom/rockstargames/hal/PackedImageAttributes;

    invoke-direct {v0}, Lcom/rockstargames/hal/PackedImageAttributes;-><init>()V

    .line 150
    .local v0, "attributes":Lcom/rockstargames/hal/PackedImageAttributes;
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->x:I

    .line 151
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->y:I

    .line 152
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedWidth:I

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedHeight:I

    .line 154
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/rockstargames/hal/PackedImageAttributes;->width:I

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/rockstargames/hal/PackedImageAttributes;->height:I

    .line 157
    invoke-static {p0, v1}, Lcom/rockstargames/hal/andImage;->LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/rockstargames/hal/TextureAtlas;

    move-result-object v3

    iput-object v3, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    .line 158
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetX:I

    .line 159
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetY:I

    .line 161
    new-instance v2, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {v2, v0}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/PackedImageAttributes;)V

    .line 163
    .local v2, "packedImage":Lcom/rockstargames/hal/PackedImage;
    new-instance v3, Lcom/rockstargames/hal/andImage;

    invoke-direct {v3, p0, v2}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    .line 166
    .end local v0    # "attributes":Lcom/rockstargames/hal/PackedImageAttributes;
    .end local v2    # "packedImage":Lcom/rockstargames/hal/PackedImage;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static unloadPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 2
    .param p0, "pImage"    # Lcom/rockstargames/hal/PackedImage;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->unload()Lcom/rockstargames/hal/TextureAtlas;

    move-result-object v0

    .line 82
    .local v0, "atlas":Lcom/rockstargames/hal/TextureAtlas;
    if-eqz v0, :cond_0

    .line 84
    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void
.end method

.method public static unpackImage(Ljava/lang/String;Ljava/lang/String;IIIIIIIII)Lcom/rockstargames/hal/andImage;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "packedPath"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "offsetX"    # I
    .param p7, "offsetY"    # I
    .param p8, "sizeWidth"    # I
    .param p9, "sizeHeight"    # I
    .param p10, "flags"    # I

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, "image":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 112
    .local v4, "packedImage":Lcom/rockstargames/hal/PackedImage;
    :try_start_0
    new-instance v1, Lcom/rockstargames/hal/PackedImageAttributes;

    invoke-direct {v1}, Lcom/rockstargames/hal/PackedImageAttributes;-><init>()V

    .line 113
    .local v1, "attributes":Lcom/rockstargames/hal/PackedImageAttributes;
    iput p2, v1, Lcom/rockstargames/hal/PackedImageAttributes;->x:I

    .line 114
    move/from16 v0, p3

    iput v0, v1, Lcom/rockstargames/hal/PackedImageAttributes;->y:I

    .line 115
    move/from16 v0, p4

    iput v0, v1, Lcom/rockstargames/hal/PackedImageAttributes;->packedWidth:I

    .line 116
    move/from16 v0, p5

    iput v0, v1, Lcom/rockstargames/hal/PackedImageAttributes;->packedHeight:I

    .line 117
    move/from16 v0, p8

    iput v0, v1, Lcom/rockstargames/hal/PackedImageAttributes;->width:I

    .line 118
    move/from16 v0, p9

    iput v0, v1, Lcom/rockstargames/hal/PackedImageAttributes;->height:I

    .line 120
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getWindowWidth()I

    move-result v11

    int-to-float v10, v11

    .local v10, "screenW":F
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getWindowHeight()I

    move-result v11

    int-to-float v9, v11

    .line 123
    .local v9, "screenH":F
    move/from16 v0, p8

    int-to-float v11, v0

    div-float v7, v10, v11

    .line 124
    .local v7, "scaleX":F
    move/from16 v0, p9

    int-to-float v11, v0

    div-float v8, v9, v11

    .line 126
    .local v8, "scaleY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 129
    .local v6, "scale":F
    move/from16 v0, p10

    invoke-static {p1, v0, v6}, Lcom/rockstargames/hal/andImage;->getTextureAtlas(Ljava/lang/String;IF)Lcom/rockstargames/hal/TextureAtlas;

    move-result-object v11

    iput-object v11, v1, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    .line 130
    move/from16 v0, p6

    iput v0, v1, Lcom/rockstargames/hal/PackedImageAttributes;->offsetX:I

    .line 131
    move/from16 v0, p7

    iput v0, v1, Lcom/rockstargames/hal/PackedImageAttributes;->offsetY:I

    .line 133
    new-instance v5, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {v5, v1}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/PackedImageAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "packedImage":Lcom/rockstargames/hal/PackedImage;
    .local v5, "packedImage":Lcom/rockstargames/hal/PackedImage;
    move-object v4, v5

    .line 140
    .end local v1    # "attributes":Lcom/rockstargames/hal/PackedImageAttributes;
    .end local v5    # "packedImage":Lcom/rockstargames/hal/PackedImage;
    .end local v6    # "scale":F
    .end local v7    # "scaleX":F
    .end local v8    # "scaleY":F
    .end local v9    # "screenH":F
    .end local v10    # "screenW":F
    .restart local v4    # "packedImage":Lcom/rockstargames/hal/PackedImage;
    :goto_0
    new-instance v11, Lcom/rockstargames/hal/andImage;

    invoke-direct {v11, p0, v4}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    return-object v11

    .line 135
    :catch_0
    move-exception v2

    .line 137
    .local v2, "ex":Ljava/lang/Exception;
    const-string v11, "andImage"

    const-string v12, "Exception thrown when creating image:"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getByteData()[B
    .locals 4

    .prologue
    .line 226
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v1}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 229
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    .line 199
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackedImage()Lcom/rockstargames/hal/PackedImage;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    .line 189
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public turnFilteringOff()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->turnOffFiltering()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "andImage"

    const-string v1, "Trying to make NULL packed image unfiltered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unload()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "andImage"

    const-string v1, "Trying to recycle null bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-static {v0}, Lcom/rockstargames/hal/andImage;->unloadPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    goto :goto_0
.end method
