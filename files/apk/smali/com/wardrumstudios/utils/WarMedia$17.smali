.class Lcom/wardrumstudios/utils/WarMedia$17;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$newFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;Ljava/lang/String;Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarMedia$17;->val$newFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarMedia$17;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 1740
    :try_start_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1741
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->val$newFile:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v8, "mFile":Ljava/io/File;
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v9, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1743
    .local v9, "movieFile":Ljava/io/RandomAccessFile;
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v2, v2, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1744
    const/4 v6, 0x0

    .line 1745
    .local v6, "count":I
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->IsMovieViewActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1746
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Waiting for video surface PlayMovieInFile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    .line 1748
    add-int/lit8 v6, v6, 0x1

    if-le v6, v11, :cond_0

    .line 1751
    :cond_1
    if-gt v6, v11, :cond_2

    .line 1752
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1753
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$17;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1754
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$17;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1755
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$17;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1756
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1769
    .end local v6    # "count":I
    .end local v8    # "mFile":Ljava/io/File;
    .end local v9    # "movieFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 1758
    .restart local v6    # "count":I
    .restart local v8    # "mFile":Ljava/io/File;
    .restart local v9    # "movieFile":Ljava/io/RandomAccessFile;
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creation failed count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1760
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1761
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1762
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1764
    .end local v6    # "count":I
    .end local v8    # "mFile":Ljava/io/File;
    .end local v9    # "movieFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v7

    .line 1765
    .local v7, "ex":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creation failed error  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-object v12, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1767
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$17;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput v10, v0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    goto :goto_0
.end method
