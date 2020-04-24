.class Lcom/rockstargames/gtasa/GTASA$1;
.super Ljava/lang/Object;
.source "GTASA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/gtasa/GTASA;->EnterSocialClub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/gtasa/GTASA;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtasa/GTASA;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/rockstargames/gtasa/GTASA$1;->this$0:Lcom/rockstargames/gtasa/GTASA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 353
    iget-object v1, p0, Lcom/rockstargames/gtasa/GTASA$1;->this$0:Lcom/rockstargames/gtasa/GTASA;

    iput-boolean v2, v1, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    .line 354
    sget-object v1, Lcom/rockstargames/gtasa/GTASA;->gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

    invoke-static {v1}, Lcom/rockstargames/hal/ActivityWrapper;->setActivity(Landroid/app/Activity;)V

    .line 355
    iget-object v1, p0, Lcom/rockstargames/gtasa/GTASA$1;->this$0:Lcom/rockstargames/gtasa/GTASA;

    invoke-virtual {v1}, Lcom/rockstargames/gtasa/GTASA;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 357
    .local v0, "d":Landroid/view/Display;
    iget-object v1, p0, Lcom/rockstargames/gtasa/GTASA$1;->this$0:Lcom/rockstargames/gtasa/GTASA;

    invoke-virtual {v1}, Lcom/rockstargames/gtasa/GTASA;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    :goto_1
    if-ne v1, v2, :cond_2

    .line 358
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/rockstargames/hal/ActivityWrapper;->runMain(II)V

    .line 365
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 357
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 360
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/rockstargames/hal/ActivityWrapper;->runMain(II)V

    goto :goto_2
.end method
