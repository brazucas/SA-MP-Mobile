.class public Lcom/AdX/tag/DeviceSerial;
.super Ljava/lang/Object;
.source "DeviceSerial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/AdX/tag/DeviceSerial$DeviceSerialHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/AdX/tag/DeviceSerial;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/AdX/tag/DeviceSerial;-><init>()V

    return-void
.end method

.method public static getDeviceSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/AdX/tag/DeviceSerial;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/AdX/tag/DeviceSerial$DeviceSerialHolder;->access$0()Lcom/AdX/tag/DeviceSerial;

    move-result-object v0

    return-object v0
.end method
