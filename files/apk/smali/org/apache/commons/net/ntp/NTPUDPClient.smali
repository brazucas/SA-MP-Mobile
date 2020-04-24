.class public final Lorg/apache/commons/net/ntp/NTPUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "NTPUDPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x7b


# instance fields
.field private _version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    return-void
.end method


# virtual methods
.method public getTime(Ljava/net/InetAddress;)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/16 v0, 0x7b

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 9
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->isOpen()Z

    move-result v8

    if-nez v8, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->open()V

    .line 69
    :cond_0
    new-instance v1, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    .line 70
    .local v1, "message":Lorg/apache/commons/net/ntp/NtpV3Packet;
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setMode(I)V

    .line 71
    iget v8, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    invoke-interface {v1, v8}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setVersion(I)V

    .line 72
    invoke-interface {v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v5

    .line 73
    .local v5, "sendPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v5, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 74
    invoke-virtual {v5, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 76
    new-instance v3, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {v3}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    .line 77
    .local v3, "recMessage":Lorg/apache/commons/net/ntp/NtpV3Packet;
    invoke-interface {v3}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    .line 85
    .local v4, "receivePacket":Ljava/net/DatagramPacket;
    invoke-static {}, Lorg/apache/commons/net/ntp/TimeStamp;->getCurrentTime()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v2

    .line 89
    .local v2, "now":Lorg/apache/commons/net/ntp/TimeStamp;
    invoke-interface {v1, v2}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setTransmitTime(Lorg/apache/commons/net/ntp/TimeStamp;)V

    .line 91
    iget-object v8, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 92
    iget-object v8, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 96
    .local v6, "returnTime":J
    new-instance v0, Lorg/apache/commons/net/ntp/TimeInfo;

    const/4 v8, 0x0

    invoke-direct {v0, v3, v6, v7, v8}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V

    .line 98
    .local v0, "info":Lorg/apache/commons/net/ntp/TimeInfo;
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    return v0
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 137
    iput p1, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    .line 138
    return-void
.end method
