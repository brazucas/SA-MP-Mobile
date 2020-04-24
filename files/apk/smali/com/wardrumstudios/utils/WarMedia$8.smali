.class Lcom/wardrumstudios/utils/WarMedia$8;
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
    .line 660
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$8;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$8;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$100(Lcom/wardrumstudios/utils/WarMedia;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    .line 664
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$8;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$100(Lcom/wardrumstudios/utils/WarMedia;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 665
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$8;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$300(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    return-void
.end method
