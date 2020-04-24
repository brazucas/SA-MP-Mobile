.class public Lcom/rockstargames/hal/andView$andViewImpl;
.super Landroid/widget/ScrollView;
.source "andView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andView;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/rockstargames/hal/andView$andViewImpl;->this$0:Lcom/rockstargames/hal/andView;

    .line 372
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andView$andViewImpl;->setId(I)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andView$andViewImpl;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 381
    iget-object v0, p0, Lcom/rockstargames/hal/andView$andViewImpl;->this$0:Lcom/rockstargames/hal/andView;

    iget-object v1, p0, Lcom/rockstargames/hal/andView$andViewImpl;->this$0:Lcom/rockstargames/hal/andView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andView;->onAttachedToWindow(I)V

    .line 383
    return-void
.end method
