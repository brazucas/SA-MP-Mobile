.class public final Lorg/apache/commons/net/time/TimeTCPClient;
.super Lorg/apache/commons/net/SocketClient;
.source "TimeTCPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x25

.field public static final SECONDS_1900_TO_1970:J = 0x83aa7e80L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 58
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/time/TimeTCPClient;->setDefaultPort(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/net/time/TimeTCPClient;->getTime()J

    move-result-wide v2

    const-wide v4, 0x83aa7e80L

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTime()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/apache/commons/net/time/TimeTCPClient;->_input_:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    .local v0, "input":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    return-wide v2
.end method
