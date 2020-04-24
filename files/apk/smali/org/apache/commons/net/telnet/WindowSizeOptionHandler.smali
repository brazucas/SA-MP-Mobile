.class public Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "WindowSizeOptionHandler.java"


# static fields
.field protected static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private m_nHeight:I

.field private m_nWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 88
    const/16 v1, 0x1f

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 37
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 96
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 97
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 98
    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 6
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I
    .param p3, "initlocal"    # Z
    .param p4, "initremote"    # Z
    .param p5, "acceptlocal"    # Z
    .param p6, "acceptremote"    # Z

    .prologue
    .line 65
    const/16 v1, 0x1f

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 37
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 73
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 74
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 75
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 1
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationLocal()[I
    .locals 9

    .prologue
    const/16 v8, 0xff

    .line 123
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    const/high16 v7, 0x10000

    mul-int/2addr v6, v7

    iget v7, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    add-int v0, v6, v7

    .line 124
    .local v0, "nCompoundWindowSize":I
    const/4 v2, 0x5

    .line 129
    .local v2, "nResponseSize":I
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    rem-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_0

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 133
    :cond_0
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    div-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_1

    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 137
    :cond_1
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    rem-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_2

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 141
    :cond_2
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    div-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_3

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 148
    :cond_3
    new-array v5, v2, [I

    .line 158
    .local v5, "response":[I
    const/4 v6, 0x0

    const/16 v7, 0x1f

    aput v7, v5, v6

    .line 161
    const/4 v1, 0x1

    .local v1, "nIndex":I
    const/16 v3, 0x18

    .line 162
    .local v3, "nShift":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 165
    const/16 v4, 0xff

    .line 166
    .local v4, "nTurnedOnBits":I
    shl-int/2addr v4, v3

    .line 167
    and-int v6, v0, v4

    ushr-int/2addr v6, v3

    aput v6, v5, v1

    .line 169
    aget v6, v5, v1

    if-ne v6, v8, :cond_4

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 171
    aput v8, v5, v1

    .line 163
    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 175
    .end local v4    # "nTurnedOnBits":I
    :cond_5
    return-object v5
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method
