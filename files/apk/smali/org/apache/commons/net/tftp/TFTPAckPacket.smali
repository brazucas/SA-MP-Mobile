.class public final Lorg/apache/commons/net/tftp/TFTPAckPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPAckPacket.java"


# instance fields
.field _blockNumber:I


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 4
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 78
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 80
    .local v0, "data":[B
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getType()I

    move-result v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    if-eq v1, v2, :cond_0

    .line 81
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v2, "TFTP operator code does not match type."

    invoke-direct {v1, v2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 1
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "blockNumber"    # I

    .prologue
    .line 59
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 60
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    .line 61
    return-void
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 3
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 101
    aput-byte v0, p2, v0

    .line 102
    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_type:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 103
    const/4 v0, 0x2

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    const v2, 0xffff

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 104
    const/4 v0, 0x3

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 106
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 107
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_port:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 108
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 109
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 111
    return-object p1
.end method

.method public getBlockNumber()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 131
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 132
    .local v0, "data":[B
    aput-byte v2, v0, v2

    .line 133
    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_type:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    const v3, 0xffff

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_port:I

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v1
.end method

.method public setBlockNumber(I)V
    .locals 0
    .param p1, "blockNumber"    # I

    .prologue
    .line 155
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->_blockNumber:I

    .line 156
    return-void
.end method
