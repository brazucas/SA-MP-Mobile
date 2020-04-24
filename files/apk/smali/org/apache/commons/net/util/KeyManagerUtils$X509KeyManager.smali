.class Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/KeyManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509KeyManager"
.end annotation


# instance fields
.field private final keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;


# direct methods
.method constructor <init>(Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .prologue
    .line 198
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 199
    iput-object p1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 200
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v2}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getAlias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method
