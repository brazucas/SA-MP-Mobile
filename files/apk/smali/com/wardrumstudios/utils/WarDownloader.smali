.class public Lcom/wardrumstudios/utils/WarDownloader;
.super Ljava/lang/Object;
.source "WarDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;,
        Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;
    }
.end annotation


# instance fields
.field public ACCEPT_EULA_BUTTON:Ljava/lang/String;

.field public ADDITIONAL_DATA_NEEDED:Ljava/lang/String;

.field public APPLICATION_EXITING_TEXT:Ljava/lang/String;

.field BreakOut:Z

.field public CANCEL_BUTTON:Ljava/lang/String;

.field public CANNOT_DOWNLOAD_LL_DATA:Ljava/lang/String;

.field public CANNOT_WRITE_DATA:Ljava/lang/String;

.field CompressionType:I

.field public DATA_ACCESS_ERROR:Ljava/lang/String;

.field public DATA_ACCESS_ERROR_MESSAGE:Ljava/lang/String;

.field public DATA_INACCESSIBLE:Ljava/lang/String;

.field public DECLARE_EULA_BUTTON:Ljava/lang/String;

.field public DOWNLOADING_FILES_TEXT:Ljava/lang/String;

.field public DOWNLOAD_COMPLETE:Ljava/lang/String;

.field DoDownloadTest:Z

.field final DoLog:Z

.field DownloadButUseLocalLocation:Z

.field final DownloadCheckVersion:Ljava/lang/String;

.field DownloadFailedMessage:I

.field DownloadProgress:Landroid/app/ProgressDialog;

.field public ESTIMATED_COMPLETION_TEXT:Ljava/lang/String;

.field public EULA1:Ljava/lang/String;

.field public EULA2:Ljava/lang/String;

.field public EULA3:Ljava/lang/String;

.field public EULA4:Ljava/lang/String;

.field public EXIT_BUTTON:Ljava/lang/String;

.field public EXPANDING_AUDIO_FILES:Ljava/lang/String;

.field public FATAL_AUDIO_EXTRACTION:Ljava/lang/String;

.field public FILES_TEXT:Ljava/lang/String;

.field IOWriteError:Z

.field IsDisplayingSpash:Z

.field public LICENSE_ERROR:Ljava/lang/String;

.field public LICENSE_ERROR_MESSAGE:Ljava/lang/String;

.field public LOADING_MESSAGE:Ljava/lang/String;

.field public MINUTES_TEXT:Ljava/lang/String;

.field public NEXT_BUTTON:Ljava/lang/String;

.field public NO_NETWORK:Ljava/lang/String;

.field public NO_WIFI:Ljava/lang/String;

.field public NumThreadsUnzipping:I

.field final OldDownloadCheckVersion:Ljava/lang/String;

.field public PLEASE_WAIT_TEXT:Ljava/lang/String;

.field ProgressInited:Z

.field public RETURN_TEXT:Ljava/lang/String;

.field public SECONDS_TEXT:Ljava/lang/String;

.field public SpashIcon:I

.field StartTime:J

.field final TAG:Ljava/lang/String;

.field protected UseAPKData:Z

.field public UseFTP:Z

.field UseLocalData:Z

.field public UseMediaVault:Z

.field public UseWardrumData:Z

.field final VerifyCheckVersion:Ljava/lang/String;

.field private final WardrumFtpdownloadLocation:Ljava/lang/String;

.field private final WardrumdownloadLocation:Ljava/lang/String;

.field amountDownloaded:J

.field amountReallyDownloaded:J

.field baseRootDirectory:Ljava/lang/String;

