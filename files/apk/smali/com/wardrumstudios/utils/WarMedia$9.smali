.class Lcom/wardrumstudios/utils/WarMedia$9;
.super Landroid/content/BroadcastReceiver;
.source "WarMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 710
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2, v4}, Lcom/wardrumstudios/utils/WarMedia;->access$402(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    :cond_2
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 720
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2, v5}, Lcom/wardrumstudios/utils/WarMedia;->access$402(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 724
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarMedia;->access$500(Lcom/wardrumstudios/utils/WarMedia;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2, v4}, Lcom/wardrumstudios/utils/WarMedia;->access$502(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 726
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarMedia;->access$600(Lcom/wardrumstudios/utils/WarMedia;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 727
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v2}, Lcom/wardrumstudios/utils/WarMedia;->resumeEvent()V

    .line 728
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v5}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 730
    :cond_3
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v2, v2, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    if-nez v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$9;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v2, v4}, Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayer(Z)V

    goto :goto_0
.end method
