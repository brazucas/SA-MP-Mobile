.class public final Lorg/apache/commons/net/tftp/TFTPErrorPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPErrorPacket.java"


# static fields
.field public static final ACCESS_VIOLATION:I = 0x2

.field public static final FILE_EXISTS:I = 0x6

.field public static final FILE_NOT_FOUND:I = 0x1

.field public static final ILLEGAL_OPERATION:I = 0x4

.field public static final NO_SUCH_USER:I = 0x7

.field public static final OUT_OF_SPACE:I = 0x3

.field public static final UNDEFINED:I = 0x0

.field public static final UNKNOWN_TID:I = 0x5


# instance fields
.field _error:I

.field _message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 7
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 107
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-direct {p0, v6, v4, v5}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 112
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 113
    .local v1, "data":[B
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    .line 115
    .local v3, "length":I
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getType()I

    move-result v4

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    if-eq v4, v5, :cond_0

    .line 116
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v5, "TFTP operator code does not match type."

    invoke-direct {v4, v5}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_0
    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    .line 121
    if-ge v3, v6, :cond_1

    .line 122
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v5, "Bad error packet. No message."

    invoke-direct {v4, v5}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_1
    const/4 v2, 0x4

    .line 126
    .local v2, "index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v4, v1, v2

    if-eqz v4, :cond_2

    .line 130
    aget-byte v4, v1, v2

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;)V
    .locals 1
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "error"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 92
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    .line 93
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 5
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 155
    .local v0, "length":I
    aput-byte v4, p2, v4

    .line 156
    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_type:I

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 157
    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    const v3, 0xffff

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 158
    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 160
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v4, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    add-int/lit8 v1, v0, 0x4

    aput-byte v4, p2, v1

    .line 164
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 165
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_port:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 166
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 167
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 169
    return-object p1
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    return-object v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 193
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x5

    new-array v0, v2, [B

    .line 194
    .local v0, "data":[B
    aput-byte v5, v0, v5

    .line 195
    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_type:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 196
    const/4 v2, 0x2

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    const v4, 0xffff

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 197
    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 199
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/lit8 v2, v1, 0x4

    aput-byte v5, v0, v2

    .line 203
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    iget-object v4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_address:Ljava/net/InetAddress;

    iget v5, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_port:I

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v2
.end method
