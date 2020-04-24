.class public Lcom/rockstargames/hal/andScreen;
.super Lcom/rockstargames/hal/andView;
.source "andScreen.java"


# static fields
.field static staticCount:I


# instance fields
.field private loadingScreenView:Landroid/view/View;

.field private ph:F

.field private pw:F

.field private px:F

.field private py:F

.field private screenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    .line 25
    sget v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    .line 26
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andScreen;
    .locals 3
    .param p0, "handle"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/rockstargames/hal/andScreen;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andScreen;-><init>(I)V

    .line 69
    .local v0, "a":Lcom/rockstargames/hal/andScreen;
    new-instance v1, Lcom/rockstargames/hal/andView$andViewImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/rockstargames/hal/andView$andViewImpl;-><init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andScreen;->setView(Landroid/view/View;)V

    .line 71
    return-object v0
.end method


# virtual methods
.method public Quit()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 158
    return-void
.end method

.method public addSubview(Lcom/rockstargames/hal/andView;)V
    .locals 0
    .param p1, "v"    # Lcom/rockstargames/hal/andView;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/rockstargames/hal/andView;->addSubview(Lcom/rockstargames/hal/andView;)V

    .line 77
    return-void
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    const-string v2, "andScreen"

    const-string v3, "Cleaning up a (loading) screen..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 133
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 135
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "vp":Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    iput-object v1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 142
    .restart local v0    # "vp":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_2

    .line 144
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 146
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "vp":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    :cond_2
    :goto_1
    return-void

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 150
    .restart local v0    # "vp":Landroid/view/ViewParent;
    :cond_4
    const-string v1, "andScreen"

    const-string v2, "Unable to remove screen from parent!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public createLoadingScreen(Ljava/lang/String;)V
    .locals 8
    .param p1, "screenName_"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 42
    const-string v3, "andScreen"

    const-string v4, "Inflating loading screen..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    const-string v4, "LSCustomsPage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "lscustomsloadingscreen"

    const-string v5, "layout"

    invoke-static {v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 52
    .local v2, "lscustomsloadingscreen":I
    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    .line 61
    .end local v2    # "lscustomsloadingscreen":I
    :goto_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 62
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 63
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "loadingscreen"

    const-string v5, "layout"

    invoke-static {v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "loadingscreen":I
    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    sget v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    .line 31
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 32
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    .line 86
    add-float/2addr p1, p3

    .line 88
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 90
    iput p1, p0, Lcom/rockstargames/hal/andScreen;->px:F

    .line 91
    iput p2, p0, Lcom/rockstargames/hal/andScreen;->py:F

    .line 92
    iput p3, p0, Lcom/rockstargames/hal/andScreen;->pw:F

    .line 93
    iput p4, p0, Lcom/rockstargames/hal/andScreen;->ph:F

    .line 95
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    float-to-int v2, p3

    float-to-int v3, p4

    float-to-int v4, p1

    float-to-int v5, p3

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 100
    :cond_0
    return-void
.end method

.method public showLoadingGrid(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andScreen;->createLoadingScreen(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 112
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/rockstargames/hal/andScreen;->pw:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rockstargames/hal/andScreen;->ph:F

    float-to-int v3, v3

    iget v4, p0, Lcom/rockstargames/hal/andScreen;->px:F

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/andScreen;->cleanup()V

    goto :goto_0
.end method
