.class public Lcom/rockstargames/hal/andTextInput$andTextInputImpl;
.super Landroid/widget/EditText;
.source "andTextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andTextInputImpl"
.end annotation


# instance fields
.field attached:Z

.field packedImage:Lcom/rockstargames/hal/PackedImage;

.field final synthetic this$0:Lcom/rockstargames/hal/andTextInput;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andTextInput;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    .line 196
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    .line 198
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setId(I)V

    .line 200
    new-instance v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;-><init>(Lcom/rockstargames/hal/andTextInput$andTextInputImpl;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    return-void
.end method


# virtual methods
.method public isAttached()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    .line 234
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    .line 241
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZ)V

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 262
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 267
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$000(Lcom/rockstargames/hal/andTextInput;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 269
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 272
    return-void
.end method

.method public setMaxLength(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 276
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 277
    .local v0, "lengthFilter":Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v1}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->updateFilters()V

    .line 280
    return-void
.end method

.method public setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0
    .param p1, "packedImage"    # Lcom/rockstargames/hal/PackedImage;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    .line 251
    return-void
.end method

.method public updateFilters()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v1}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setFilters([Landroid/text/InputFilter;)V

    .line 286
    :cond_0
    return-void
.end method
