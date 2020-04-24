.class Lcom/wardrumstudios/utils/WarGamepad$1;
.super Ljava/lang/Object;
.source "WarGamepad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGamepad;->USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGamepad;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGamepad;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad$1;->this$0:Lcom/wardrumstudios/utils/WarGamepad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad$1;->this$0:Lcom/wardrumstudios/utils/WarGamepad;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarGamepad;->USBDeviceRun()V

    .line 237
    return-void
.end method
