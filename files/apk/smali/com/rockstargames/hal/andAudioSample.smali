.class public Lcom/rockstargames/hal/andAudioSample;
.super Landroid/app/Activity;
.source "andAudioSample.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static idGen:I


# instance fields
.field private id:I

.field private m_autoRemove:Z

.field private m_category:Ljava/lang/String;

.field private m_file:Ljava/lang/String;

.field private m_loopCount:I

.field private m_mediaPlayer:Landroid/media/MediaPlayer;

.field private m_volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andAudioSample;->idGen:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;ZI)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "volume"    # F
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "autoRemove"    # Z
    .param p5, "loopCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_category:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_autoRemove:Z

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_loopCount:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/rockstargames/hal/andAudioSample;->id:I

    .line 23
    return-void
.end method


# virtual methods
.method public AutoRemove()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_autoRemove:Z

    return v0
.end method

.method public GetCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_category:Ljava/lang/String;

    return-object v0
.end method

.method public GetMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public IsPlaying()Z
    .locals 4

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 166
    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "andAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to query playing state for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rockstargames/hal/andAudioSample;->m_file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Mute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    iget v2, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public Play()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 119
    iget v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 124
    :cond_0
    sget-boolean v0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 135
    :cond_1
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    iget v2, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 150
    :cond_1
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/rockstargames/hal/andAudioSample;->id:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 179
    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 187
    const/4 p1, 0x0

    .line 189
    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Sample \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rockstargames/hal/andAudioSample;->m_file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "error":Ljava/lang/String;
    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Server Died, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_0
    sparse-switch p3, :sswitch_data_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unknown error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_1
    const-string v1, "andAudio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x1

    return v1

    .line 212
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

    .line 219
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

    .line 221
    goto :goto_1

    .line 224
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Malformed sample!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    goto :goto_1

    .line 229
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

    .line 231
    goto :goto_1

    .line 234
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

    .line 236
    goto :goto_1

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 200
    :cond_0
    return-void
.end method
