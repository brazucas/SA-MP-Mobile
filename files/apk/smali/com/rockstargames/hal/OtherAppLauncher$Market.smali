.class final enum Lcom/rockstargames/hal/OtherAppLauncher$Market;
.super Ljava/lang/Enum;
.source "OtherAppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/OtherAppLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Market"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockstargames/hal/OtherAppLauncher$Market;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockstargames/hal/OtherAppLauncher$Market;

.field public static final enum AMAZON:Lcom/rockstargames/hal/OtherAppLauncher$Market;

.field public static final enum PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;


# instance fields
.field public final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    const-string v1, "PLAY"

    const-string v2, "market://details?id="

    invoke-direct {v0, v1, v3, v2}, Lcom/rockstargames/hal/OtherAppLauncher$Market;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    .line 14
    new-instance v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    const-string v1, "AMAZON"

    const-string v2, "amzn://apps/android?asin="

    invoke-direct {v0, v1, v4, v2}, Lcom/rockstargames/hal/OtherAppLauncher$Market;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->AMAZON:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rockstargames/hal/OtherAppLauncher$Market;

    sget-object v1, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockstargames/hal/OtherAppLauncher$Market;->AMAZON:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->$VALUES:[Lcom/rockstargames/hal/OtherAppLauncher$Market;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "prefix_"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->prefix:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/OtherAppLauncher$Market;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    return-object v0
.end method

.method public static values()[Lcom/rockstargames/hal/OtherAppLauncher$Market;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->$VALUES:[Lcom/rockstargames/hal/OtherAppLauncher$Market;

    invoke-virtual {v0}, [Lcom/rockstargames/hal/OtherAppLauncher$Market;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockstargames/hal/OtherAppLauncher$Market;

    return-object v0
.end method
