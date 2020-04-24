.class Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;
.super Ljava/lang/Object;
.source "WarDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDownloadFileList"
.end annotation


# instance fields
.field downloaded:Z

.field downloadsize:I

.field filename:Ljava/lang/String;

.field size:I

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;

.field unzipped:Z


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
