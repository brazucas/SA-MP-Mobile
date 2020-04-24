.class Lcom/AdX/tag/DeviceSerial$DeviceSerialHolder;
.super Ljava/lang/Object;
.source "DeviceSerial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AdX/tag/DeviceSerial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceSerialHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/AdX/tag/DeviceSerial;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/AdX/tag/DeviceSerial;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/AdX/tag/DeviceSerial;-><init>(Lcom/AdX/tag/DeviceSerial;)V

    sput-object v0, Lcom/AdX/tag/DeviceSerial$DeviceSerialHolder;->INSTANCE:Lcom/AdX/tag/DeviceSerial;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/AdX/tag/DeviceSerial;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/AdX/tag/DeviceSerial$DeviceSerialHolder;->INSTANCE:Lcom/AdX/tag/DeviceSerial;

    return-object v0
.end method
