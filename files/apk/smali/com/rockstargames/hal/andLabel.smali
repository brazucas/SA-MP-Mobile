.class public Lcom/rockstargames/hal/andLabel;
.super Lcom/rockstargames/hal/andView;
.source "andLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andLabel$1;,
        Lcom/rockstargames/hal/andLabel$andLabelImpl;,
        Lcom/rockstargames/hal/andLabel$TextAlignment;
    }
.end annotation


# static fields
.field private static defaultFont:Landroid/graphics/Typeface;

.field static staticCount:I


# instance fields
.field private cachedH:I

.field private cachedW:I

.field private hasShadow:Z

.field private sizeAdjusted:F

.field private sizeFromHal:F

.field protected text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    .line 25
    new-instance v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;-><init>(Lcom/rockstargames/hal/andLabel;)V

    .line 27
    .local v0, "l":Lcom/rockstargames/hal/andLabel$andLabelImpl;
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel;->setView(Landroid/view/View;)V

    .line 28
    sget v1, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/rockstargames/hal/andLabel;->staticCount:I

    .line 29
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "init"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    .line 34
    if-eqz p2, :cond_0

    .line 35
    new-instance v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;-><init>(Lcom/rockstargames/hal/andLabel;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel;->setView(Landroid/view/View;)V

    .line 36
    :cond_0
    sget v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    .line 37
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andLabel;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/rockstargames/hal/andLabel;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andLabel;-><init>(I)V

    return-object v0
.end method

.method public static getDefaultFont()Landroid/graphics/Typeface;
    .locals 5

    .prologue
    .line 305
    sget-object v2, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 309
    :try_start_0
    const-string v0, "Fonts/HELVETICANEUELTW1G-ROMAN.OTF"

    .line 310
    .local v0, "defaultFontFilename":Ljava/lang/String;
    const-string v2, "andLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to load typeface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    .line 312
    const-string v2, "andLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully loaded typeface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    sget-object v2, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    return-object v2

    .line 314
    :catch_0
    move-exception v1

    .line 316
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private printDebugFontSizeString()V
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 99
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "andLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Final: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeAdjusted:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dpi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H/h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H*h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    sget v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    .line 42
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 43
    return-void
.end method

.method public getCachedH()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/rockstargames/hal/andLabel;->cachedH:I

    return v0
.end method

.method public getCachedW()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/rockstargames/hal/andLabel;->cachedW:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTextHeight()I
    .locals 3

    .prologue
    .line 270
    iget v1, p0, Lcom/rockstargames/hal/andLabel;->width:F

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 271
    .local v0, "widthSpec":I
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 272
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    return v1
.end method

.method protected getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextWidth()I
    .locals 3

    .prologue
    .line 277
    iget v1, p0, Lcom/rockstargames/hal/andLabel;->width:F

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 278
    .local v0, "widthSpec":I
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 279
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    return v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAutoResize(I)V
    .locals 1
    .param p1, "set"    # I

    .prologue
    const/4 v0, 0x1

    .line 109
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel;->setAutoResize(Z)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoResize(Z)V
    .locals 14
    .param p1, "set"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 142
    if-eqz p1, :cond_2

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v8

    .line 147
    .local v8, "tv":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 148
    .local v9, "tvp":Landroid/graphics/Paint;
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 150
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v3, "p":Landroid/graphics/Paint;
    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 155
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-direct {v6, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v6, "tok":Ljava/util/StringTokenizer;
    new-instance v7, Landroid/graphics/Point;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 157
    .local v7, "totalSize":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 158
    .local v5, "tempRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 161
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 166
    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3, v4, v11, v12, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 168
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/lit8 v12, v11, 0x2

    iget v11, v5, Landroid/graphics/Rect;->left:I

    if-lez v11, :cond_3

    iget v11, v5, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int v10, v12, v11

    .line 169
    .local v10, "w":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 170
    .local v2, "h":I
    iget v11, v7, Landroid/graphics/Point;->x:I

    if-le v10, v11, :cond_1

    .line 171
    iput v10, v7, Landroid/graphics/Point;->x:I

    .line 172
    :cond_1
    iget v11, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    iget v12, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v13, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v13

    iget v13, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v7, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v1    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v2    # "h":I
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "t":Ljava/lang/String;
    .end local v5    # "tempRect":Landroid/graphics/Rect;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "totalSize":Landroid/graphics/Point;
    .end local v8    # "tv":Landroid/widget/TextView;
    .end local v9    # "tvp":Landroid/graphics/Paint;
    .end local v10    # "w":I
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/lang/Exception;
    const-string v11, "andLabel"

    const-string v12, "Autoresize exception"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 168
    .restart local v1    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v3    # "p":Landroid/graphics/Paint;
    .restart local v4    # "t":Ljava/lang/String;
    .restart local v5    # "tempRect":Landroid/graphics/Rect;
    .restart local v6    # "tok":Ljava/util/StringTokenizer;
    .restart local v7    # "totalSize":Landroid/graphics/Point;
    .restart local v8    # "tv":Landroid/widget/TextView;
    .restart local v9    # "tvp":Landroid/graphics/Paint;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 178
    .end local v4    # "t":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget v11, v7, Landroid/graphics/Point;->x:I

    iput v11, p0, Lcom/rockstargames/hal/andLabel;->cachedW:I

    .line 179
    iget v11, v7, Landroid/graphics/Point;->y:I

    iput v11, p0, Lcom/rockstargames/hal/andLabel;->cachedH:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setBackgroundTransparent()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 93
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    .line 254
    const/4 v7, 0x0

    .line 255
    .local v7, "shadowIncrease":F
    iget-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    const/high16 v7, 0x40900000    # 4.5f

    .line 259
    :cond_0
    add-float v3, p3, v7

    add-float v4, p4, v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 261
    return-void
.end method

.method public setDropShadow()V
    .locals 4

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    .line 266
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 267
    return-void
.end method

.method public setFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fontname"    # Ljava/lang/String;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 201
    :cond_0
    const-string v1, "andLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to load typeface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    const-string v1, "andLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully loaded typeface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 3
    .param p1, "alignment"    # I

    .prologue
    const/4 v2, 0x3

    .line 224
    sget-object v0, Lcom/rockstargames/hal/andLabel$1;->$SwitchMap$com$rockstargames$hal$andLabel$TextAlignment:[I

    invoke-static {}, Lcom/rockstargames/hal/andLabel$TextAlignment;->values()[Lcom/rockstargames/hal/andLabel$TextAlignment;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andLabel$TextAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 227
    :pswitch_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 236
    :pswitch_3
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTextColour(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    return-void
.end method

.method public setTextSize(F)V
    .locals 3
    .param p1, "points"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    .line 71
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 73
    .local v0, "dm":Landroid/util/DisplayMetrics;
    move v1, p1

    .line 75
    .local v1, "finalSize":F
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 77
    iput v1, p0, Lcom/rockstargames/hal/andLabel;->sizeAdjusted:F

    .line 84
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    return-void
.end method

.method public setTypeFace(ZZ)V
    .locals 3
    .param p1, "bold"    # Z
    .param p2, "italic"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_0
    if-ne p1, v1, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 292
    :cond_1
    if-ne p2, v1, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method
