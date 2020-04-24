.class public final enum Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
.super Ljava/lang/Enum;
.source "IMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS_DATA_ITEMS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum MESSAGES:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum RECENT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum UIDNEXT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum UIDVALIDITY:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "MESSAGES"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->MESSAGES:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 388
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 390
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "UIDNEXT"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDNEXT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 392
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "UIDVALIDITY"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDVALIDITY:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 394
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "UNSEEN"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 383
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->MESSAGES:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDNEXT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDVALIDITY:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

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
    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    return-object v0
.end method
