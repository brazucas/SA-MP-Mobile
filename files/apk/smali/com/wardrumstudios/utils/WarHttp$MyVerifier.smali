.class Lcom/wardrumstudios/utils/WarHttp$MyVerifier;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "WarHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyVerifier"
.end annotation


# instance fields
.field private final delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarHttp;


# direct methods
.method public constructor <init>(Lcom/wardrumstudios/utils/WarHttp;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 0
    .param p2, "delegate"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->this$0:Lcom/wardrumstudios/utils/WarHttp;

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 117
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v5, 0x0

    .line 124
    .local v5, "ok":Z
    :try_start_0
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljavax/net/ssl/SSLException;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 127
    .local v1, "cn":Ljava/lang/String;
    const-string v6, "*."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "onmodulus.net"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .line 132
    :cond_1
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarHttp$MyVerifier;->delegate:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, p1, v7, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    const/4 v5, 0x1

    .line 126
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "cn":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_0

    throw v2

    .line 135
    .restart local v1    # "cn":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
