.class public final Lorg/apache/commons/net/util/KeyManagerUtils;
.super Ljava/lang/Object;
.source "KeyManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;,
        Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;
    }
.end annotation


# static fields
.field private static final DEFAULT_STORE_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static createClientKeyManager(Ljava/io/File;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 2
    .param p0, "storePath"    # Ljava/io/File;
    .param p1, "storePass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p1}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public static createClientKeyManager(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 1
    .param p0, "storePath"    # Ljava/io/File;
    .param p1, "storePass"    # Ljava/lang/String;
    .param p2, "keyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p1}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public static createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 2
    .param p0, "storeType"    # Ljava/lang/String;
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "storePass"    # Ljava/lang/String;
    .param p3, "keyAlias"    # Ljava/lang/String;
    .param p4, "keyPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0, p1, p2}, Lorg/apache/commons/net/util/KeyManagerUtils;->loadStore(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 104
    .local v0, "ks":Ljava/security/KeyStore;
    invoke-static {v0, p3, p4}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object v1

    return-object v1
.end method

.method public static createClientKeyManager(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 2
    .param p0, "ks"    # Ljava/security/KeyStore;
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "keyPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    if-eqz p1, :cond_0

    .end local p1    # "keyAlias":Ljava/lang/String;
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;-><init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, "cks":Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;
    new-instance v1, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;-><init>(Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;)V

    return-object v1

    .line 85
    .end local v0    # "cks":Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;
    .restart local p1    # "keyAlias":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/net/util/KeyManagerUtils;->findAlias(Ljava/security/KeyStore;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static findAlias(Ljava/security/KeyStore;)Ljava/lang/String;
    .locals 4
    .param p0, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 154
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    return-object v1

    .line 160
    .end local v1    # "entry":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Cannot find a private key entry"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static loadStore(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4
    .param p0, "storeType"    # Ljava/lang/String;
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "storePass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 142
    .local v0, "ks":Ljava/security/KeyStore;
    const/4 v1, 0x0

    .line 144
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    invoke-static {v2}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    return-object v0

    .line 147
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method
