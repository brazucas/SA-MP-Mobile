.class public Lcom/rockstargames/hal/andLabel$andLabelImpl;
.super Landroid/widget/TextView;
.source "andLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andLabelImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andLabel;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andLabel;)V
    .locals 1

    .prologue
    .line 327
    iput-object p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->this$0:Lcom/rockstargames/hal/andLabel;

    .line 328
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 329
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setTextSize(F)V

    .line 331
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setId(I)V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setHorizontallyScrolling(Z)V

    .line 333
    invoke-static {}, Lcom/rockstargames/hal/andLabel;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setTypeface(Landroid/graphics/Typeface;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 340
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->this$0:Lcom/rockstargames/hal/andLabel;

    iget-object v1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->this$0:Lcom/rockstargames/hal/andLabel;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andLabel;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andLabel;->onAttachedToWindow(I)V

    .line 341
    return-void
.end method
