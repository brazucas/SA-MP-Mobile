.class public Lcom/rockstargames/hal/andViewManager;
.super Ljava/lang/Object;
.source "andViewManager.java"


# static fields
.field public static root:Lcom/rockstargames/hal/andView;

.field private static spam_delay:J

.field private static uniqueID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/rockstargames/hal/andViewManager;->spam_delay:J

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andViewManager;->uniqueID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addViewToScreen(Lcom/rockstargames/hal/andView;)V
    .locals 3
    .param p0, "v"    # Lcom/rockstargames/hal/andView;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    sput-object p0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    .line 34
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static countViewsRecursive(Lcom/rockstargames/hal/andView;)I
    .locals 4
    .param p0, "v"    # Lcom/rockstargames/hal/andView;

    .prologue
    .line 125
    if-nez p0, :cond_1

    .line 126
    const/4 v1, 0x0

    .line 134
    :cond_0
    return v1

    .line 128
    :cond_1
    const/4 v1, 0x1

    .line 130
    .local v1, "count":I
    iget-object v3, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    .line 132
    .local v0, "c":Lcom/rockstargames/hal/andView;
    invoke-static {v0}, Lcom/rockstargames/hal/andViewManager;->countViewsRecursive(Lcom/rockstargames/hal/andView;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public static genID()I
    .locals 2

    .prologue
    .line 95
    sget v0, Lcom/rockstargames/hal/andViewManager;->uniqueID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/rockstargames/hal/andViewManager;->uniqueID:I

    return v0
.end method

.method public static getStaticCounts()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    sget-object v1, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    invoke-static {v1}, Lcom/rockstargames/hal/andViewManager;->countViewsRecursive(Lcom/rockstargames/hal/andView;)I

    move-result v0

    .line 109
    .local v0, "attachedViews":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andView;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " S: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andScreen;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andImageView;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andButton;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " L: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andLabel;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andTable;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andWebView;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andColourPicker;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static invalidateHierarchy()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "andViewManager"

    const-string v1, "Invalidating hierarchy!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->invalidateHierarchy()V

    .line 90
    :cond_0
    return-void
.end method

.method public static printLayout()V
    .locals 4

    .prologue
    .line 70
    sget-object v2, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    if-eqz v2, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, "time":J
    const-string v2, "andViewManager"

    const-string v3, "Printing handle hierarchy..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v2, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/rockstargames/hal/andView;->printHierarchy(I)V

    .line 77
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    sput-wide v2, Lcom/rockstargames/hal/andViewManager;->spam_delay:J

    .line 80
    :cond_0
    return-void
.end method

.method public static removeViewFromScreen(Lcom/rockstargames/hal/andView;)V
    .locals 2
    .param p0, "v"    # Lcom/rockstargames/hal/andView;

    .prologue
    .line 64
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public static setLandscape(Z)V
    .locals 2
    .param p0, "landscape"    # Z

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->setTransitioning(Z)V

    .line 101
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static staticEnterSocialClub()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/rockstargames/gtasa/GTASA;->staticEnterSocialClub()V

    .line 20
    return-void
.end method

.method public static staticExitSocialClub()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/rockstargames/gtasa/GTASA;->staticExitSocialClub()V

    .line 16
    return-void
.end method
