.class public Lorg/apache/commons/net/PrintCommandListener;
.super Ljava/lang/Object;
.source "PrintCommandListener.java"

# interfaces
.implements Lorg/apache/commons/net/ProtocolCommandListener;


# instance fields
.field private final __directionMarker:Z

.field private final __eolMarker:C

.field private final __nologin:Z

.field private final __writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 48
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Z)V
    .locals 1
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "suppressLogin"    # Z

    .prologue
    .line 61
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZC)V
    .locals 1
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "suppressLogin"    # Z
    .param p3, "eolMarker"    # C

    .prologue
    .line 75
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZCZ)V
    .locals 1
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "suppressLogin"    # Z
    .param p3, "eolMarker"    # C
    .param p4, "showDirection"    # Z

    .prologue
    .line 90
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Z)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "suppressLogin"    # Z

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZC)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "suppressLogin"    # Z
    .param p3, "eolMarker"    # C

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZCZ)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "suppressLogin"    # Z
    .param p3, "eolMarker"    # C
    .param p4, "showDirection"    # Z

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    .line 145
    iput-boolean p2, p0, Lorg/apache/commons/net/PrintCommandListener;->__nologin:Z

    .line 146
    iput-char p3, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    .line 147
    iput-boolean p4, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    .line 148
    return-void
.end method

.method private getPrintableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-char v2, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    if-nez v2, :cond_1

    .line 190
    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 182
    .restart local p1    # "msg":Ljava/lang/String;
    :cond_1
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "pos":I
    if-lez v0, :cond_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-char v2, p0, Lorg/apache/commons/net/PrintCommandListener;->__eolMarker:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/commons/net/ProtocolCommandEvent;

    .prologue
    .line 153
    iget-boolean v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-boolean v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__nologin:Z

    if-eqz v3, :cond_4

    .line 157
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "cmd":Ljava/lang/String;
    const-string v3, "PASS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "USER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v4, " *******"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .end local v1    # "cmd":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 176
    return-void

    .line 162
    .restart local v1    # "cmd":Ljava/lang/String;
    :cond_2
    const-string v0, "LOGIN"

    .line 163
    .local v0, "IMAP_LOGIN":Ljava/lang/String;
    const-string v3, "LOGIN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "msg":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "LOGIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "LOGIN"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v4, " *******"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v0    # "IMAP_LOGIN":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/commons/net/ProtocolCommandEvent;

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__directionMarker:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->__writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 200
    return-void
.end method
