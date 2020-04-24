.class public final Lorg/apache/commons/net/daytime/DaytimeTCPClient;
.super Lorg/apache/commons/net/SocketClient;
.source "DaytimeTCPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0xd


# instance fields
.field private final __buffer:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 44
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    .line 52
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->setDefaultPort(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->getCharsetName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 78
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    iget-object v4, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    array-length v4, v4

    invoke-virtual {v1, v3, v6, v4}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    .line 79
    .local v0, "read":I
    if-gtz v0, :cond_0

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 82
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->__buffer:[C

    invoke-virtual {v2, v3, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
