.class public Lorg/apache/commons/net/bsd/RLoginClient;
.super Lorg/apache/commons/net/bsd/RCommandClient;
.source "RLoginClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x201


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/apache/commons/net/bsd/RCommandClient;-><init>()V

    .line 80
    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/bsd/RLoginClient;->setDefaultPort(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public rlogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localUsername"    # Ljava/lang/String;
    .param p2, "remoteUsername"    # Ljava/lang/String;
    .param p3, "terminalType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/bsd/RLoginClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

.method public rlogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "localUsername"    # Ljava/lang/String;
    .param p2, "remoteUsername"    # Ljava/lang/String;
    .param p3, "terminalType"    # Ljava/lang/String;
    .param p4, "terminalSpeed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/net/bsd/RLoginClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method
