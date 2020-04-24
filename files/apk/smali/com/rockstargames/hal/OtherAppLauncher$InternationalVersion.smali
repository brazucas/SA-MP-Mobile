.class Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
.super Ljava/lang/Object;
.source "OtherAppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/OtherAppLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternationalVersion"
.end annotation


# instance fields
.field public locale:Ljava/lang/String;

.field public marketIdentifier:Ljava/lang/String;

.field public packageIdentifer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->locale:Ljava/lang/String;

    iput-object p1, p0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->marketIdentifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    iput-object p3, p0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->locale:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->marketIdentifier:Ljava/lang/String;

    return-void
.end method
