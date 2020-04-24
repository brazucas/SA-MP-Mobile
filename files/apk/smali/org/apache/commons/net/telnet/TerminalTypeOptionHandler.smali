.class public Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "TerminalTypeOptionHandler.java"


# static fields
.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1


# instance fields
.field private final termType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "termtype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 78
    const/16 v1, 0x18

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 79
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p1, "termtype"    # Ljava/lang/String;
    .param p2, "initlocal"    # Z
    .param p3, "initremote"    # Z
    .param p4, "acceptlocal"    # Z
    .param p5, "acceptremote"    # Z

    .prologue
    .line 65
    const/16 v1, 0x18

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 6
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    if-eqz p1, :cond_0

    if-le p2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    aget v2, p1, v4

    if-ne v2, v5, :cond_0

    aget v2, p1, v3

    if-ne v2, v3, :cond_0

    .line 99
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 101
    .local v1, "response":[I
    aput v5, v1, v4

    .line 102
    aput v4, v1, v3

    .line 104
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 106
    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v1, v2

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "ii":I
    .end local v1    # "response":[I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public startSubnegotiationLocal()[I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method
