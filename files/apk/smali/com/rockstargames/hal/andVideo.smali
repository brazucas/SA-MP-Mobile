.class public Lcom/rockstargames/hal/andVideo;
.super Landroid/app/Activity;
.source "andVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static m_video:Lcom/rockstargames/hal/andVideo;

.field private static m_videoPosition:I


# instance fields
.field private m_file:Ljava/lang/String;

.field private m_relativeLayoutView:Landroid/widget/RelativeLayout;

.field private m_videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    iput-object v6, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    .line 16
    iput-object v6, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p1, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    .line 76
    :try_start_0
    new-instance v3, Landroid/widget/VideoView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    .line 78
    const/4 v1, 0x0

    .line 89
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 90
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 91
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 92
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->requestFocus()Z

    .line 93
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v2, "videoviewlp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    .line 98
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 99
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 102
    const/16 v3, 0xf

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "videoviewlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "andVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get video file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v3, :cond_0

    .line 114
    iput-object v6, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    goto :goto_0
.end method

.method public static IsVideoPlaying()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->IsPlaying()Z

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static PlayVideoFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/rockstargames/hal/andVideo;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andVideo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    .line 25
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Play()V

    .line 26
    return-void
.end method

.method public static Resume()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    sget v1, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andVideo;->SetPosition(I)V

    .line 55
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Play()V

    .line 57
    :cond_0
    return-void
.end method

.method public static StopVideo()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Stop()V

    .line 66
    :cond_0
    return-void
.end method

.method public static Suspend()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Pause()V

    .line 45
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->GetPosition()I

    move-result v0

    sput v0, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    .line 47
    :cond_0
    return-void
.end method

.method private VideoComplete()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/rockstargames/hal/andVideo;->Stop()V

    .line 214
    invoke-virtual {p0}, Lcom/rockstargames/hal/andVideo;->VideoFinishedCB()V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public GetPosition()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPlaying()Z
    .locals 4

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "andVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to query playing state for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Pause()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 154
    :cond_0
    return-void
.end method

.method public Play()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 145
    :cond_0
    return-void
.end method

.method public SetPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public Stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 165
    iput-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    .line 167
    iput-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    .line 169
    :cond_0
    return-void
.end method

.method public native VideoFinishedCB()V
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/rockstargames/hal/andVideo;->VideoComplete()V

    .line 205
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Video \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "error":Ljava/lang/String;
    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Server Died, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    sparse-switch p3, :sswitch_data_0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unknown error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_1
    const-string v1, "andVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x1

    return v1

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unknown error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IO Error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    goto :goto_1

    .line 241
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Malformed video!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_1

    .line 246
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unsupported format!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    goto :goto_1

    .line 251
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Timed out!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    goto :goto_1

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/rockstargames/hal/andVideo;->VideoComplete()V

    .line 197
    const/4 v0, 0x1

    return v0
.end method
