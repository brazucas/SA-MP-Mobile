.class public final enum Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
.super Ljava/lang/Enum;
.source "AuthenticatingSMTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUTH_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 301
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "CRAM_MD5"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 303
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 305
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "XOAUTH"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getAuthName(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .prologue
    .line 314
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "PLAIN"

    .line 323
    :goto_0
    return-object v0

    .line 316
    :cond_0
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const-string v0, "CRAM-MD5"

    goto :goto_0

    .line 318
    :cond_1
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const-string v0, "LOGIN"

    goto :goto_0

    .line 320
    :cond_2
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    const-string v0, "XOAUTH"

    goto :goto_0

    .line 323
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 296
    const-class v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {v0}, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    return-object v0
.end method
