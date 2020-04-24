.class public final Lorg/apache/commons/net/telnet/TelnetCommand;
.super Ljava/lang/Object;
.source "TelnetCommand.java"


# static fields
.field public static final ABORT:I = 0xee

.field public static final AO:I = 0xf5

.field public static final AYT:I = 0xf6

.field public static final BREAK:I = 0xf3

.field public static final DM:I = 0xf2

.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final EC:I = 0xf7

.field public static final EL:I = 0xf8

.field public static final EOF:I = 0xec

.field public static final EOR:I = 0xef

.field public static final GA:I = 0xf9

.field public static final IAC:I = 0xff

.field public static final IP:I = 0xf4

.field public static final MAX_COMMAND_VALUE:I = 0xff

.field public static final NOP:I = 0xf1

.field public static final SB:I = 0xfa

.field public static final SE:I = 0xf0

.field public static final SUSP:I = 0xed

.field public static final SYNCH:I = 0xf2

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc

.field private static final __FIRST_COMMAND:I = 0xff

.field private static final __LAST_COMMAND:I = 0xec

.field private static final __commandString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IAC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DONT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WONT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WILL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AYT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AO"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IP"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "BRK"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DMARK"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NOP"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EOR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ABORT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "SUSP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EOF"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/telnet/TelnetCommand;->__commandString:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 113
    sget-object v0, Lorg/apache/commons/net/telnet/TelnetCommand;->__commandString:[Ljava/lang/String;

    rsub-int v1, p0, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final isValidCommand(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 125
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/16 v0, 0xec

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
