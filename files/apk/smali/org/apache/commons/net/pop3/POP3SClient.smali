.class public Lorg/apache/commons/net/pop3/POP3SClient;
.super Lorg/apache/commons/net/pop3/POP3Client;
.source "POP3SClient.java"


# static fields
.field private static final DEFAULT_POP3S_PORT:I = 0x3e3

.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"


# instance fields
.field private context:Ljavax/net/ssl/SSLContext;

.field private final isImplicit:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "proto"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "implicit"    # Z

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "implicit"    # Z
    .param p3, "ctx"    # Ljavax/net/ssl/SSLContext;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3Client;-><init>()V

    .line 66
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    .line 69
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 78
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 128
    iput-object p1, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocol:Ljava/lang/String;

    .line 129
    iput-boolean p2, p0, Lorg/apache/commons/net/pop3/POP3SClient;->isImplicit:Z

    .line 130
    iput-object p3, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    .line 131
    iget-boolean v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->isImplicit:Z

    if-eqz v0, :cond_0

    .line 132
    const/16 v0, 0x3e3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3SClient;->setDefaultPort(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "implicit"    # Z

    .prologue
    .line 95
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "implicit"    # Z
    .param p2, "ctx"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 143
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 144
    return-void
.end method

.method private getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method private initSSLContext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocol:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    .line 185
    :cond_0
    return-void
.end method

.method private performSSLNegotiation()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 194
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->initSSLContext()V

    .line 196
    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 197
    .local v3, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "ip":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getRemotePort()I

    move-result v1

    .line 199
    .local v1, "port":I
    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v3, v4, v0, v1, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 201
    .local v2, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 202
    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 204
    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 208
    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 210
    :cond_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 212
    iput-object v2, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    .line 213
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_input_:Ljava/io/InputStream;

    .line 214
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_output_:Ljava/io/OutputStream;

    .line 215
    new-instance v4, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_input_:Ljava/io/InputStream;

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_reader:Ljava/io/BufferedReader;

    .line 216
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_output_:Ljava/io/OutputStream;

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_writer:Ljava/io/BufferedWriter;

    .line 217
    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->isImplicit:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->performSSLNegotiation()V

    .line 171
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/pop3/POP3Client;->_connectAction_()V

    .line 173
    return-void
.end method

.method public execTLS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const-string v0, "STLS"

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3SClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 304
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->performSSLNegotiation()V

    .line 305
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 245
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 3
    .param p1, "protocolVersions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 271
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0
    .param p1, "newKeyManager"    # Ljavax/net/ssl/KeyManager;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/apache/commons/net/pop3/POP3SClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 236
    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0
    .param p1, "newTrustManager"    # Ljavax/net/ssl/TrustManager;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/apache/commons/net/pop3/POP3SClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 325
    return-void
.end method
