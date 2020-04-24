.class final enum Lcom/rockstargames/hal/andLabel$TextAlignment;
.super Ljava/lang/Enum;
.source "andLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockstargames/hal/andLabel$TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_CENTER:Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_JUSTIFY:Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_LEFT:Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_RIGHT:Lcom/rockstargames/hal/andLabel$TextAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_CENTER"

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_CENTER:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 217
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_LEFT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 218
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_RIGHT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 219
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_JUSTIFY"

    invoke-direct {v0, v1, v5}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_JUSTIFY:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rockstargames/hal/andLabel$TextAlignment;

    sget-object v1, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_CENTER:Lcom/rockstargames/hal/andLabel$TextAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_LEFT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_RIGHT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_JUSTIFY:Lcom/rockstargames/hal/andLabel$TextAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->$VALUES:[Lcom/rockstargames/hal/andLabel$TextAlignment;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/andLabel$TextAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    const-class v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    return-object v0
.end method

.method public static values()[Lcom/rockstargames/hal/andLabel$TextAlignment;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->$VALUES:[Lcom/rockstargames/hal/andLabel$TextAlignment;

    invoke-virtual {v0}, [Lcom/rockstargames/hal/andLabel$TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockstargames/hal/andLabel$TextAlignment;

    return-object v0
.end method
