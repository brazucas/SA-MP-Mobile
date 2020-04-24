.class public Lcom/wardrumstudios/utils/WarBase;
.super Lcom/nvidia/devtech/NvEventQueueActivity;
.source "WarBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WarBase"


# instance fields
.field private mLifecycleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wardrumstudios/utils/WarActivityLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsbManager:Landroid/hardware/usb/UsbManager;

.field protected mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public AddLifecycleListener(Lcom/wardrumstudios/utils/WarActivityLifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method CreateUSBReceiver()V
    .locals 3

    .prologue
    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 169
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v1, "WarBase"

    const-string v2, "Creating USB intent receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Lcom/wardrumstudios/utils/WarBase$1;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarBase$1;-><init>(Lcom/wardrumstudios/utils/WarBase;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/wardrumstudios/utils/WarBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    const-string v1, "WarBase"

    const-string v2, "Receiver set up"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public DestroyUSBReceiver()V
    .locals 2

    .prologue
    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public SetGamepad(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamepadString"    # Ljava/lang/String;

    .prologue
    .line 189
    return-void
.end method

.method public USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    return-void
.end method

.method public USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 112
    .local v1, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v1    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/nvidia/devtech/NvEventQueueActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 31
    invoke-super {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 35
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBase;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 36
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarBase;->CreateUSBReceiver()V

    .line 38
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarBase;->DestroyUSBReceiver()V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 55
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 56
    .local v1, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v1}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onPause()V

    goto :goto_0

    .line 59
    .end local v1    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onPause()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 76
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v5, "WarBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnResume -> Intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_0

    .line 80
    const-string v5, "device"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 81
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    const-string v5, "WarBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnResume -> ACTION_USB_DEVICE_ATTACHED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/wardrumstudios/utils/WarBase;->USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 91
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 92
    .local v4, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v4}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onResume()V

    goto :goto_1

    .line 84
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    .restart local v1    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1
    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    const-string v5, "WarBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnResume -> ACTION_USB_DEVICE_DETACHED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/wardrumstudios/utils/WarBase;->USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onResume()V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 45
    .local v1, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v1}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onStart()V

    goto :goto_0

    .line 48
    .end local v1    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onStart()V

    .line 49
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBase;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;

    .line 67
    .local v1, "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    invoke-interface {v1}, Lcom/wardrumstudios/utils/WarActivityLifecycleListener;->onStop()V

    goto :goto_0

    .line 70
    .end local v1    # "listener":Lcom/wardrumstudios/utils/WarActivityLifecycleListener;
    :cond_0
    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onStop()V

    .line 71
    return-void
.end method
