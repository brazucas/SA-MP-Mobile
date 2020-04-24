.class public final enum Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
.super Ljava/lang/Enum;
.source "IMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FETCH_ITEM_NAMES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 542
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 544
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "FAST"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 546
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 548
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 550
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "BODYSTRUCTURE"

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 552
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "ENVELOPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 554
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "FLAGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 556
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "INTERNALDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 558
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "RFC822"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 560
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "UID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 539
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

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
    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 539
    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    .locals 1

    .prologue
    .line 539
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    return-object v0
.end method
