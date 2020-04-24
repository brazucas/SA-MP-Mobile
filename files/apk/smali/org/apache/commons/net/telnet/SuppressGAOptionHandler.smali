.class public Lorg/apache/commons/net/telnet/SuppressGAOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SuppressGAOptionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 51
    const/4 v1, 0x3

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 6
    .param p1, "initlocal"    # Z
    .param p2, "initremote"    # Z
    .param p3, "acceptlocal"    # Z
    .param p4, "acceptremote"    # Z

    .prologue
    .line 41
    const/4 v1, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 43
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 1
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationLocal()[I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method
