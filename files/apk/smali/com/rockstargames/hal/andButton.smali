.class public Lcom/rockstargames/hal/andButton;
.super Lcom/rockstargames/hal/andLabel;
.source "andButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andButton$andButtonImpl;
    }
.end annotation


# static fields
.field private static blankDrawable:Landroid/graphics/drawable/StateListDrawable;

.field static staticCount:I


# instance fields
.field pressedPacked:Lcom/rockstargames/hal/PackedImage;

.field private textView:Landroid/widget/TextView;

.field unpressedPacked:Lcom/rockstargames/hal/PackedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "handle"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, p1, v4}, Lcom/rockstargames/hal/andLabel;-><init>(IZ)V

    .line 35
    new-instance v1, Lcom/rockstargames/hal/andButton$andButtonImpl;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;-><init>(Lcom/rockstargames/hal/andButton;)V

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/andButton;->setView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/rockstargames/hal/andButton;->container:Lcom/rockstargames/hal/ContainerLayout;

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 38
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v5, v5, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 39
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    sget-object v1, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sput-object v1, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 45
    sget-object v1, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v4, [I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getImageButton()Lcom/rockstargames/hal/andButton$andButtonImpl;

    move-result-object v1

    sget-object v2, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    sget v1, Lcom/rockstargames/hal/andButton;->staticCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/rockstargames/hal/andButton;->staticCount:I

    .line 51
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andButton;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 61
    new-instance v0, Lcom/rockstargames/hal/andButton;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andButton;-><init>(I)V

    return-object v0
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
    .line 55
    sget v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    .line 56
    invoke-super {p0}, Lcom/rockstargames/hal/andLabel;->finalize()V

    .line 57
    return-void
.end method

.method protected getImageButton()Lcom/rockstargames/hal/andButton$andButtonImpl;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andButton$andButtonImpl;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public native onClick(I)V
.end method

.method public native onTouchEvent(IIIFF)V
.end method

.method public setBackgroundImages(Lcom/rockstargames/hal/andImage;Lcom/rockstargames/hal/andImage;)V
    .locals 2
    .param p1, "unpressed"    # Lcom/rockstargames/hal/andImage;
    .param p2, "pressed"    # Lcom/rockstargames/hal/andImage;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 113
    if-eqz p2, :cond_1

    .line 115
    move-object p1, p2

    .line 116
    const/4 p2, 0x0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andButton;->unpressedPacked:Lcom/rockstargames/hal/PackedImage;

    .line 124
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getImageButton()Lcom/rockstargames/hal/andButton$andButtonImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andButton;->unpressedPacked:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    .line 125
    :cond_1
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andLabel;->setBounds(FFFFFF)V

    .line 99
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 100
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 101
    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 102
    float-to-int v1, p3

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 103
    float-to-int v1, p4

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 104
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 0
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setTextColour(I)V
    .locals 1
    .param p1, "colour"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    return-void
.end method
