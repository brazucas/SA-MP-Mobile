.class public Lcom/rockstargames/hal/andImageView;
.super Lcom/rockstargames/hal/andView;
.source "andImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andImageView$andImageViewImp;,
        Lcom/rockstargames/hal/andImageView$OverlayImageView;
    }
.end annotation


# static fields
.field private static caulkPaint:Landroid/graphics/Paint;

.field static staticCount:I


# instance fields
.field private overlay:Landroid/graphics/drawable/ShapeDrawable;

.field private overlayColour:I

.field private overlayImageView:Landroid/widget/ImageView;

.field private overlayScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andImageView;->staticCount:I

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andImageView;->caulkPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 16
    iput-object v1, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    .line 18
    iput-object v1, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    .line 25
    new-instance v0, Lcom/rockstargames/hal/andImageView$andImageViewImp;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;-><init>(Lcom/rockstargames/hal/andImageView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andImageView;->setView(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/rockstargames/hal/andImageView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andImageView;->staticCount:I

    .line 27
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andImageView;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/rockstargames/hal/andImageView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andImageView;-><init>(I)V

    return-object v0
.end method

.method private getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andImageView$andImageViewImp;

    return-object v0
.end method


# virtual methods
.method public SetShapeOverlay(IIII)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/rockstargames/hal/andImageView;->overlayColour:I

    .line 58
    iget-object v1, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/rockstargames/hal/andImageView$OverlayImageView;

    invoke-direct {v1}, Lcom/rockstargames/hal/andImageView$OverlayImageView;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    .line 64
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 65
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v1, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/rockstargames/hal/andImageView;->container:Lcom/rockstargames/hal/ContainerLayout;

    iget-object v2, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 73
    .end local v0    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    goto :goto_0
.end method

.method public SetShapeOverlayScale(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 49
    iput p1, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    .line 51
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    .line 53
    :cond_0
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
    .line 31
    sget v0, Lcom/rockstargames/hal/andImageView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andImageView;->staticCount:I

    .line 32
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 33
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    .line 115
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 117
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    .line 118
    return-void
.end method

.method public setImage(Lcom/rockstargames/hal/andImage;)V
    .locals 3
    .param p1, "img"    # Lcom/rockstargames/hal/andImage;

    .prologue
    const/4 v2, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    .line 125
    const-string v0, "andImageView"

    const-string v1, "NULL image passed in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewrender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    .line 136
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setTiled(Z)V
    .locals 1
    .param p1, "tiled"    # Z

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setTiled(Z)V

    .line 143
    return-void
.end method

.method updateOverlayScale()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 87
    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 89
    .local v2, "shape":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    .line 90
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/rockstargames/hal/andImageView;->overlayColour:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    iget v4, p0, Lcom/rockstargames/hal/andImageView;->width:F

    iget v5, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 93
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    iget v4, p0, Lcom/rockstargames/hal/andImageView;->height:F

    iget v5, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 95
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 99
    .local v1, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v3}, Lcom/rockstargames/hal/ContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 101
    .local v0, "containerLayout":Landroid/widget/AbsoluteLayout$LayoutParams;
    if-nez v1, :cond_0

    .line 102
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v1, v6, v6, v6, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 104
    .restart local v1    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 105
    iget-object v3, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 107
    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iget v4, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 108
    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    iget v4, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 110
    .end local v0    # "containerLayout":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v1    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v2    # "shape":Landroid/graphics/drawable/shapes/OvalShape;
    :cond_1
    return-void
.end method
