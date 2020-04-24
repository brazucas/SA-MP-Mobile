.class public Lcom/rockstargames/hal/PresenceConnection;
.super Ljava/lang/Object;
.source "PresenceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private data:[B

.field private http:Lcom/rockstargames/hal/andHttp;

.field private inputStream:Ljava/io/InputStream;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andHttp;Lorg/apache/http/client/methods/HttpRequestBase;[B)V
    .locals 0
    .param p1, "http"    # Lcom/rockstargames/hal/andHttp;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p3, "data"    # [B

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    .line 28
    iput-object p2, p0, Lcom/rockstargames/hal/PresenceConnection;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 29
    iput-object p3, p0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    .line 31
    invoke-virtual {p1, p0}, Lcom/rockstargames/hal/andHttp;->setPresenceConnection(Lcom/rockstargames/hal/PresenceConnection;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/PresenceConnection;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 30

    .prologue
    .line 49
    const-string v26, "Connecting presence system..."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 51
    const/16 v21, 0x0

    .line 52
    .local v21, "output":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 53
    .local v19, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 57
    .local v6, "connection":Ljava/net/URLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/client/methods/HttpRequestBase;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .local v4, "arr$":[Lorg/apache/http/Header;
    array-length v0, v4

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v12, v4, v17

    .line 60
    .local v12, "h":Lorg/apache/http/Header;
    invoke-interface {v12}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 62
    .end local v12    # "h":Lorg/apache/http/Header;
    :cond_0
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_1

    .line 66
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 68
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const/16 v21, 0x0

    .line 76
    :cond_1
    :try_start_1
    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    .line 78
    .local v16, "huc":Ljava/net/HttpURLConnection;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v23, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    .line 81
    .local v15, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17    # "i$":I
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 83
    .local v13, "headerName":Ljava/lang/String;
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 85
    .local v25, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 90
    .local v14, "headerValue":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 110
    .end local v13    # "headerName":Ljava/lang/String;
    .end local v14    # "headerValue":Ljava/lang/String;
    .end local v15    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "huc":Ljava/net/HttpURLConnection;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    .end local v25    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 112
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    .line 117
    const v26, 0x19000

    move/from16 v0, v26

    new-array v5, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .local v5, "buffer":[B
    :cond_3
    :goto_3
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .line 123
    .local v22, "readAmount":I
    const/16 v26, -0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 125
    const-string v26, "Presence system disconnected by remote end."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    .end local v22    # "readAmount":I
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v26

    new-instance v27, Lcom/rockstargames/hal/PresenceConnection$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/PresenceConnection$3;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    const-wide/16 v28, 0x1f4

    invoke-virtual/range {v26 .. v29}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    if-eqz v19, :cond_4

    .line 199
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 200
    const-string v26, "Presence system successfully closed input stream."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 209
    :cond_4
    :goto_5
    if-eqz v6, :cond_5

    .line 211
    const/4 v6, 0x0

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    .line 216
    .end local v4    # "arr$":[Lorg/apache/http/Header;
    .end local v5    # "buffer":[B
    .end local v20    # "len$":I
    :goto_6
    return-void

    .line 94
    .restart local v4    # "arr$":[Lorg/apache/http/Header;
    .restart local v15    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v16    # "huc":Ljava/net/HttpURLConnection;
    .restart local v20    # "len$":I
    .restart local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v26

    new-instance v27, Lcom/rockstargames/hal/PresenceConnection$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/rockstargames/hal/PresenceConnection$1;-><init>(Lcom/rockstargames/hal/PresenceConnection;Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 195
    .end local v4    # "arr$":[Lorg/apache/http/Header;
    .end local v15    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "huc":Ljava/net/HttpURLConnection;
    .end local v20    # "len$":I
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v26

    if-eqz v19, :cond_7

    .line 199
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 200
    const-string v27, "Presence system successfully closed input stream."

    invoke-static/range {v27 .. v27}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 209
    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    .line 211
    const/4 v6, 0x0

    .line 214
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    throw v26

    .line 128
    .restart local v4    # "arr$":[Lorg/apache/http/Header;
    .restart local v5    # "buffer":[B
    .restart local v20    # "len$":I
    .restart local v22    # "readAmount":I
    :cond_9
    if-lez v22, :cond_3

    .line 130
    :try_start_8
    move/from16 v0, v22

    new-array v10, v0, [B

    .line 131
    .local v10, "finalBuffer":[B
    move/from16 v11, v22

    .line 132
    .local v11, "finalReadAmount":I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v5, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v26

    new-instance v27, Lcom/rockstargames/hal/PresenceConnection$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v11}, Lcom/rockstargames/hal/PresenceConnection$2;-><init>(Lcom/rockstargames/hal/PresenceConnection;[BI)V

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 144
    .end local v10    # "finalBuffer":[B
    .end local v11    # "finalReadAmount":I
    .end local v22    # "readAmount":I
    :catch_1
    move-exception v24

    .line 146
    .local v24, "ste":Ljava/net/SocketTimeoutException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 148
    const-string v26, "Presence system cancelling..."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 181
    .end local v4    # "arr$":[Lorg/apache/http/Header;
    .end local v5    # "buffer":[B
    .end local v20    # "len$":I
    .end local v24    # "ste":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v7

    .line 183
    .local v7, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v26

    new-instance v27, Lcom/rockstargames/hal/PresenceConnection$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/PresenceConnection$4;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 195
    if-eqz v19, :cond_a

    .line 199
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 200
    const-string v26, "Presence system successfully closed input stream."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 209
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_8
    if-eqz v6, :cond_b

    .line 211
    const/4 v6, 0x0

    .line 214
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    goto/16 :goto_6

    .line 153
    .restart local v4    # "arr$":[Lorg/apache/http/Header;
    .restart local v5    # "buffer":[B
    .restart local v20    # "len$":I
    .restart local v24    # "ste":Ljava/net/SocketTimeoutException;
    :cond_c
    :try_start_c
    const-string v26, "Presence system still alive..."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 156
    .end local v24    # "ste":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v8

    .line 158
    .local v8, "eofe":Ljava/io/EOFException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_d

    .line 160
    const-string v26, "Presence system cancelling..."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 165
    :cond_d
    const-string v26, "Presence system shut down from remote end..."

    invoke-static/range {v26 .. v26}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 203
    .end local v8    # "eofe":Ljava/io/EOFException;
    :catch_4
    move-exception v7

    .line 205
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 203
    .end local v4    # "arr$":[Lorg/apache/http/Header;
    .end local v5    # "buffer":[B
    .end local v20    # "len$":I
    .local v7, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 205
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 203
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 205
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7
.end method
