.class public final enum Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
.super Ljava/lang/Enum;
.source "IMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEARCH_CRITERIA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 403
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 405
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "ANSWERED"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 410
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "BCC"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 415
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "BEFORE"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 420
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 425
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "CC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 427
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "DELETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 429
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "DRAFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 431
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "FLAGGED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 436
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "FROM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 445
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "HEADER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 447
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "KEYWORD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 452
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "LARGER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 457
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "NEW"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 459
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "NOT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 465
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "OLD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 470
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "ON"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 472
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "OR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 474
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "RECENT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 476
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "SEEN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 481
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "SENTBEFORE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 486
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "SENTON"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 491
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "SENTSINCE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 496
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "SINCE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 501
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "SMALLER"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 506
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "SUBJECT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 511
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "TEXT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 516
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "TO"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 521
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "UID"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 523
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "UNANSWERED"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 525
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "UNDELETED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 527
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "UNDRAFT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 529
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "UNFLAGGED"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 531
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "UNKEYWORD"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 533
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v1, "UNSEEN"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 400
    const/16 v0, 0x23

    new-array v0, v0, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

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
    .line 400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 400
    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    return-object v0
.end method
