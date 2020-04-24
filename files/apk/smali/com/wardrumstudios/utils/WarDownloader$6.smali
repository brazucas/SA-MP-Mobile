.class Lcom/wardrumstudios/utils/WarDownloader$6;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader;->DownloadDataCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarDownloader;->DisplaySplash()V

    .line 332
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->checkData:Z

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarDownloader;->ShowDownloadNetworkError()V

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->isWiFiAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarDownloader;->WiFiMessage()V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarDownloader;->DownloadDataMessage()V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$6;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->DoResumeEvent()V

    goto :goto_0
.end method
