.class public Lorg/apache/commons/net/telnet/SimpleOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SimpleOptionHandler.java"


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "optcode"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0
    .param p1, "optcode"    # I
    .param p2, "initlocal"    # Z
    .param p3, "initremote"    # Z
    .param p4, "acceptlocal"    # Z
    .param p5, "acceptremote"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 48
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 1
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationLocal()[I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method
