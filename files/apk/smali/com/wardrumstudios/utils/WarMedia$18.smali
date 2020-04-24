.class Lcom/wardrumstudios/utils/WarMedia$18;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;FLandroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$afdFinal:Landroid/content/res/AssetFileDescriptor;

.field final synthetic val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$newFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$afdFinal:Landroid/content/res/AssetFileDescriptor;

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$newFile:Ljava/lang/String;

    iput-object p4, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1826
    :try_start_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1827
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$afdFinal:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$afdFinal:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$afdFinal:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$afdFinal:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1831
    :goto_0
    const/4 v6, 0x0

    .local v6, "count":I
    move v7, v6

    .line 1832
    .end local v6    # "count":I
    .local v7, "count":I
    :goto_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->IsMovieViewActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1833
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Waiting for video surface PlayMovie"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    const/4 v0, 0x5

    if-le v7, v0, :cond_0

    .line 1836
    :try_start_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1838
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1839
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_1

    .line 1830
    .end local v7    # "count":I
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$newFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1848
    :catch_0
    move-exception v0

    .line 1850
    :goto_3
    return-void

    .line 1843
    .restart local v7    # "count":I
    :cond_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1844
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1845
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1846
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$18;->val$myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1847
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$18;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1837
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :catch_1
    move-exception v0

    goto :goto_2
.end method
