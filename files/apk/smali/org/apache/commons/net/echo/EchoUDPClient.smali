.class public final Lorg/apache/commons/net/echo/EchoUDPClient;
.super Lorg/apache/commons/net/discard/DiscardUDPClient;
.source "EchoUDPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x7


# instance fields
.field private final __receivePacket:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/net/discard/DiscardUDPClient;-><init>()V

    .line 47
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public receive([B)I
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/echo/EchoUDPClient;->receive([BI)I

    move-result v0

    return v0
.end method

.method public receive([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 88
    iget-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 89
    iget-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 90
    iget-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    return v0
.end method

.method public send([BILjava/net/InetAddress;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x7

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/echo/EchoUDPClient;->send([BILjava/net/InetAddress;I)V

    .line 65
    return-void
.end method

.method public send([BLjava/net/InetAddress;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    array-length v0, p1

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/commons/net/echo/EchoUDPClient;->send([BILjava/net/InetAddress;I)V

    .line 73
    return-void
.end method
