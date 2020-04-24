.class public Lcom/rockstargames/hal/andHttp;
.super Ljava/lang/Object;
.source "andHttp.java"


# static fields
.field private static connections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/rockstargames/hal/andHttp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cancelled:Z

.field private id:I

.field private presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(ILorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    .line 172
    iput p1, p0, Lcom/rockstargames/hal/andHttp;->id:I

    .line 173
    iput-object p2, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 174
    return-void
.end method

.method public static GET(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 46
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ":\n"

    invoke-direct {v2, p2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0}, Lcom/rockstargames/hal/andHttp;->processRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V

    .line 55
    return-void
.end method

.method public static HEAD(ILjava/lang/String;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEAD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/rockstargames/hal/andHttp;->processRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V

    .line 39
    return-void
.end method

.method public static POST(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 8
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 60
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Header string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 62
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ":\n"

    invoke-direct {v3, p2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v1, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string v5, "Presence.asmx/WaitMessage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    const-string v5, "with data:"

    invoke-static {v5}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 74
    invoke-static {p3}, Lcom/rockstargames/hal/andHttp;->logDataSafe([B)V

    .line 76
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 78
    invoke-static {p0, v2}, Lcom/rockstargames/hal/andHttp;->processRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V

    .line 86
    :goto_1
    return-void

    .line 82
    :cond_1
    new-instance v0, Lcom/rockstargames/hal/andHttp;

    invoke-direct {v0, p0, v2}, Lcom/rockstargames/hal/andHttp;-><init>(ILorg/apache/http/client/methods/HttpRequestBase;)V

    .line 83
    .local v0, "http":Lcom/rockstargames/hal/andHttp;
    invoke-static {p0, v0}, Lcom/rockstargames/hal/andHttp;->addConnection(ILcom/rockstargames/hal/andHttp;)V

    .line 84
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/rockstargames/hal/PresenceConnection;

    invoke-direct {v6, v0, v2, p3}, Lcom/rockstargames/hal/PresenceConnection;-><init>(Lcom/rockstargames/hal/andHttp;Lorg/apache/http/client/methods/HttpRequestBase;[B)V

    const-string v7, "Presence Connection Thread"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private static declared-synchronized addConnection(ILcom/rockstargames/hal/andHttp;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "connection"    # Lcom/rockstargames/hal/andHttp;

    .prologue
    .line 148
    const-class v1, Lcom/rockstargames/hal/andHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v1

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static cancelConnection(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 90
    invoke-static {p0}, Lcom/rockstargames/hal/andHttp;->getConnection(I)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    .line 92
    .local v0, "connection":Lcom/rockstargames/hal/andHttp;
    if-eqz v0, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    .line 97
    iget-object v1, v0, Lcom/rockstargames/hal/andHttp;->presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, v0, Lcom/rockstargames/hal/andHttp;->presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

    invoke-virtual {v1}, Lcom/rockstargames/hal/PresenceConnection;->cancel()V

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to cancel."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized getConnection(I)Lcom/rockstargames/hal/andHttp;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 156
    const-class v1, Lcom/rockstargames/hal/andHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andHttp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "l"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public static logDataSafe([B)V
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/16 v7, 0x1000

    const/4 v6, 0x0

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v0, 0x1000

    .line 114
    .local v0, "DEBUGDATAMAX":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_6

    if-ge v2, v7, :cond_6

    .line 116
    aget-byte v4, p0, v2

    int-to-char v1, v4

    .line 117
    .local v1, "c":C
    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    .line 130
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_0

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 125
    :cond_2
    const/16 v4, 0x20

    if-ge v1, v4, :cond_3

    const/16 v4, 0x9

    if-ne v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x7f

    if-lt v1, v4, :cond_5

    .line 126
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 128
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    .end local v1    # "c":C
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 139
    array-length v4, p0

    if-le v4, v7, :cond_7

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ...plus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    add-int/lit16 v5, v5, -0x1000

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 142
    :cond_7
    return-void
.end method

.method private static processRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 162
    new-instance v0, Lcom/rockstargames/hal/andHttp;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andHttp;-><init>(ILorg/apache/http/client/methods/HttpRequestBase;)V

    .line 164
    .local v0, "http":Lcom/rockstargames/hal/andHttp;
    invoke-static {p0, v0}, Lcom/rockstargames/hal/andHttp;->addConnection(ILcom/rockstargames/hal/andHttp;)V

    .line 166
    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->execute()V

    .line 168
    return-void
.end method

.method public static declared-synchronized removeConnection(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 152
    const-class v1, Lcom/rockstargames/hal/andHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v1

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected doInBackground()Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 220
    :try_start_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 222
    .local v6, "httpParams":Lorg/apache/http/params/HttpParams;
    iget-object v10, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Presence.asmx/WaitMessage"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 224
    const/16 v10, 0x7530

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 225
    const/16 v10, 0x7530

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 226
    const/4 v10, 0x1

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 237
    :goto_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 238
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    const-string v10, "Executing request..."

    invoke-static {v10}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 239
    iget-object v10, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    check-cast v9, Lorg/apache/http/message/BasicHttpResponse;

    .line 240
    .local v9, "response":Lorg/apache/http/message/BasicHttpResponse;
    const-string v10, "Response obtained."

    invoke-static {v10}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Status line: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lorg/apache/http/message/BasicHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v9}, Lorg/apache/http/message/BasicHttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v5, v0, v7

    .line 244
    .local v5, "h":Lorg/apache/http/Header;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "h":Lorg/apache/http/Header;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "response":Lorg/apache/http/message/BasicHttpResponse;
    :cond_0
    const/4 v10, 0x1

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v4

    .line 265
    .local v4, "ex":Ljava/lang/Exception;
    const-string v10, "HTTP"

    const-string v12, "Exception!"

    invoke-static {v10, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-static {v4}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    move-object v10, v11

    .line 269
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v10

    .line 247
    .restart local v0    # "arr$":[Lorg/apache/http/Header;
    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "response":Lorg/apache/http/message/BasicHttpResponse;
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 248
    .local v3, "ent":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 252
    .local v2, "data":[B
    :goto_3
    invoke-static {v2}, Lcom/rockstargames/hal/andHttp;->logDataSafe([B)V

    .line 254
    iget-boolean v10, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    if-nez v10, :cond_3

    .line 256
    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v9, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 248
    .end local v2    # "data":[B
    :cond_2
    const/4 v10, 0x0

    new-array v2, v10, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .restart local v2    # "data":[B
    :cond_3
    move-object v10, v11

    .line 260
    goto :goto_2
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->onPreExecute()V

    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/andHttp$1;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andHttp$1;-><init>(Lcom/rockstargames/hal/andHttp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    return v0
.end method

.method public native onConnectionFinished(I)V
.end method

.method public native onError(II)V
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/apache/http/HttpResponse;[B>;"
    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 274
    if-nez p1, :cond_0

    .line 277
    iget v9, p0, Lcom/rockstargames/hal/andHttp;->id:I

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Lcom/rockstargames/hal/andHttp;->onError(II)V

    .line 327
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v9

    invoke-static {v9}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    .line 328
    return-void

    .line 281
    :cond_0
    iget-object v9, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 282
    .local v8, "status":Lorg/apache/http/StatusLine;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v3, "headers":Ljava/lang/StringBuilder;
    iget-object v9, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 290
    .local v2, "head":Lorg/apache/http/Header;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 295
    .end local v2    # "head":Lorg/apache/http/Header;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v9, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [B

    array-length v9, v9

    if-ge v4, v9, :cond_4

    const/16 v9, 0x400

    if-ge v4, v9, :cond_4

    .line 298
    iget-object v9, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [B

    aget-byte v1, v9, v4

    .line 299
    .local v1, "b":B
    const/16 v9, 0x20

    if-lt v1, v9, :cond_3

    const/16 v9, 0x80

    if-ge v1, v9, :cond_3

    .line 300
    int-to-char v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_2

    .line 311
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 296
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 303
    :cond_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 314
    .end local v1    # "b":B
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 318
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    :cond_5
    iget v9, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V

    .line 323
    iget v11, p0, Lcom/rockstargames/hal/andHttp;->id:I

    iget-object v9, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v10, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [B

    array-length v10, v10

    invoke-virtual {p0, v11, v9, v10}, Lcom/rockstargames/hal/andHttp;->onReceivedData(I[BI)V

    .line 324
    iget v9, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-virtual {p0, v9}, Lcom/rockstargames/hal/andHttp;->onConnectionFinished(I)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting HTTP request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 213
    .local v1, "h":Lorg/apache/http/Header;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "h":Lorg/apache/http/Header;
    :cond_0
    return-void
.end method

.method public native onReceivedData(I[BI)V
.end method

.method public native onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public setPresenceConnection(Lcom/rockstargames/hal/PresenceConnection;)V
    .locals 0
    .param p1, "p"    # Lcom/rockstargames/hal/PresenceConnection;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/rockstargames/hal/andHttp;->presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

    return-void
.end method
