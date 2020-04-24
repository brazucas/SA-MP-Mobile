.class Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "WarDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "progressFileOutputStream"
.end annotation


# instance fields
.field public doCheck:Z

.field outputCount:I

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;


# direct methods
.method public constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;Ljava/io/File;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 541
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    .line 542
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->doCheck:Z

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->outputCount:I

    .line 545
    return-void
.end method


# virtual methods
.method public declared-synchronized write(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->BreakOut:Z

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 563
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 564
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->doCheck:Z

    if-eqz v0, :cond_1

    .line 565
    iget v0, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->outputCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->outputCount:I

    .line 566
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v1, v2}, Lcom/wardrumstudios/utils/WarDownloader;->updateProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :cond_1
    monitor-exit p0

    return-void
.end method
