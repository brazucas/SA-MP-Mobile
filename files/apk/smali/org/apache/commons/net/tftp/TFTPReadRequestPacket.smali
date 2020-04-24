.class public final Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.source "TFTPReadRequestPacket.java"


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;-><init>(ILjava/net/DatagramPacket;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;I)V
    .locals 6
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 61
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;I)V

    .line 62
    return-void
.end method
