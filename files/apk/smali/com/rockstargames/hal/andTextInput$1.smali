.class Lcom/rockstargames/hal/andTextInput$1;
.super Ljava/lang/Object;
.source "andTextInput.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andTextInput;->setLicensePlateInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andTextInput;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andTextInput;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$1;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 119
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 120
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 123
    :cond_2
    const-string v1, ""

    .line 125
    :goto_1
    return-object v1

    .line 119
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
