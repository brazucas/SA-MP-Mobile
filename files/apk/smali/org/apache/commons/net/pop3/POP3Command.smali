.class public final Lorg/apache/commons/net/pop3/POP3Command;
.super Ljava/lang/Object;
.source "POP3Command.java"


# static fields
.field public static final APOP:I = 0x9

.field public static final AUTH:I = 0xd

.field public static final CAPA:I = 0xc

.field public static final DELE:I = 0x6

.field public static final LIST:I = 0x4

.field public static final NOOP:I = 0x7

.field public static final PASS:I = 0x1

.field public static final QUIT:I = 0x2

.field public static final RETR:I = 0x5

.field public static final RSET:I = 0x8

.field public static final STAT:I = 0x3

.field public static final TOP:I = 0xa

.field public static final UIDL:I = 0xb

.field public static final USER:I = 0x0

.field private static final _NEXT_:I = 0xe

.field static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 65
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PASS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "QUIT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STAT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LIST"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RETR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DELE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RSET"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "APOP"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TOP"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UIDL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CAPA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AUTH"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    .line 71
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, v3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in array definition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .locals 1
    .param p0, "command"    # I

    .prologue
    .line 87
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
