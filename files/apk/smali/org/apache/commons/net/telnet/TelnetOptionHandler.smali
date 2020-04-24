.class public abstract Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.super Ljava/lang/Object;
.source "TelnetOptionHandler.java"


# instance fields
.field private acceptLocal:Z

.field private acceptRemote:Z

.field private doFlag:Z

.field private initialLocal:Z

.field private initialRemote:Z

.field private optionCode:I

.field private willFlag:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 2
    .param p1, "optcode"    # I
    .param p2, "initlocal"    # Z
    .param p3, "initremote"    # Z
    .param p4, "acceptlocal"    # Z
    .param p5, "acceptremote"    # Z

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    .line 40
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 45
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 50
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 55
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 60
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    .line 65
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    .line 85
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    .line 86
    iput-boolean p2, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 87
    iput-boolean p3, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 88
    iput-boolean p4, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 89
    iput-boolean p5, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 90
    return-void
.end method


# virtual methods
.method public abstract answerSubnegotiation([II)[I
.end method

.method public getAcceptLocal()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return v0
.end method

.method public getAcceptRemote()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return v0
.end method

.method getDo()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return v0
.end method

.method public getInitLocal()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return v0
.end method

.method public getInitRemote()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return v0
.end method

.method public getOptionCode()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    return v0
.end method

.method getWill()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return v0
.end method

.method public setAcceptLocal(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 134
    return-void
.end method

.method public setAcceptRemote(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 145
    return-void
.end method

.method setDo(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    .line 271
    return-void
.end method

.method public setInitLocal(Z)V
    .locals 0
    .param p1, "init"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 178
    return-void
.end method

.method public setInitRemote(Z)V
    .locals 0
    .param p1, "init"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 189
    return-void
.end method

.method setWill(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    .line 248
    return-void
.end method

.method public abstract startSubnegotiationLocal()[I
.end method

.method public abstract startSubnegotiationRemote()[I
.end method
