.class public Lcom/rockstargames/hal/andAudio;
.super Ljava/lang/Object;
.source "andAudio.java"


# static fields
.field public static m_audioMuted:Z

.field private static samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/andAudioSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsPlaying(I)Z
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 107
    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    .line 111
    .local v0, "sample":Lcom/rockstargames/hal/andAudioSample;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v1

    .line 117
    .end local v0    # "sample":Lcom/rockstargames/hal/andAudioSample;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static MuteAllAudio(Z)V
    .locals 3
    .param p0, "mute"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 18
    sget-object v2, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    .line 20
    .local v1, "sample":Lcom/rockstargames/hal/andAudioSample;
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1, p0}, Lcom/rockstargames/hal/andAudioSample;->Mute(Z)V

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "sample":Lcom/rockstargames/hal/andAudioSample;
    :cond_1
    return-void
.end method

.method public static PlayAudioFile(Ljava/lang/String;FLjava/lang/String;ZI)I
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "volume"    # F
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "autoRemove"    # Z
    .param p4, "loopCount"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/rockstargames/hal/andAudioSample;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/rockstargames/hal/andAudioSample;-><init>(Ljava/lang/String;FLjava/lang/String;ZI)V

    .line 33
    .local v0, "newSample":Lcom/rockstargames/hal/andAudioSample;
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->GetMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->Play()V

    .line 40
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->getId()I

    move-result v1

    .line 43
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static ReleaseHandle(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 123
    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v0

    .line 124
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 126
    sget-object v2, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    .line 128
    .local v1, "sample":Lcom/rockstargames/hal/andAudioSample;
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    .line 133
    :cond_0
    sget-object v2, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    .end local v1    # "sample":Lcom/rockstargames/hal/andAudioSample;
    :cond_1
    return-void
.end method

.method public static Stop(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 140
    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 142
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    .line 144
    .local v0, "sample":Lcom/rockstargames/hal/andAudioSample;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    .line 149
    .end local v0    # "sample":Lcom/rockstargames/hal/andAudioSample;
    :cond_0
    return-void
.end method

.method public static StopCategory(Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 51
    sget-object v2, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    .line 53
    .local v1, "sample":Lcom/rockstargames/hal/andAudioSample;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->GetCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "sample":Lcom/rockstargames/hal/andAudioSample;
    :cond_1
    return-void
.end method

.method public static UpdateSamples()V
    .locals 5

    .prologue
    .line 66
    sget-object v3, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 68
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 70
    sget-object v3, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    .line 72
    .local v1, "sample":Lcom/rockstargames/hal/andAudioSample;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->GetMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->AutoRemove()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    sget-object v3, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 85
    :cond_1
    sget-object v3, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 90
    .end local v1    # "sample":Lcom/rockstargames/hal/andAudioSample;
    :cond_2
    return-void
.end method

.method public static getSample(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->getId()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 101
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 94
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
