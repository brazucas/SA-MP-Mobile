.class public final Lorg/apache/commons/net/nntp/NNTPCommand;
.super Ljava/lang/Object;
.source "NNTPCommand.java"


# static fields
.field public static final ARTICLE:I = 0x0

.field public static final AUTHINFO:I = 0xf

.field public static final BODY:I = 0x1

.field public static final GROUP:I = 0x2

.field public static final HEAD:I = 0x3

.field public static final HELP:I = 0x4

.field public static final IHAVE:I = 0x5

.field public static final LAST:I = 0x6

.field public static final LIST:I = 0x7

.field public static final NEWGROUPS:I = 0x8

.field public static final NEWNEWS:I = 0x9

.field public static final NEXT:I = 0xa

.field public static final POST:I = 0xb

.field public static final QUIT:I = 0xc

.field public static final SLAVE:I = 0xd

.field public static final STAT:I = 0xe

.field public static final XHDR:I = 0x11

.field public static final XOVER:I = 0x10

.field private static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ARTICLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GROUP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HELP"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IHAVE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LAST"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LIST"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NEWGROUPS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NEWNEWS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "QUIT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SLAVE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "STAT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "AUTHINFO"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "XOVER"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "XHDR"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/nntp/NNTPCommand;->_commands:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .locals 1
    .param p0, "command"    # I

    .prologue
    .line 71
    sget-object v0, Lorg/apache/commons/net/nntp/NNTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
