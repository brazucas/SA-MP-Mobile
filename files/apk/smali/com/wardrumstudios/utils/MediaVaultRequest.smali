.class public Lcom/wardrumstudios/utils/MediaVaultRequest;
.super Ljava/lang/Object;
.source "MediaVaultRequest.java"


# instance fields
.field private endTime:J

.field private ipAddress:Ljava/lang/String;

.field private mediaURL:Ljava/lang/String;

.field private pageURL:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaURL"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->startTime:J

    .line 5
    iput-wide v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->endTime:J

    .line 12
    iput-object p1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->mediaURL:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->endTime:J

    return-wide v0
.end method

.method public getHashParameters()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "hash":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->referrer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->pageURL:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->pageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->mediaURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->pageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->startTime:J

    return-wide v0
.end method

.method public getURLParamers()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .local v0, "urlParams":Ljava/lang/StringBuilder;
    const-string v1, "&p=100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->referrer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19
    const-string v1, "&ru=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->pageURL:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->pageURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 22
    const-string v1, "&pu=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->ipAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_2
    iget-wide v2, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->startTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_3
    iget-wide v2, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->endTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->endTime:J

    .line 76
    return-void
.end method

.method public setIPAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->ipAddress:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setMediaURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaURL"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->mediaURL:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setPageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageURL"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->pageURL:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 0
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->referrer:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/wardrumstudios/utils/MediaVaultRequest;->startTime:J

    .line 61
    return-void
.end method
