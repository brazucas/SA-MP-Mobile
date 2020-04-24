.class public final Lorg/apache/commons/net/pop3/POP3MessageInfo;
.super Ljava/lang/Object;
.source "POP3MessageInfo.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public number:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "num"    # I
    .param p2, "octets"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "num"    # I
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;I)V

    .line 75
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "num"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->number:I

    .line 79
    iput p3, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->size:I

    .line 80
    iput-object p2, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->identifier:Ljava/lang/String;

    .line 81
    return-void
.end method
