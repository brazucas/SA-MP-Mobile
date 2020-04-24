.class public abstract Lorg/apache/commons/net/tftp/TFTPPacket;
.super Ljava/lang/Object;
.source "TFTPPacket.java"


# static fields
.field public static final ACKNOWLEDGEMENT:I = 0x4

.field public static final DATA:I = 0x3

.field public static final ERROR:I = 0x5

.field static final MIN_PACKET_SIZE:I = 0x4

.field public static final READ_REQUEST:I = 0x1

.field public static final SEGMENT_SIZE:I = 0x200

.field public static final WRITE_REQUEST:I = 0x2


# instance fields
.field _address:Ljava/net/InetAddress;

.field _port:I

.field _type:I


# direct methods
.method constructor <init>(ILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_type:I

    .line 173
    iput-object p2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 174
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    .line 175
    return-void
.end method

.method public static final newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 4
    .param p0, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 131
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v3, "Bad packet. Datagram data length is too short."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 137
    .local v0, "data":[B
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    packed-switch v2, :pswitch_data_0

    .line 155
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v3, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :pswitch_0
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 159
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_0
    return-object v1

    .line 143
    :pswitch_1
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 144
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 147
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 149
    :pswitch_3
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 150
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 152
    :pswitch_4
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 153
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method abstract _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_type:I

    return v0
.end method

.method public abstract newDatagram()Ljava/net/DatagramPacket;
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 246
    return-void
.end method

.method public final setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 239
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    .line 240
    return-void
.end method
