.class Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;
.super Ljava/lang/Object;
.source "andTextInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andTextInput$andTextInputImpl;-><init>(Lcom/rockstargames/hal/andTextInput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

.field final synthetic val$this$0:Lcom/rockstargames/hal/andTextInput;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andTextInput$andTextInputImpl;Lcom/rockstargames/hal/andTextInput;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iput-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->val$this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 223
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-object v1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object v1, v1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget v1, v1, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andTextInput;->textChanged(ILjava/lang/String;)V

    goto :goto_0
.end method
