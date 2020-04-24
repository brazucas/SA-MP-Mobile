.class Lcom/wardrumstudios/utils/WarMedia$6;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->initializeDownloadUI()V
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
    .line 634
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$6;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$6;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarMedia;->access$000(Lcom/wardrumstudios/utils/WarMedia;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$6;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarMedia;->access$100(Lcom/wardrumstudios/utils/WarMedia;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 643
    :goto_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$6;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$6;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarMedia;->access$000(Lcom/wardrumstudios/utils/WarMedia;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v1}, Lcom/wardrumstudios/utils/WarMedia;->access$200(Lcom/wardrumstudios/utils/WarMedia;Z)V

    .line 647
    :goto_2
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$6;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarMedia;->access$100(Lcom/wardrumstudios/utils/WarMedia;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPauseButton error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