.field buf:[B

.field checkData:Z

.field checkModels:[Ljava/lang/String;

.field public compressionScheme:I

.field currentDownloadingFile:Ljava/lang/String;

.field currentRollingAmount:[J

.field currentRollingStart:[J

.field currentRollingTime:[J

.field downloadBuffer:[B

.field downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

.field private downloadLocation:Ljava/lang/String;

.field downloadTime:J

.field public downloadTitle:Ljava/lang/String;

.field filesDownloaded:I

.field filesToDownload:I

.field public filesUnzipped:I

.field firstTry:Z

.field ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

.field justCheckImg:Z

.field lastUpdateBytes:I

.field public legalStartTime:J

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field mNotifyManager:Landroid/app/NotificationManager;

.field mv:Lcom/wardrumstudios/utils/MediaVault;

.field myWarDownloader:Lcom/wardrumstudios/utils/WarDownloader;

.field myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

.field notifyMessage:Ljava/lang/String;

.field numOfDownloadFiles:I

.field realTimeToDownload:J

.field rollIndex:I

.field splashHolder:Landroid/view/SurfaceHolder;

.field splashViewCreated:Z

.field timeToDownload:J

.field totalToDownload:J

.field private try1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->UseAPKData:Z

    .line 95
    const-string v0, "DownloadManager"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->TAG:Ljava/lang/String;

    .line 97
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->NumThreadsUnzipping:I

    .line 98
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesUnzipped:I

    .line 100
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->UseLocalData:Z

    .line 101
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    .line 103
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadTime:J

    .line 104
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->ProgressInited:Z

    .line 105
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->BreakOut:Z

    .line 107
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->StartTime:J

    .line 108
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;

    .line 110
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->UseFTP:Z

    .line 111
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarDownloader;->UseMediaVault:Z

    .line 113
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadButUseLocalLocation:Z

    .line 114
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->UseWardrumData:Z

    .line 116
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->DoDownloadTest:Z

    .line 118
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->DoLog:Z

    .line 120
    const-string v0, "Downloadv8"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->OldDownloadCheckVersion:Ljava/lang/String;

    .line 121
    const-string v0, "Downloadv9"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadCheckVersion:Ljava/lang/String;

    .line 122
    const-string v0, "VerifyV1"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->VerifyCheckVersion:Ljava/lang/String;

    .line 124
    const-string v0, "/mnt/sdcard/GTA3/"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->baseRootDirectory:Ljava/lang/String;

    .line 126
    const-string v0, "http://wardrumstudios.com/MobileDownloads/gta3/"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->WardrumdownloadLocation:Ljava/lang/String;

    .line 127
    const-string v0, "MobileDownloads/gta3"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->WardrumFtpdownloadLocation:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadLocation:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->try1:Ljava/lang/String;

    .line 138
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->IsDisplayingSpash:Z

    .line 139
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->SpashIcon:I

    .line 140
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->legalStartTime:J

    .line 141
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarDownloader:Lcom/wardrumstudios/utils/WarDownloader;

    .line 143
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    .line 144
    const-string v0, "Vice City"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadTitle:Ljava/lang/String;

    .line 234
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarDownloader;->checkData:Z

    .line 236
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->splashViewCreated:Z

    .line 264
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "models/gta3_unc.img"

    aput-object v1, v0, v3

    const-string v1, "models/gta3_dxt.img"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "models/gta3_atc.img"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "models/gta3_pvr.img"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->checkModels:[Ljava/lang/String;

    .line 296
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->justCheckImg:Z

    .line 456
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->IOWriteError:Z

    .line 467
    iput v7, p0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadFailedMessage:I

    .line 571
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    .line 614
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    .line 616
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->mv:Lcom/wardrumstudios/utils/MediaVault;

    .line 644
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarDownloader;->firstTry:Z

    .line 807
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->amountReallyDownloaded:J

    .line 808
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    .line 809
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    .line 810
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->realTimeToDownload:J

    .line 811
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    .line 812
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesDownloaded:I

    .line 813
    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    .line 814
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    .line 818
    iput v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->notifyMessage:Ljava/lang/String;

    .line 944
    iput v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    .line 987
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    return-void
.end method

.method private GetVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tval"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v3, ""

    .line 632
    .local v3, "val":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 633
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 634
    .local v1, "t":C
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 635
    .local v2, "v":I
    sub-int v4, v1, v2

    int-to-char v1, v4

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 632
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 639
    .end local v1    # "t":C
    .end local v2    # "v":I
    :cond_0
    return-object v3
.end method

.method static getTimeParameters(Ljava/lang/String;)Lcom/wardrumstudios/utils/MediaVaultRequest;
    .locals 8
    .param p0, "URL"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 622
    .local v2, "unixNow":J
    const-wide/16 v4, 0xe10

    sub-long/2addr v2, v4

    .line 624
    new-instance v0, Lcom/wardrumstudios/utils/MediaVaultRequest;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/MediaVaultRequest;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, "options":Lcom/wardrumstudios/utils/MediaVaultRequest;
    invoke-virtual {v0, v2, v3}, Lcom/wardrumstudios/utils/MediaVaultRequest;->setStartTime(J)V

    .line 626
    const-wide/16 v4, 0x1c20

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/wardrumstudios/utils/MediaVaultRequest;->setEndTime(J)V

    .line 627
    return-object v0
.end method


# virtual methods
.method ChangeMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1260
    move-object v0, p1

    .line 1262
    .local v0, "mess":Ljava/lang/String;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    if-eqz v1, :cond_0

    const-string v1, "Done Downloading"

    if-ne v0, v1, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v2, Lcom/wardrumstudios/utils/WarDownloader$13;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarDownloader$13;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1271
    :goto_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/wardrumstudios/utils/WarDownloader$14;

    invoke-direct {v2, p0, v0}, Lcom/wardrumstudios/utils/WarDownloader$14;-><init>(Lcom/wardrumstudios/utils/WarDownloader;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1329
    return-void
.end method

.method CheckAndCreate(Ljava/lang/String;I)I
    .locals 12
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "filesize"    # I

    .prologue
    const/4 v6, 0x0

    .line 516
    const/4 v0, 0x0

    .line 518
    .local v0, "Result":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 520
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 521
    :cond_0
    const/4 v6, 0x1

    .line 529
    :goto_0
    return v6

    .line 524
    :cond_1
    const/16 v7, 0x2f

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 525
    .local v3, "last":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "dir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 529
    .local v5, "ret":Z
    goto :goto_0
.end method

.method CheckAndDownload()V
    .locals 4

    .prologue
    .line 299
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UseAPKData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->UseAPKData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->UseAPKData:Z

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v2, "DownloadCheckVersion"

    const-string v3, "Downloadv9"

    invoke-virtual {v1, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarMedia;->DoResumeEvent()V

    .line 321
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->justCheckImg:Z

    if-nez v1, :cond_1

    .line 306
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->baseRootDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gta3.set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "gtaset":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 313
    .end local v0    # "gtaset":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarDownloader;->CheckForDrive()V

    .line 315
    :goto_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarMedia;->HasGLExtensions:Z

    if-nez v1, :cond_2

    .line 316
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "wait for HasGLExtensions"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarDownloader;->DownloadDataCheck()V

    goto :goto_0
.end method

.method public CheckCompressionFile()Z
    .locals 7

    .prologue
    .line 273
    const/4 v2, 0x1

    .line 274
    .local v2, "ret":Z
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarDownloader;->CheckToSkipTexture(Ljava/lang/String;)Z

    .line 275
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check for compression "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    iget v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    if-ltz v3, :cond_1

    .line 277
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->baseRootDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->checkModels:[Ljava/lang/String;

    iget v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    const/4 v2, 0x0

    .line 280
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->checkModels:[Ljava/lang/String;

    iget v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist for compression type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_0

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 284
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->baseRootDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->checkModels:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 286
    const/4 v2, 0x0

    .line 287
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->checkModels:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist for compression type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method CheckForDrive()V
    .locals 2

    .prologue
    .line 458
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->baseRootDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "f":Ljava/io/File;
    return-void
.end method

.method CheckToSkipTexture(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 946
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 947
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_2

    .line 948
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No glextensions - download all"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 976
    :cond_1
    :goto_0
    return v0

    .line 951
    :cond_2
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    if-nez v2, :cond_7

    .line 952
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_EXT_texture_compression_dxt1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    .line 965
    :cond_3
    :goto_1
    const-string v2, "DXT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 966
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    if-ne v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 953
    :cond_4
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_AMD_compressed_ATC_texture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 954
    :cond_5
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_IMG_texture_compression_pvrtc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 955
    :cond_6
    iput v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 956
    :cond_7
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    if-ne v2, v0, :cond_3

    .line 957
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_EXT_texture_compression_dxt1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 958
    :cond_8
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_AMD_compressed_ATC_texture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 959
    :cond_9
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_IMG_texture_compression_pvrtc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 960
    :cond_a
    iput v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 967
    :cond_b
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    if-ne v2, v0, :cond_c

    const-string v2, "ATC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 968
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    if-ne v2, v5, :cond_1

    move v0, v1

    goto/16 :goto_0

    .line 969
    :cond_c
    const-string v2, "PVR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 970
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    if-ne v2, v4, :cond_1

    move v0, v1

    goto/16 :goto_0

    .line 971
    :cond_d
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    if-nez v2, :cond_e

    const-string v2, "ETC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 972
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_0

    .line 973
    :cond_e
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    if-ne v2, v0, :cond_f

    const-string v2, "UNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 974
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    if-nez v2, :cond_1

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 976
    goto/16 :goto_0
.end method

.method ClearDownloadVals()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 821
    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->amountReallyDownloaded:J

    .line 822
    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    .line 823
    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    .line 824
    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->realTimeToDownload:J

    .line 825
    iput v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    .line 826
    iput v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesDownloaded:I

    .line 827
    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    .line 828
    iput v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    .line 829
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    .line 830
    return-void
.end method

.method ClearSplash()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Lcom/wardrumstudios/utils/WarDownloader$5;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarDownloader$5;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method DisplaySplash()V
    .locals 6

    .prologue
    .line 250
    :try_start_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v2, "myParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/wardrumstudios/utils/WarMedia;->splashView:Landroid/view/View;

    .line 252
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarMedia;->splashView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/wardrumstudios/utils/WarMedia;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v3}, Lcom/wardrumstudios/utils/WarMedia;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "SPLASH1.PNG"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->splashView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "myParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->IsDisplayingSpash:Z

    .line 261
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->splashView:Landroid/view/View;

    iget v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->SpashIcon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method DownloadAllFiles()Z
    .locals 30

    .prologue
    .line 1071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    .line 1072
    .local v14, "mContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    .line 1073
    .local v11, "fWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    const/4 v4, 0x0

    .line 1076
    .local v4, "Result":Z
    const/16 v23, 0x0

    .line 1078
    .local v23, "wakeLock":Landroid/os/PowerManager$WakeLock;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->handler:Landroid/os/Handler;

    move-object/from16 v24, v0

    new-instance v25, Lcom/wardrumstudios/utils/WarDownloader$12;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v14}, Lcom/wardrumstudios/utils/WarDownloader$12;-><init>(Lcom/wardrumstudios/utils/WarDownloader;Lcom/wardrumstudios/utils/WarMedia;Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1116
    const/16 v22, 0x0

    .line 1117
    .local v22, "value":I
    const/16 v20, 0x0

    .line 1118
    .local v20, "total":I
    const/16 v21, 0x0

    .line 1119
    .local v21, "totalKbytes":I
    const/16 v17, -0x1

    .line 1122
    .local v17, "ret":I
    const/4 v13, 0x1

    .line 1123
    .local v13, "firstRead":Z
    const/4 v4, 0x1

    .line 1124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->DoDownloadTest:Z

    move/from16 v24, v0

    if-nez v24, :cond_e

    .line 1127
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wardrumstudios/utils/WarDownloader;->StartTime:J

    .line 1128
    const-string v24, "power"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 1129
    .local v16, "pm":Landroid/os/PowerManager;
    const/16 v24, 0x1

    const-string v25, "OSWrapper"

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    .line 1130
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarDownloader;->ReadFilelist()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v24

    if-nez v24, :cond_1

    .line 1134
    const/16 v17, -0x1

    .line 1135
    const/16 v24, 0x0

    .line 1231
    if-eqz v23, :cond_0

    .line 1232
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1233
    const/16 v23, 0x0

    .line 1256
    .end local v16    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return v24

    .line 1137
    .restart local v16    # "pm":Landroid/os/PowerManager;
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarDownloader;->UpdateDownloadList()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1142
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ProgressInited:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1144
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOADING_FILES_TEXT:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ". "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->PLEASE_WAIT_TEXT:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarDownloader;->ChangeMessage(Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x5

    cmp-long v24, v24, v26

    if-lez v24, :cond_4

    .line 1146
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOADING_FILES_TEXT:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->FILES_TEXT:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " MB). "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->PLEASE_WAIT_TEXT:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarDownloader;->ChangeMessage(Ljava/lang/String;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1151
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOADING_FILES_TEXT:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->FILES_TEXT:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " MB). "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->PLEASE_WAIT_TEXT:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mNotifyManager:Landroid/app/NotificationManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1158
    :cond_4
    const/4 v15, 0x0

    .line 1159
    .local v15, "numFiles":I
    const/4 v12, 0x0

    .local v12, "filenum":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_c

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->downloaded:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    .line 1161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1163
    .local v8, "curTime":J
    const/16 v17, 0x0

    .line 1164
    const/4 v5, 0x0

    .line 1165
    .local v5, "count":I
    const/4 v7, 0x1

    .local v7, "doUnzipFile":Z
    move v6, v5

    .line 1166
    .end local v5    # "count":I
    .local v6, "count":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 1167
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    const/16 v24, 0x3

    move/from16 v0, v24

    if-le v6, v0, :cond_5

    .line 1168
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed Downloading 3 times read "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " expected "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1172
    const/16 v24, 0x0

    .line 1231
    if-eqz v23, :cond_0

    .line 1232
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1233
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1174
    :cond_5
    if-lez v5, :cond_6

    .line 1175
    :try_start_3
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Download "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " failed size "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " expected "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1177
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarDownloader;->CheckToSkipTexture(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1179
    const/16 v17, -0x3

    .line 1192
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v18, v24, v8

    .line 1193
    .local v18, "timeDiff":J
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-nez v24, :cond_7

    .line 1194
    const-wide/16 v18, 0x1

    .line 1198
    :cond_7
    if-eqz v17, :cond_8

    const/16 v24, -0x3

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 1199
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    move/from16 v17, v0

    .line 1200
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/wardrumstudios/utils/WarDownloader;->updateProgress(IIZ)V

    .line 1207
    :goto_4
    const/16 v24, -0x3

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->unzipped:Z

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->downloaded:Z

    .line 1211
    :cond_9
    const/16 v24, -0x3

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    .line 1212
    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->unzipped:Z

    .line 1213
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->downloaded:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1216
    :cond_b
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 1231
    .end local v5    # "count":I
    .end local v7    # "doUnzipFile":Z
    .end local v8    # "curTime":J
    .end local v12    # "filenum":I
    .end local v15    # "numFiles":I
    .end local v18    # "timeDiff":J
    :cond_c
    :goto_5
    if-eqz v23, :cond_d

    .line 1232
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1233
    const/16 v23, 0x0

    .line 1237
    .end local v16    # "pm":Landroid/os/PowerManager;
    :cond_d
    :goto_6
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    const/4 v4, 0x1

    .line 1239
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->UseFTP:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 1241
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 1242
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1246
    :cond_f
    :goto_8
    if-eqz v4, :cond_16

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/wardrumstudios/utils/WarDownloader;->VerifyData()Z

    move-result v24

    if-nez v24, :cond_15

    .line 1249
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->DownloadFailedMessage:I

    .line 1250
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1183
    .restart local v5    # "count":I
    .restart local v7    # "doUnzipFile":Z
    .restart local v8    # "curTime":J
    .restart local v12    # "filenum":I
    .restart local v15    # "numFiles":I
    .restart local v16    # "pm":Landroid/os/PowerManager;
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/wardrumstudios/utils/WarDownloader;->downloadFile(Ljava/lang/String;IZ)I

    move-result v17

    .line 1184
    const/16 v24, -0x2

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 1185
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Download "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " already exists"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1186
    const/4 v7, 0x0

    .line 1187
    const/16 v17, 0x0

    .line 1188
    goto/16 :goto_3

    .line 1202
    .restart local v18    # "timeDiff":J
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->realTimeToDownload:J

    move-wide/from16 v24, v0

    add-long v24, v24, v18

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wardrumstudios/utils/WarDownloader;->realTimeToDownload:J

    .line 1203
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadTime:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    .line 1204
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountReallyDownloaded:J

    move-wide/from16 v24, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wardrumstudios/utils/WarDownloader;->amountReallyDownloaded:J

    .line 1205
    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/wardrumstudios/utils/WarDownloader;->updateProgress(IIZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 1222
    .end local v5    # "count":I
    .end local v7    # "doUnzipFile":Z
    .end local v8    # "curTime":J
    .end local v12    # "filenum":I
    .end local v15    # "numFiles":I
    .end local v18    # "timeDiff":J
    :catch_0
    move-exception v10

    .line 1223
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1224
    const/16 v17, -0x1

    goto/16 :goto_5

    .line 1159
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v12    # "filenum":I
    .restart local v15    # "numFiles":I
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1225
    .end local v12    # "filenum":I
    .end local v15    # "numFiles":I
    :catchall_0
    move-exception v24

    :try_start_7
    throw v24
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1227
    .end local v16    # "pm":Landroid/os/PowerManager;
    :catch_1
    move-exception v10

    .line 1228
    .restart local v10    # "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1229
    const/16 v17, -0x1

    .line 1231
    if-eqz v23, :cond_d

    .line 1232
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1233
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 1231
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v24

    if-eqz v23, :cond_13

    .line 1232
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1233
    const/16 v23, 0x0

    :cond_13
    throw v24

    .line 1237
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1252
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v24, v0

    const-string v25, "DownloadCheckVersion"

    const-string v26, "Downloadv9"

    invoke-virtual/range {v24 .. v26}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v24, "Done Downloading"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarDownloader;->ChangeMessage(Ljava/lang/String;)V

    .line 1255
    :cond_16
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    move/from16 v24, v4

    .line 1256
    goto/16 :goto_0

    .line 1243
    :catch_2
    move-exception v24

    goto/16 :goto_8

    .restart local v5    # "count":I
    .restart local v7    # "doUnzipFile":Z
    .restart local v8    # "curTime":J
    .restart local v12    # "filenum":I
    .restart local v15    # "numFiles":I
    .restart local v16    # "pm":Landroid/os/PowerManager;
    :cond_17
    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    goto/16 :goto_2

    :cond_18
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto/16 :goto_3
.end method

.method DownloadData()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarDownloader;->DownloadAllFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iput-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->buf:[B

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->ClearSystemNotification()V

    .line 493
    const/4 v0, 0x1

    return v0

    .line 473
    :cond_0
    iput-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->buf:[B

    .line 474
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Lcom/wardrumstudios/utils/WarDownloader$10;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarDownloader$10;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method DownloadDataCheck()V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lcom/wardrumstudios/utils/WarDownloader$6;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarDownloader$6;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    .line 342
    .local v0, "me":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v1, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method DownloadDataMessage()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Lcom/wardrumstudios/utils/WarDownloader$9;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarDownloader$9;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method GetCompressionType()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 921
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 922
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 923
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No glextensions - download all"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 939
    :goto_0
    return v0

    .line 926
    :cond_0
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    if-nez v2, :cond_5

    .line 927
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_EXT_texture_compression_dxt1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    :cond_1
    :goto_1
    move v0, v1

    .line 939
    goto :goto_0

    .line 928
    :cond_2
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_AMD_compressed_ATC_texture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 929
    :cond_3
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_IMG_texture_compression_pvrtc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 930
    :cond_4
    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 931
    :cond_5
    iget v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->compressionScheme:I

    if-ne v2, v1, :cond_1

    .line 932
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_EXT_texture_compression_dxt1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 933
    :cond_6
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_AMD_compressed_ATC_texture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x2

    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 934
    :cond_7
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarMedia;->glExtensions:Ljava/lang/String;

    const-string v3, "GL_IMG_texture_compression_pvrtc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput v4, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1

    .line 935
    :cond_8
    iput v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->CompressionType:I

    goto :goto_1
.end method

.method MakeProgressDialog()Landroid/app/ProgressDialog;
    .locals 5

    .prologue
    .line 802
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v2, ""

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->LOADING_MESSAGE:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 803
    .local v0, "dialog":Landroid/app/ProgressDialog;
    return-object v0
.end method

.method ReadFilelist()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 994
    :try_start_0
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v8}, Lcom/wardrumstudios/utils/WarMedia;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "filelist.txt"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 995
    .local v2, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 997
    .local v1, "input":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 998
    .local v4, "lineCount":I
    const/4 v5, 0x0

    .line 999
    .local v5, "numFilesToDownload":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1001
    if-nez v4, :cond_0

    .line 1002
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    .line 1003
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    .line 1004
    iget v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    new-array v8, v8, [Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    iput-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    .line 1030
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1007
    :cond_0
    if-ne v4, v6, :cond_1

    .line 1008
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1034
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lineCount":I
    .end local v5    # "numFilesToDownload":I
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR in ReadFilelist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v6, v7

    .line 1037
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return v6

    .line 1010
    .restart local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lineCount":I
    .restart local v5    # "numFilesToDownload":I
    :cond_1
    add-int/lit8 v8, v4, -0x2

    :try_start_1
    iget v9, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    if-le v8, v9, :cond_3

    .line 1011
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error lineCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " filesToDownload "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1032
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    .line 1015
    :cond_3
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    new-instance v9, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    invoke-direct {v9, p0}, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    aput-object v9, v8, v5

    .line 1016
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v8, v8, v5

    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    .line 1017
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v8, v8, v5

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    .line 1018
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/wardrumstudios/utils/WarDownloader;->CheckToSkipTexture(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1019
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v8, v8, v5

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->downloaded:Z

    .line 1020
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v8, v8, v5

    const/4 v9, 0x0

    iput v9, v8, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->downloadsize:I

    .line 1021
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v9, v8, v5

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    const-string v10, ".zip"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v6

    :goto_3
    iput-boolean v8, v9, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->unzipped:Z

    .line 1023
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    move v8, v7

    .line 1021
    goto :goto_3

    .line 1026
    :cond_5
    iget v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    .line 1027
    iget-wide v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    iget-object v10, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v10, v10, v5

    iget v10, v10, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    div-int/lit16 v10, v10, 0x400

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public SetKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader;->try1:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public SetLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "loc"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadLocation:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public SetWarMedia(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0
    .param p1, "warMedia"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    .line 158
    return-void
.end method

.method ShowDownloadNetworkError()V
    .locals 4

    .prologue
    .line 346
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    .line 347
    .local v1, "myActivity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->NO_NETWORK:Ljava/lang/String;

    .line 348
    .local v0, "fTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v3, Lcom/wardrumstudios/utils/WarDownloader$7;

    invoke-direct {v3, p0, v0}, Lcom/wardrumstudios/utils/WarDownloader$7;-><init>(Lcom/wardrumstudios/utils/WarDownloader;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method ShowEULA()V
    .locals 12

    .prologue
    .line 162
    :goto_0
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v8, v8, Lcom/wardrumstudios/utils/WarMedia;->HasGLExtensions:Z

    if-nez v8, :cond_0

    .line 164
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v10, v11}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v9, "DownloadCheckVersion"

    invoke-virtual {v8, v9}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "version":Ljava/lang/String;
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v9, "VerifyCheckVersion"

    invoke-virtual {v8, v9}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "verifyDownload":Ljava/lang/String;
    const-string v8, "Downloadv9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 173
    .local v3, "dataExists":Z
    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarDownloader;->VerifyData()Z

    move-result v1

    .line 175
    .local v1, "IsVerified":Z
    if-nez v1, :cond_2

    .line 176
    const/4 v3, 0x0

    .line 183
    .end local v1    # "IsVerified":Z
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 184
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v8}, Lcom/wardrumstudios/utils/WarMedia;->DoResumeEvent()V

    .line 231
    :goto_2
    return-void

    .line 178
    .restart local v1    # "IsVerified":Z
    :cond_2
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v9, "DownloadCheckVersion"

    const-string v10, "Downloadv9"

    invoke-virtual {v8, v9, v10}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v9, "VerifyCheckVersion"

    const-string v10, "VerifyV1"

    invoke-virtual {v8, v9, v10}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    .end local v1    # "IsVerified":Z
    :cond_3
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v9, "VerifyCheckVersion"

    invoke-virtual {v8, v9}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "isEULAAccepted":Ljava/lang/String;
    const-string v8, "Yes"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 190
    new-instance v5, Lcom/wardrumstudios/utils/WarDownloader$1;

    invoke-direct {v5, p0}, Lcom/wardrumstudios/utils/WarDownloader$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    .line 195
    .local v5, "me":Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v8, v5}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 199
    .end local v5    # "me":Ljava/lang/Runnable;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarDownloader;->EULA2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarDownloader;->EULA4:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "Eula":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarDownloader;->ACCEPT_EULA_BUTTON:Ljava/lang/String;

    new-instance v10, Lcom/wardrumstudios/utils/WarDownloader$3;

    invoke-direct {v10, p0}, Lcom/wardrumstudios/utils/WarDownloader$3;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarDownloader;->DECLARE_EULA_BUTTON:Ljava/lang/String;

    new-instance v10, Lcom/wardrumstudios/utils/WarDownloader$2;

    invoke-direct {v10, p0}, Lcom/wardrumstudios/utils/WarDownloader$2;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 223
    .local v2, "alert":Landroid/app/AlertDialog$Builder;
    const-string v8, "EULA"

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v9, Lcom/wardrumstudios/utils/WarDownloader$4;

    invoke-direct {v9, p0, v2}, Lcom/wardrumstudios/utils/WarDownloader$4;-><init>(Lcom/wardrumstudios/utils/WarDownloader;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v8, v9}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method

.method ShowErrorMessage(I)V
    .locals 2
    .param p1, "err"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Lcom/wardrumstudios/utils/WarDownloader$11;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarDownloader$11;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method UpdateDownloadList()V
    .locals 10

    .prologue
    .line 1041
    const/4 v5, 0x0

    .line 1042
    .local v5, "totalSize":I
    const/4 v3, 0x0

    .line 1043
    .local v3, "numFiles":I
    const/4 v2, 0x0

    .local v2, "filenum":I
    :goto_0
    iget v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    if-ge v2, v6, :cond_2

    .line 1044
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v7, v7, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1047
    .local v4, "to":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarDownloader;->CheckToSkipTexture(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1049
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    int-to-long v6, v6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1052
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->downloaded:Z

    .line 1043
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1054
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v6

    .line 1055
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1058
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    add-int/2addr v5, v6

    .line 1060
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1063
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v4    # "to":Ljava/lang/String;
    :cond_2
    iput v3, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    .line 1064
    div-int/lit16 v6, v5, 0x400

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    .line 1065
    const/4 v6, 0x0

    iput v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->filesDownloaded:I

    .line 1067
    return-void
.end method

.method VerifyData()Z
    .locals 10

    .prologue
    .line 429
    const/4 v4, 0x1

    .line 430
    .local v4, "verify":Z
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarDownloader;->ReadFilelist()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 431
    const/4 v2, 0x0

    .local v2, "filenum":I
    :goto_0
    iget v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->numOfDownloadFiles:I

    if-ge v2, v5, :cond_2

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "to":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarDownloader;->CheckToSkipTexture(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarDownloader;->downloadFileList:[Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/wardrumstudios/utils/WarDownloader$CDownloadFileList;->size:I

    int-to-long v6, v5

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 431
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    .line 451
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filenum":I
    .end local v3    # "to":Ljava/lang/String;
    :cond_2
    :goto_1
    return v4

    .line 445
    .restart local v2    # "filenum":I
    .restart local v3    # "to":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 447
    goto :goto_1
.end method

.method WiFiMessage()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Lcom/wardrumstudios/utils/WarDownloader$8;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarDownloader$8;-><init>(Lcom/wardrumstudios/utils/WarDownloader;)V

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method public downloadFile(Ljava/lang/String;IZ)I
    .locals 30
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filesize"    # I
    .param p3, "check"    # Z

    .prologue
    .line 646
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->UseFTP:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 649
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->UseWardrumData:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 650
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadLocation:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 654
    .local v11, "from":Ljava/lang/String;
    :goto_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 656
    .local v19, "to":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 657
    .local v20, "startTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarDownloader;->CheckAndCreate(Ljava/lang/String;I)I

    move-result v8

    .line 658
    .local v8, "exists":I
    if-eqz p3, :cond_1

    if-lez v8, :cond_1

    .line 660
    const/16 v18, -0x2

    .line 797
    .end local v8    # "exists":I
    .end local v11    # "from":Ljava/lang/String;
    .end local v19    # "to":Ljava/lang/String;
    .end local v20    # "startTime":J
    :goto_1
    return v18

    .line 652
    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "from":Ljava/lang/String;
    goto :goto_0

    .line 662
    .restart local v8    # "exists":I
    .restart local v19    # "to":Ljava/lang/String;
    .restart local v20    # "startTime":J
    :cond_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 665
    new-instance v27, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct/range {v27 .. v27}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    invoke-virtual/range {v27 .. v28}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    const-string v28, "wardrumstudios.com"

    invoke-virtual/range {v27 .. v28}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    .line 668
    const-string v26, "wargtavc"

    .line 669
    .local v26, "user":Ljava/lang/String;
    const-string v16, "Gt56kj9Dl4f6B!"

    .line 670
    .local v16, "pass":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 671
    .local v17, "ret":Z
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ftp login "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lorg/apache/commons/net/ftp/FTPClient;->setKeepAlive(Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    const/high16 v28, 0x100000

    invoke-virtual/range {v27 .. v28}, Lorg/apache/commons/net/ftp/FTPClient;->setBufferSize(I)V

    .line 678
    .end local v16    # "pass":Ljava/lang/String;
    .end local v17    # "ret":Z
    .end local v26    # "user":Ljava/lang/String;
    :cond_2
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ftp download "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 679
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v9, "file":Ljava/io/File;
    new-instance v10, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v9}, Lcom/wardrumstudios/utils/WarDownloader$progressFileOutputStream;-><init>(Lcom/wardrumstudios/utils/WarDownloader;Ljava/io/File;)V

    .line 681
    .local v10, "fos":Ljava/io/OutputStream;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "fos "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 685
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->ftpClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v10}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v13

    .line 686
    .local v13, "ftpRet":Z
    if-nez v13, :cond_3

    .line 687
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v28, "ftpRet failed "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 694
    :cond_3
    :try_start_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 697
    if-lez p2, :cond_4

    move/from16 v18, p2

    .line 698
    .local v18, "retSize":I
    :goto_2
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ret "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 700
    .end local v8    # "exists":I
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/OutputStream;
    .end local v11    # "from":Ljava/lang/String;
    .end local v13    # "ftpRet":Z
    .end local v18    # "retSize":I
    .end local v19    # "to":Ljava/lang/String;
    .end local v20    # "startTime":J
    :catch_0
    move-exception v7

    .line 701
    .local v7, "ex":Ljava/io/FileNotFoundException;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "FileNotFoundException "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->IOWriteError:Z

    .line 707
    .end local v7    # "ex":Ljava/io/FileNotFoundException;
    :goto_3
    const/16 v18, -0x1

    goto/16 :goto_1

    .line 689
    .restart local v8    # "exists":I
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/OutputStream;
    .restart local v11    # "from":Ljava/lang/String;
    .restart local v19    # "to":Ljava/lang/String;
    .restart local v20    # "startTime":J
    :catch_1
    move-exception v7

    .line 690
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_3
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v28, "Canceled Download"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 692
    const/16 v18, -0x1

    goto/16 :goto_1

    .line 697
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v13    # "ftpRet":Z
    :cond_4
    const/16 v18, 0x64

    goto :goto_2

    .line 703
    .end local v8    # "exists":I
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/OutputStream;
    .end local v11    # "from":Ljava/lang/String;
    .end local v13    # "ftpRet":Z
    .end local v19    # "to":Ljava/lang/String;
    .end local v20    # "startTime":J
    :catch_2
    move-exception v7

    .line 704
    .restart local v7    # "ex":Ljava/lang/Exception;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ftp error "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 710
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_5
    const/high16 v4, 0x100000

    .line 712
    .local v4, "BUFFER_SIZE":I
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->UseWardrumData:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    .line 713
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadLocation:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 716
    .local v12, "fromUrl":Ljava/lang/String;
    :goto_4
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 717
    .restart local v19    # "to":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mv:Lcom/wardrumstudios/utils/MediaVault;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    .line 718
    new-instance v27, Lcom/wardrumstudios/utils/MediaVault;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->try1:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/wardrumstudios/utils/WarDownloader;->GetVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/wardrumstudios/utils/MediaVault;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->mv:Lcom/wardrumstudios/utils/MediaVault;

    .line 720
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mv:Lcom/wardrumstudios/utils/MediaVault;

    move-object/from16 v27, v0

    invoke-static {v12}, Lcom/wardrumstudios/utils/WarDownloader;->getTimeParameters(Ljava/lang/String;)Lcom/wardrumstudios/utils/MediaVaultRequest;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/wardrumstudios/utils/MediaVault;->compute(Lcom/wardrumstudios/utils/MediaVaultRequest;)Ljava/lang/String;

    move-result-object v11

    .line 722
    .restart local v11    # "from":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 723
    .restart local v20    # "startTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/wardrumstudios/utils/WarDownloader;->CheckAndCreate(Ljava/lang/String;I)I

    move-result v8

    .line 724
    .restart local v8    # "exists":I
    if-eqz p3, :cond_8

    if-lez v8, :cond_8

    .line 726
    const/16 v18, -0x2

    goto/16 :goto_1

    .line 715
    .end local v8    # "exists":I
    .end local v11    # "from":Ljava/lang/String;
    .end local v12    # "fromUrl":Ljava/lang/String;
    .end local v19    # "to":Ljava/lang/String;
    .end local v20    # "startTime":J
    :cond_7
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "http://wardrumstudios.com/MobileDownloads/gta3/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ";type=i"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "fromUrl":Ljava/lang/String;
    goto/16 :goto_4

    .line 729
    .restart local v8    # "exists":I
    .restart local v11    # "from":Ljava/lang/String;
    .restart local v19    # "to":Ljava/lang/String;
    .restart local v20    # "startTime":J
    :cond_8
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    .restart local v9    # "file":Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;

    .line 732
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 734
    .local v25, "url":Ljava/net/URL;
    const/16 v22, 0x0

    .line 736
    .local v22, "totalBytes":I
    :try_start_5
    sget-object v27, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v24

    check-cast v24, Ljava/net/HttpURLConnection;

    .line 738
    .local v24, "ucon":Ljava/net/HttpURLConnection;
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v27

    const/16 v28, 0xc8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 739
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ERROR Downloading "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " message "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->firstTry:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 742
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->firstTry:Z

    .line 748
    :cond_9
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->DownloadFailedMessage:I

    .line 749
    const/16 v18, -0x1

    goto/16 :goto_1

    .line 752
    :cond_a
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 753
    .local v14, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 754
    .local v10, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    move-object/from16 v27, v0

    if-nez v27, :cond_b

    .line 756
    const/high16 v27, 0x100000

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    .line 758
    :cond_b
    const/4 v15, 0x0

    .line 759
    .local v15, "numBytesRead":I
    const/4 v5, 0x0

    .line 760
    .local v5, "downloadIndex":I
    const/16 v23, 0x0

    .line 762
    .local v23, "totalDownloadRead":I
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    move-object/from16 v27, v0

    const/high16 v28, 0x100000

    sub-int v28, v28, v5

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    .line 764
    const/16 v27, -0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_f

    .line 765
    if-lez v23, :cond_e

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 767
    add-int v22, v22, v23

    .line 768
    if-eqz p3, :cond_d

    .line 769
    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/wardrumstudios/utils/WarDownloader;->updateProgress(IIZ)V

    .line 771
    :cond_d
    const/4 v5, 0x0

    move/from16 v23, v5

    .line 786
    :cond_e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 790
    .end local v5    # "downloadIndex":I
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "numBytesRead":I
    .end local v23    # "totalDownloadRead":I
    .end local v24    # "ucon":Ljava/net/HttpURLConnection;
    :goto_6
    const/16 v27, 0x0

    :try_start_6
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v18, v22

    .line 791
    goto/16 :goto_1

    .line 775
    .restart local v5    # "downloadIndex":I
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "numBytesRead":I
    .restart local v23    # "totalDownloadRead":I
    .restart local v24    # "ucon":Ljava/net/HttpURLConnection;
    :cond_f
    add-int v23, v23, v15

    .line 776
    add-int/2addr v5, v15

    .line 777
    const/high16 v27, 0x80000

    move/from16 v0, v23

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 778
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 779
    add-int v22, v22, v23

    .line 780
    if-eqz p3, :cond_10

    .line 781
    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/wardrumstudios/utils/WarDownloader;->updateProgress(IIZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 783
    :cond_10
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_5

    .line 792
    .end local v5    # "downloadIndex":I
    .end local v8    # "exists":I
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "from":Ljava/lang/String;
    .end local v12    # "fromUrl":Ljava/lang/String;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "numBytesRead":I
    .end local v19    # "to":Ljava/lang/String;
    .end local v20    # "startTime":J
    .end local v22    # "totalBytes":I
    .end local v23    # "totalDownloadRead":I
    .end local v24    # "ucon":Ljava/net/HttpURLConnection;
    .end local v25    # "url":Ljava/net/URL;
    :catch_3
    move-exception v6

    .line 793
    .local v6, "e":Ljava/io/IOException;
    const-string v27, "DownloadManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;

    .line 797
    const/16 v18, -0x1

    goto/16 :goto_1

    .line 787
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "exists":I
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "from":Ljava/lang/String;
    .restart local v12    # "fromUrl":Ljava/lang/String;
    .restart local v19    # "to":Ljava/lang/String;
    .restart local v20    # "startTime":J
    .restart local v22    # "totalBytes":I
    .restart local v25    # "url":Ljava/net/URL;
    :catch_4
    move-exception v27

    goto :goto_6
.end method

.method public downloadFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0, p1, v1, v0}, Lcom/wardrumstudios/utils/WarDownloader;->downloadFile(Ljava/lang/String;IZ)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method downloadHttpFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 574
    const/high16 v2, 0x10000

    .line 576
    .local v2, "BUFFER_SIZE":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 577
    .local v10, "startTime":J
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/wardrumstudios/utils/WarDownloader;->CheckAndCreate(Ljava/lang/String;I)I

    move-result v4

    .line 578
    .local v4, "exists":I
    if-lez v4, :cond_0

    .line 612
    .end local v4    # "exists":I
    .end local v10    # "startTime":J
    :goto_0
    return-void

    .line 583
    .restart local v4    # "exists":I
    .restart local v10    # "startTime":J
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v5, "file":Ljava/io/File;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;

    .line 586
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 587
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    .line 588
    .local v12, "ucon":Ljava/net/HttpURLConnection;
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_1

    .line 589
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR Downloading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadFailedMessage:I

    .line 592
    :cond_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 593
    .local v7, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 594
    .local v6, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    if-nez v14, :cond_2

    .line 595
    const/high16 v14, 0x10000

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    .line 596
    :cond_2
    const/4 v9, 0x0

    .line 597
    .local v9, "totalBytes":I
    const/4 v8, 0x0

    .line 599
    .local v8, "numBytesRead":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    const/4 v15, 0x0

    const/high16 v16, 0x10000

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 601
    const/4 v14, -0x1

    if-ne v8, v14, :cond_3

    .line 606
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 607
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    .end local v4    # "exists":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "numBytesRead":I
    .end local v9    # "totalBytes":I
    .end local v10    # "startTime":J
    .end local v12    # "ucon":Ljava/net/HttpURLConnection;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 610
    .local v3, "e":Ljava/io/IOException;
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "exists":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "numBytesRead":I
    .restart local v9    # "totalBytes":I
    .restart local v10    # "startTime":J
    .restart local v12    # "ucon":Ljava/net/HttpURLConnection;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->downloadBuffer:[B

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 604
    add-int/2addr v9, v8

    goto :goto_1
.end method

.method updateProgress(IIZ)V
    .locals 18
    .param p1, "bytes"    # I
    .param p2, "files"    # I
    .param p3, "isRealData"    # Z

    .prologue
    .line 834
    const/4 v2, 0x0

    .line 835
    .local v2, "doUpdate":Z
    if-eqz p3, :cond_8

    .line 836
    move-object/from16 v0, p0

    iget v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    add-int v11, v11, p1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    .line 837
    move-object/from16 v0, p0

    iget v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    const v12, 0xf4240

    if-le v11, v12, :cond_0

    .line 838
    const/4 v2, 0x1

    .line 844
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesDownloaded:I

    add-int v11, v11, p2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesDownloaded:I

    .line 845
    if-eqz v2, :cond_7

    .line 846
    move-object/from16 v0, p0

    iget v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 847
    const/4 v11, 0x2

    new-array v11, v11, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    .line 848
    const/4 v11, 0x2

    new-array v11, v11, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingStart:[J

    .line 849
    const/4 v11, 0x2

    new-array v11, v11, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingTime:[J

    .line 850
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 851
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingStart:[J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->StartTime:J

    aput-wide v14, v11, v12

    .line 852
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    const/4 v12, 0x1

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 853
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingStart:[J

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->StartTime:J

    aput-wide v14, v11, v12

    .line 854
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingTime:[J

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 855
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingTime:[J

    const/4 v12, 0x1

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 856
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    .line 858
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountReallyDownloaded:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountReallyDownloaded:J

    .line 859
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    .line 860
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    aget-wide v14, v11, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    aput-wide v14, v11, v12

    .line 861
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingTime:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    aget-wide v14, v11, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    aput-wide v14, v11, v12

    .line 862
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    .line 863
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->lastUpdateBytes:I

    .line 864
    const-string v3, ""

    .line 865
    .local v3, "eta":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingStart:[J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    rsub-int/lit8 v14, v14, 0x1

    aget-wide v14, v11, v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    .line 868
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    const/4 v14, 0x1

    aget-wide v14, v11, v14

    add-long v4, v12, v14

    .line 869
    .local v4, "downsum":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    const/4 v12, 0x1

    aget-wide v12, v11, v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 871
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    div-long v12, v4, v12

    long-to-int v8, v12

    .line 872
    .local v8, "rate":I
    if-lez v8, :cond_2

    .line 873
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-int v11, v12

    div-int v10, v11, v8

    .line 877
    .local v10, "time":I
    div-int/lit8 v7, v10, 0x3c

    .line 878
    .local v7, "minutes":I
    mul-int/lit8 v11, v7, 0x3c

    sub-int v9, v10, v11

    .line 879
    .local v9, "seconds":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->ESTIMATED_COMPLETION_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->MINUTES_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v11, 0x5

    if-le v7, v11, :cond_9

    const-string v11, ""

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 889
    .end local v7    # "minutes":I
    .end local v8    # "rate":I
    .end local v9    # "seconds":I
    .end local v10    # "time":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    aget-wide v12, v11, v12

    const-wide/32 v14, 0x2faf080

    cmp-long v11, v12, v14

    if-lez v11, :cond_3

    .line 890
    move-object/from16 v0, p0

    iget v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    rsub-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    .line 891
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingStart:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v11, v12

    .line 892
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingAmount:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 893
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->currentRollingTime:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->rollIndex:I

    const-wide/16 v14, 0x0

    aput-wide v14, v11, v12

    .line 896
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOADING_FILES_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesDownloaded:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->FILES_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB) \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->PLEASE_WAIT_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 900
    .local v6, "mess":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    .line 901
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    div-long v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " KB/s "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 903
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesToDownload:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wardrumstudios/utils/WarDownloader;->filesDownloaded:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->FILES_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->notifyMessage:Ljava/lang/String;

    .line 905
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_5

    .line 906
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->notifyMessage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->timeToDownload:J

    div-long v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " KB/s "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->notifyMessage:Ljava/lang/String;

    .line 909
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/wardrumstudios/utils/WarDownloader;->ChangeMessage(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    if-eqz v11, :cond_6

    .line 911
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    long-to-int v12, v12

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v11, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 912
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v11, :cond_7

    .line 913
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->totalToDownload:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    long-to-int v13, v14

    div-int/lit16 v13, v13, 0x400

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 914
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wardrumstudios/utils/WarDownloader;->mNotifyManager:Landroid/app/NotificationManager;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v13}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 918
    .end local v3    # "eta":Ljava/lang/String;
    .end local v4    # "downsum":J
    .end local v6    # "mess":Ljava/lang/String;
    :cond_7
    return-void

    .line 841
    :cond_8
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    move/from16 v0, p1

    int-to-long v14, v0

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/wardrumstudios/utils/WarDownloader;->amountDownloaded:J

    .line 842
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 879
    .restart local v3    # "eta":Ljava/lang/String;
    .restart local v4    # "downsum":J
    .restart local v7    # "minutes":I
    .restart local v8    # "rate":I
    .restart local v9    # "seconds":I
    .restart local v10    # "time":I
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wardrumstudios/utils/WarDownloader;->SECONDS_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1
.end method
