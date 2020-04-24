.class Lcom/rockstargames/hal/andImageView$OverlayImageView;
.super Landroid/widget/ImageView;
.source "andImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayImageView"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80
    return-void
.end method
