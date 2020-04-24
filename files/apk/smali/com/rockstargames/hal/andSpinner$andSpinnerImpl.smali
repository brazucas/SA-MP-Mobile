.class public Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;
.super Landroid/widget/ProgressBar;
.source "andSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andSpinnerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andSpinner;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andSpinner;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;->this$0:Lcom/rockstargames/hal/andSpinner;

    .line 30
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;->setIndeterminate(Z)V

    .line 32
    return-void
.end method
