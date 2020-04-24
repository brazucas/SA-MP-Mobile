.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private __maxTimeouts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    .line 75
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 76
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 21
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v14, 0x0

    .line 132
    .local v14, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/16 v17, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 134
    .local v4, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 136
    const/4 v6, 0x0

    .local v6, "bytesRead":I
    move v11, v6

    .local v11, "hostPort":I
    move v12, v6

    .local v12, "lastBlock":I
    move v8, v6

    .line 137
    .local v8, "dataLength":I
    const/4 v5, 0x1

    .line 139
    .local v5, "block":I
    if-nez p2, :cond_0

    .line 140
    new-instance v13, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p3    # "output":Ljava/io/OutputStream;
    .local v13, "output":Ljava/io/OutputStream;
    move-object/from16 p3, v13

    .line 143
    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local p3    # "output":Ljava/io/OutputStream;
    :cond_0
    new-instance v15, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v15, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 149
    .local v15, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 154
    :cond_2
    const/16 v16, 0x0

    .line 158
    .local v16, "timeouts":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v14

    .line 188
    if-nez v12, :cond_3

    .line 190
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v11

    .line 191
    invoke-virtual {v4, v11}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    .line 192
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 194
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    .line 195
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 196
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 202
    :cond_3
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_8

    .line 206
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 257
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 258
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Received unexpected packet type."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 161
    :catch_0
    move-exception v9

    .line 163
    .local v9, "e":Ljava/net/SocketException;
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 166
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Connection timed out."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 170
    .end local v9    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v9

    .line 172
    .local v9, "e":Ljava/io/InterruptedIOException;
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 175
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Connection timed out."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 179
    .end local v9    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v9

    .line 181
    .local v9, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 182
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad packet: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v9    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    :pswitch_1
    move-object v10, v14

    .line 209
    check-cast v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 210
    .local v10, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 211
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " received: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :pswitch_2
    move-object v7, v14

    .line 214
    check-cast v7, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 215
    .local v7, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v8

    .line 217
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v12

    .line 219
    if-ne v12, v5, :cond_6

    .line 223
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v17

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v18

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    const v17, 0xffff

    move/from16 v0, v17

    if-le v5, v0, :cond_4

    .line 239
    const/4 v5, 0x0

    .line 276
    :cond_4
    invoke-virtual {v4, v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    .line 277
    move-object v15, v4

    .line 278
    add-int/2addr v6, v8

    .line 281
    .end local v7    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :cond_5
    :goto_0
    const/16 v17, 0x200

    move/from16 v0, v17

    if-eq v8, v0, :cond_1

    .line 283
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 286
    return v6

    .line 226
    .restart local v7    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_3
    move-exception v9

    .line 228
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const/16 v17, 0x3

    const-string v18, "File write failed."

    move-object/from16 v0, p4

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v10, v0, v11, v1, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 231
    .restart local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 233
    throw v9

    .line 246
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    .line 248
    if-nez v5, :cond_7

    const v17, 0xffff

    :goto_1
    move/from16 v0, v17

    if-ne v12, v0, :cond_2

    goto :goto_0

    :cond_7
    add-int/lit8 v17, v5, -0x1

    goto :goto_1

    .line 263
    .end local v7    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :cond_8
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v18

    const/16 v19, 0x5

    const-string v20, "Unexpected host or port."

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 267
    .restart local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 609
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 571
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 590
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 28
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    const/16 v24, 0x0

    .line 375
    .local v24, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 379
    .local v5, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    const/16 v20, 0x1

    .line 381
    .local v20, "justStarted":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 383
    const/16 v27, 0x0

    .local v27, "totalThisPacket":I
    move/from16 v14, v27

    .local v14, "bytesRead":I
    move/from16 v18, v27

    .local v18, "hostPort":I
    move/from16 v22, v27

    .local v22, "lastBlock":I
    move/from16 v15, v27

    .line 384
    .local v15, "dataLength":I
    const/4 v13, 0x0

    .line 385
    .local v13, "block":I
    const/16 v21, 0x0

    .line 387
    .local v21, "lastAckWait":Z
    if-nez p2, :cond_0

    .line 388
    new-instance v19, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p3    # "input":Ljava/io/InputStream;
    .local v19, "input":Ljava/io/InputStream;
    move-object/from16 p3, v19

    .line 391
    .end local v19    # "input":Ljava/io/InputStream;
    .restart local p3    # "input":Ljava/io/InputStream;
    :cond_0
    new-instance v25, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 399
    .local v25, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 407
    :goto_0
    const/16 v26, 0x0

    .line 411
    .local v26, "timeouts":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v24

    .line 443
    if-eqz v20, :cond_2

    .line 445
    const/16 v20, 0x0

    .line 446
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v18

    .line 447
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    .line 448
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 450
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    .line 451
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 452
    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 458
    :cond_2
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v6

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    .line 462
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 499
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 500
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Received unexpected packet type."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 414
    :catch_0
    move-exception v16

    .line 416
    .local v16, "e":Ljava/net/SocketException;
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v0, v26

    if-lt v0, v6, :cond_6

    .line 418
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 419
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 423
    .end local v16    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v16

    .line 425
    .local v16, "e":Ljava/io/InterruptedIOException;
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v0, v26

    if-lt v0, v6, :cond_6

    .line 427
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 428
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 432
    .end local v16    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v16

    .line 434
    .local v16, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 435
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad packet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v16    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    :pswitch_0
    move-object/from16 v17, v24

    .line 465
    check-cast v17, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 466
    .local v17, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 467
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :pswitch_1
    move-object/from16 v12, v24

    .line 470
    check-cast v12, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .line 472
    .local v12, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual {v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v22

    .line 474
    move/from16 v0, v22

    if-ne v0, v13, :cond_4

    .line 476
    add-int/lit8 v13, v13, 0x1

    .line 477
    const v6, 0xffff

    if-le v13, v6, :cond_3

    .line 480
    const/4 v13, 0x0

    .line 482
    :cond_3
    if-eqz v21, :cond_7

    .line 545
    .end local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 546
    return-void

    .line 492
    .restart local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    goto/16 :goto_0

    .line 505
    .end local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :cond_5
    new-instance v17, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v7

    const/4 v8, 0x5

    const-string v9, "Unexpected host or port."

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v8, v9}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 509
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 540
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_6
    :goto_2
    if-gtz v27, :cond_1

    if-nez v21, :cond_1

    goto :goto_1

    .line 521
    .restart local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :cond_7
    const/16 v15, 0x200

    .line 522
    const/16 v23, 0x4

    .line 523
    .local v23, "offset":I
    const/16 v27, 0x0

    .line 524
    :goto_3
    if-lez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-lez v14, :cond_8

    .line 527
    add-int v23, v23, v14

    .line 528
    sub-int/2addr v15, v14

    .line 529
    add-int v27, v27, v14

    goto :goto_3

    .line 532
    :cond_8
    const/16 v6, 0x200

    move/from16 v0, v27

    if-ge v0, v6, :cond_9

    .line 534
    const/16 v21, 0x1

    .line 536
    :cond_9
    invoke-virtual {v5, v13}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v7, 0x4

    move/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    .line 538
    move-object/from16 v25, v5

    goto :goto_2

    .line 462
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxTimeouts(I)V
    .locals 1
    .param p1, "numTimeouts"    # I

    .prologue
    const/4 v0, 0x1

    .line 90
    if-ge p1, v0, :cond_0

    .line 91
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_0
.end method
