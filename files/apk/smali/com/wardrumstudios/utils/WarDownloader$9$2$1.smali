.class Lcom/wardrumstudios/utils/WarDownloader$9$2$1;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader$9$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/wardrumstudios/utils/WarDownloader$9$2;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader$9$2;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$9$2$1;->this$2:Lcom/wardrumstudios/utils/WarDownloader$9$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$9$2$1;->this$2:Lcom/wardrumstudios/utils/WarDownloader$9$2;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$9$2;->this$1:Lcom/wardrumstudios/utils/WarDownloader$9;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$9;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarDownloader;->DownloadData()Z

    .line 410
    return-void
.end method