.class public Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;
.super Ljava/lang/Exception;
.source "InvalidTelnetOptionException.java"


# static fields
.field private static final serialVersionUID:J = -0x22ed637d25f421fdL


# instance fields
.field private final msg:Ljava/lang/String;

.field private final optionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "optcode"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 50
    iput p2, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->optionCode:I

    .line 51
    iput-object p1, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->msg:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;->optionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
