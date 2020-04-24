.class public Lcom/rockstargames/hal/andTextInput;
.super Lcom/rockstargames/hal/andLabel;
.source "andTextInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andTextInput$2;,
        Lcom/rockstargames/hal/andTextInput$andTextInputImpl;,
        Lcom/rockstargames/hal/andTextInput$TextAlignment;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field private clearOnFocus:Z

.field private filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/InputFilter;",
            ">;"
        }
    .end annotation
.end field

.field private isPasswordInput:Z

.field setProgrammatically:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/rockstargames/hal/andLabel;-><init>(IZ)V

    .line 47
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 48
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    .line 49
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput;->setView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 27
    sget v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/andTextInput;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andTextInput;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    return v0
.end method

.method static synthetic access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andTextInput;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createView(I)Lcom/rockstargames/hal/andTextInput;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 90
    new-instance v0, Lcom/rockstargames/hal/andTextInput;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTextInput;-><init>(I)V

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
    .line 41
    sget v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    .line 42
    invoke-super {p0}, Lcom/rockstargames/hal/andLabel;->finalize()V

    .line 43
    return-void
.end method

.method public setBackgroundImage(Lcom/rockstargames/hal/andImage;)V
    .locals 2
    .param p1, "img"    # Lcom/rockstargames/hal/andImage;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    .line 146
    .local v0, "txt":Lcom/rockstargames/hal/andTextInput$andTextInputImpl;
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    .line 147
    return-void
.end method

.method public setBackgroundTransparent()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setBackgroundColor(I)V

    .line 77
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    const/4 v5, 0x0

    .line 83
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-super/range {v0 .. v6}, Lcom/rockstargames/hal/andLabel;->setBounds(FFFFFF)V

    .line 84
    return-void
.end method

.method public setClearOnFocus(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    .line 158
    return-void
.end method

.method public setEmail(Z)V
    .locals 2
    .param p1, "isEmail"    # Z

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 96
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const v1, 0x80021

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    .line 97
    return-void
.end method

.method public setLicensePlateInput()V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/rockstargames/hal/andTextInput$1;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTextInput$1;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    .line 128
    .local v0, "charFilter":Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 129
    .local v1, "lengthFilter":Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v2}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->updateFilters()V

    .line 133
    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const v3, 0x81001

    invoke-virtual {v2, v3}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    .line 134
    return-void
.end method

.method public setMaxLength(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    .line 152
    .local v0, "txt":Lcom/rockstargames/hal/andTextInput$andTextInputImpl;
    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setMaxLength(I)V

    .line 153
    return-void
.end method

.method public setNextFocusView(Lcom/rockstargames/hal/andView;)V
    .locals 2
    .param p1, "view"    # Lcom/rockstargames/hal/andView;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    .line 33
    .local v0, "nextFocusID":I
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 34
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 35
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 36
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 37
    return-void
.end method

.method public setNumberInput()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    .line 112
    return-void
.end method

.method public setPassword(Z)V
    .locals 2
    .param p1, "isPassword"    # Z

    .prologue
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 103
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    .line 104
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    .line 105
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 57
    invoke-super {p0, p1}, Lcom/rockstargames/hal/andLabel;->setText(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I

    .prologue
    .line 170
    sget-object v0, Lcom/rockstargames/hal/andTextInput$2;->$SwitchMap$com$rockstargames$hal$andTextInput$TextAlignment:[I

    invoke-static {}, Lcom/rockstargames/hal/andTextInput$TextAlignment;->values()[Lcom/rockstargames/hal/andTextInput$TextAlignment;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andTextInput$TextAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setGravity(I)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setGravity(I)V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setGravity(I)V

    goto :goto_0

    .line 182
    :pswitch_3
    const-string v0, "andTextInput"

    const-string v1, "WARNING: Justified alignment not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "points"    # F

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/rockstargames/hal/andLabel;->setTextSize(F)V

    .line 65
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setSingleLine(Z)V

    .line 66
    iget-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    .line 69
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setWatermarkText(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setHint(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public native textChanged(ILjava/lang/String;)V
.end method
