.class public final Lorg/apache/commons/net/smtp/SMTPCommand;
.super Ljava/lang/Object;
.source "SMTPCommand.java"


# static fields
.field public static final AUTH:I = 0xe

.field public static final DATA:I = 0x3

.field public static final EHLO:I = 0xf

.field public static final EXPAND:I = 0x9

.field public static final EXPN:I = 0x9

.field public static final HELLO:I = 0x0

.field public static final HELO:I = 0x0

.field public static final HELP:I = 0xa

.field public static final LOGIN:I = 0x0

.field public static final LOGOUT:I = 0xd

.field public static final MAIL:I = 0x1

.field public static final MAIL_FROM:I = 0x1

.field public static final NOOP:I = 0xb

.field public static final QUIT:I = 0xd

.field public static final RCPT:I = 0x2

.field public static final RECIPIENT:I = 0x2

.field public static final RESET:I = 0x7

.field public static final RSET:I = 0x7

.field public static final SAML:I = 0x6

.field public static final SEND:I = 0x4

.field public static final SEND_AND_MAIL_FROM:I = 0x6

.field public static final SEND_FROM:I = 0x4

.field public static final SEND_MESSAGE_DATA:I = 0x3

.field public static final SEND_OR_MAIL_FROM:I = 0x5

.field public static final SOML:I = 0x5

.field public static final TURN:I = 0xc

.field public static final VERIFY:I = 0x8

.field public static final VRFY:I = 0x8

.field private static final _NEXT_:I = 0x10

.field private static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HELO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MAIL FROM:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RCPT TO:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SEND FROM:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SOML FROM:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SAML FROM:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RSET"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VRFY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EXPN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HELP"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NOOP"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TURN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "QUIT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AUTH"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EHLO"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->_commands:[Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->_commands:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, v3, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in array definition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .locals 1
    .param p0, "command"    # I

    .prologue
    .line 108
    sget-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
