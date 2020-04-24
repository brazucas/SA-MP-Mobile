.class public Lcom/wardrumstudios/utils/WarGamepad;
.super Lcom/wardrumstudios/utils/WarBilling;
.source "WarGamepad.java"

# interfaces
.implements Lcom/bda/controller/ControllerListener;


# static fields
.field private static final COMMAND_DOWN:I = 0x2

.field private static final COMMAND_FIRE:I = 0x10

.field private static final COMMAND_LEFT:I = 0x8

.field private static final COMMAND_RIGHT:I = 0x4

.field private static final COMMAND_STATUS:I = 0x40

.field private static final COMMAND_STOP:I = 0x20

.field private static final COMMAND_UP:I = 0x1

.field private static final OSGT_60beat:I = 0x2

.field private static final OSGT_AmazonGamepad:I = 0xc

.field private static final OSGT_AmazonRemote:I = 0xb

.field private static final OSGT_AndroidTV:I = 0xd

.field private static final OSGT_Gamestop:I = 0x3

.field private static final OSGT_Generic:I = 0x5

.field private static final OSGT_IOSExtended:I = 0x9

.field private static final OSGT_IOSSimple:I = 0xa

.field private static final OSGT_Moga:I = 0x4

.field private static final OSGT_MogaPro:I = 0x7

.field private static final OSGT_Nyko:I = 0x6

.field private static final OSGT_PS3:I = 0x8

.field private static final OSGT_Xbox360:I = 0x0

.field private static final OSGT_XperiaPlay:I = 0x1

.field private static final OSX360_A:I = 0x1

.field private static final OSX360_AXIS_L2:I = 0x4

.field private static final OSX360_AXIS_R2:I = 0x5

.field private static final OSX360_AXIS_X1:I = 0x0

.field private static final OSX360_AXIS_X2:I = 0x2

.field private static final OSX360_AXIS_Y1:I = 0x1

.field private static final OSX360_AXIS_Y2:I = 0x3

.field private static final OSX360_B:I = 0x2

.field private static final OSX360_BACK:I = 0x20

.field private static final OSX360_DPADDOWN:I = 0x200

.field private static final OSX360_DPADLEFT:I = 0x400

.field private static final OSX360_DPADRIGHT:I = 0x800

.field private static final OSX360_DPADUP:I = 0x100

.field private static final OSX360_L1:I = 0x40

.field private static final OSX360_L3:I = 0x1000

.field private static final OSX360_R1:I = 0x80

.field private static final OSX360_R3:I = 0x2000

.field private static final OSX360_START:I = 0x10

.field private static final OSX360_X:I = 0x4

.field private static final OSX360_Y:I = 0x8

.field private static final OSXP_BACK:I = 0x4000

.field private static final OSXP_GP_MENU:I = 0x8000

.field private static final OSXP_MENU:I = 0x1000

.field private static final OSXP_SEARCH:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "WarGamepad"


# instance fields
.field DpadIsAxis:Z

.field public GamepadAxes:[F

.field public GamepadButtonMask:I

.field public GamepadDpadHack:I

.field public GamepadTouchReversed:Z

.field public GamepadTouches:[I

.field public GamepadType:I

.field protected IsAndroidTV:Z

.field NykoCheckHacks:I

.field private is360:Z

.field private isXperia:Z

.field public lastConnect:J

.field public lastDisconnect:J

.field private mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private mGamepadDevice:Landroid/hardware/usb/UsbDevice;

.field private mGamepadEndpointIntr:Landroid/hardware/usb/UsbEndpoint;

.field private mGamepadThread:Ljava/lang/Thread;

.field private mLastGamepadInputDevice:Landroid/view/InputDevice;

.field mightBeNyko:Z

.field mobiX:F

.field mobiY:F

.field mogaController:Lcom/bda/controller/Controller;

.field public numGamepadTouchSamples:I

.field public reportPS3as360:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarBilling;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->IsAndroidTV:Z

    .line 45
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->reportPS3as360:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    .line 48
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->mobiX:F

    .line 49
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->mobiY:F

    .line 51
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    .line 52
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->DpadIsAxis:Z

    .line 112
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadDpadHack:I

    .line 113
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 122
    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    .line 123
    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    return-void
.end method

.method private ClearBadJoystickAxis()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 419
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 421
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Clearing Bad Joystick Axis"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v3, v0, v4

    .line 424
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v3, v0, v5

    .line 425
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v3, v0, v6

    .line 426
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 429
    :cond_0
    return-void
.end method

.method private static IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 504
    .local v0, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 509
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_1

    .line 510
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 511
    .local v0, "flat":F
    if-gez p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 514
    .local v2, "value":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 518
    .end local v0    # "flat":F
    .end local v2    # "value":F
    :goto_1
    return v2

    .line 511
    .restart local v0    # "flat":F
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v2

    goto :goto_0

    .line 518
    .end local v0    # "flat":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .prologue
    const/high16 v12, -0x41000000    # -0.5f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x3f400000    # 0.75f

    const/4 v8, 0x0

    .line 437
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-static {p1, v5, v8, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v5

    aput v5, v4, v8

    .line 438
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-static {p1, v5, v10, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v5

    aput v5, v4, v10

    .line 439
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v7, 0xb

    invoke-static {p1, v6, v7, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    aput v6, v4, v5

    .line 440
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v7, 0xe

    invoke-static {p1, v6, v7, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    aput v6, v4, v5

    .line 442
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0x11

    invoke-static {p1, v4, v5}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0x17

    invoke-static {p1, v4, v5}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    :cond_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0x11

    invoke-static {p1, v4, v5, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v2

    .line 444
    .local v2, "valL2":F
    cmpl-float v4, v2, v11

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v7, 0x17

    invoke-static {p1, v6, v7, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v2

    .end local v2    # "valL2":F
    aput v2, v4, v5

    .line 445
    .restart local v2    # "valL2":F
    :cond_1
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v5, 0x4

    aput v2, v4, v5

    .line 447
    .end local v2    # "valL2":F
    :cond_2
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0x12

    invoke-static {p1, v4, v5}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0x16

    invoke-static {p1, v4, v5}, Lcom/wardrumstudios/utils/WarGamepad;->IsValidAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 448
    :cond_3
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0x12

    invoke-static {p1, v4, v5, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 449
    .local v3, "valR2":F
    cmpl-float v4, v3, v11

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v7, 0x16

    invoke-static {p1, v6, v7, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .end local v3    # "valR2":F
    aput v3, v4, v5

    .line 450
    .restart local v3    # "valR2":F
    :cond_4
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v5, 0x5

    aput v3, v4, v5

    .line 455
    .end local v3    # "valR2":F
    :cond_5
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_11

    .line 456
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0xf

    invoke-static {p1, v4, v5, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 457
    .local v0, "DPAD_X":F
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v5, 0x10

    invoke-static {p1, v4, v5, p2}, Lcom/wardrumstudios/utils/WarGamepad;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 459
    .local v1, "DPAD_Y":F
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    if-eqz v4, :cond_e

    .line 460
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v8

    cmpl-float v4, v4, v9

    if-lez v4, :cond_6

    cmpl-float v4, v0, v9

    if-lez v4, :cond_6

    .line 461
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    .line 462
    :cond_6
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v8

    const/high16 v5, -0x40c00000    # -0.75f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    const/high16 v4, -0x40c00000    # -0.75f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    .line 463
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    .line 464
    :cond_7
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v10

    cmpl-float v4, v4, v9

    if-lez v4, :cond_8

    cmpl-float v4, v1, v9

    if-lez v4, :cond_8

    .line 465
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    .line 466
    :cond_8
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v10

    const v5, -0x40cccccd    # -0.7f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    cmpg-float v4, v1, v9

    if-gez v4, :cond_9

    .line 467
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    .line 469
    :cond_9
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v8

    cmpl-float v4, v4, v9

    if-lez v4, :cond_a

    cmpl-float v4, v0, v11

    if-nez v4, :cond_a

    .line 470
    iput-boolean v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    .line 471
    :cond_a
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v8

    const/high16 v5, -0x40c00000    # -0.75f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    cmpl-float v4, v0, v11

    if-nez v4, :cond_b

    .line 472
    iput-boolean v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    .line 473
    :cond_b
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v10

    cmpl-float v4, v4, v9

    if-lez v4, :cond_c

    cmpl-float v4, v1, v11

    if-nez v4, :cond_c

    .line 474
    iput-boolean v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    .line 475
    :cond_c
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v4, v4, v10

    const/high16 v5, -0x40c00000    # -0.75f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    cmpl-float v4, v1, v11

    if-nez v4, :cond_d

    .line 476
    iput-boolean v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    .line 478
    :cond_d
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_e

    .line 479
    const/4 v4, 0x6

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 480
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "detecting NYKO controller"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    :cond_e
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadDpadHack:I

    if-ne v4, v10, :cond_10

    .line 485
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_f

    cmpg-float v4, v0, v12

    if-ltz v4, :cond_f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_f

    cmpg-float v4, v1, v12

    if-gez v4, :cond_11

    .line 486
    :cond_f
    iput v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadDpadHack:I

    .line 491
    :cond_10
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_12

    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 493
    :goto_0
    cmpg-float v4, v0, v12

    if-gez v4, :cond_13

    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 495
    :goto_1
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_14

    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 497
    :goto_2
    cmpg-float v4, v1, v12

    if-gez v4, :cond_15

    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 500
    .end local v0    # "DPAD_X":F
    .end local v1    # "DPAD_Y":F
    :cond_11
    :goto_3
    return-void

    .line 492
    .restart local v0    # "DPAD_X":F
    .restart local v1    # "DPAD_Y":F
    :cond_12
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    and-int/lit16 v4, v4, -0x801

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    goto :goto_0

    .line 494
    :cond_13
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    and-int/lit16 v4, v4, -0x401

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    goto :goto_1

    .line 496
    :cond_14
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    and-int/lit16 v4, v4, -0x201

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    goto :goto_2

    .line 498
    :cond_15
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    and-int/lit16 v4, v4, -0x101

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    goto :goto_3
.end method

.method private sendCommand(I)V
    .locals 8
    .param p1, "control"    # I

    .prologue
    .line 306
    monitor-enter p0

    .line 307
    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    .line 308
    :try_start_0
    const-string v0, "WarGamepad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 312
    .local v5, "message":[B
    const/4 v0, 0x0

    int-to-byte v1, p1

    aput-byte v1, v5, v0

    .line 314
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x21

    const/16 v2, 0x9

    const/16 v3, 0x200

    const/4 v4, 0x0

    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 317
    .end local v5    # "message":[B
    :cond_1
    monitor-exit p0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setProcessTouchpadAsPointer(Z)V
    .locals 6
    .param p1, "processAsPointer"    # Z

    .prologue
    .line 760
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0xd

    if-gt v3, v4, :cond_0

    .line 762
    :try_start_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGamepad;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 763
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 764
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 765
    .local v2, "viewRoot":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    .line 766
    invoke-virtual {p0, v2, p1}, Lcom/wardrumstudios/utils/WarGamepad;->processTouchpadAsPointer(Landroid/view/ViewParent;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 768
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Processing touchpad as pointer succeeded"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 780
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "viewRoot":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 771
    .restart local v1    # "root":Landroid/view/View;
    .restart local v2    # "viewRoot":Landroid/view/ViewParent;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Processing touchpad as pointer failed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 775
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "viewRoot":Landroid/view/ViewParent;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 777
    :catch_1
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set processTouchpadAsPointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public CheckNavigation(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "withConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 738
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v0, v2, :cond_1

    .line 740
    const-string v0, "WarGamepad"

    const-string v1, "Attached xPeria play gamepad."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iput v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 742
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    .line 743
    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 744
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v0, v2, :cond_0

    .line 747
    const-string v0, "WarGamepad"

    const-string v1, "Detaching xPeria play gamepad."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 749
    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastDisconnect:J

    goto :goto_0
.end method

.method public GamepadReportSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 785
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Processing touchpad as pointer..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 786
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->setProcessTouchpadAsPointer(Z)V

    .line 787
    return-void
.end method

.method public GetGamepadAxis(I)F
    .locals 1
    .param p1, "axisId"    # I

    .prologue
    .line 885
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aget v0, v0, p1

    return v0
.end method

.method public GetGamepadButtons()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    return v0
.end method

.method public GetGamepadTrack(II)I
    .locals 6
    .param p1, "trackId"    # I
    .param p2, "coord"    # I

    .prologue
    const/4 v5, 0x4

    .line 889
    iget v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->numGamepadTouchSamples:I

    if-ge v2, v5, :cond_0

    const/4 v2, 0x0

    .line 896
    :goto_0
    return v2

    .line 891
    :cond_0
    const/4 v0, 0x0

    .line 892
    .local v0, "average":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 893
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouches:[I

    mul-int/lit8 v3, p1, 0x8

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 896
    :cond_1
    div-int/lit8 v2, v0, 0x4

    goto :goto_0
.end method

.method public GetGamepadType()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    return v0
.end method

.method GetMogaControllerType()I
    .locals 5

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x4

    .line 901
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v3, v1}, Lcom/bda/controller/Controller;->getState(I)I

    move-result v0

    .line 902
    .local v0, "mogaType":I
    if-nez v0, :cond_0

    .line 905
    :goto_0
    return v1

    .line 903
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 904
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moga controller type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    .line 905
    goto :goto_0
.end method

.method GetWithDeadZone(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 990
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, -0x4030000000000000L    # -0.25

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 992
    .end local p1    # "x":F
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "x":F
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public SetGamepad(Ljava/lang/String;)V
    .locals 1
    .param p1, "gamepadString"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "GS controller"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const/4 v0, 0x3

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    goto :goto_0
.end method

.method public TouchpadEvent(IIIIII)V
    .locals 4
    .param p1, "touchAction"    # I
    .param p2, "count"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 829
    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_1

    .line 830
    :cond_0
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->numGamepadTouchSamples:I

    .line 832
    if-ne p1, v3, :cond_2

    .line 833
    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 834
    invoke-virtual {p0, v3, v2, v2, v3}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 857
    :goto_0
    return-void

    .line 838
    :cond_1
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->numGamepadTouchSamples:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->numGamepadTouchSamples:I

    .line 841
    :cond_2
    const/4 v0, 0x0

    .line 842
    .local v0, "fullChange":Z
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 843
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouchReversed:Z

    .line 844
    const/4 v0, 0x1

    .line 850
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouchReversed:Z

    if-eqz v1, :cond_6

    .line 851
    invoke-virtual {p0, v3, p3, p4, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 852
    invoke-virtual {p0, v2, p5, p6, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    goto :goto_0

    .line 845
    :cond_4
    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    .line 846
    :cond_5
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouchReversed:Z

    .line 847
    const/4 v0, 0x1

    goto :goto_1

    .line 854
    :cond_6
    invoke-virtual {p0, v2, p3, p4, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    .line 855
    invoke-virtual {p0, v3, p5, p6, v0}, Lcom/wardrumstudios/utils/WarGamepad;->UpdateTrack(IIIZ)V

    goto :goto_0
.end method

.method public USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    const-string v3, "WarGamepad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Attached : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string v3, "WarGamepad"

    const-string v4, "Given null device?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v3, :cond_1

    .line 200
    const-string v3, "WarGamepad"

    const-string v4, "Joystick already attached!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 205
    const-string v3, "WarGamepad"

    const-string v4, "could not find interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p1, v6}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 211
    .local v2, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-eq v3, v7, :cond_3

    .line 212
    const-string v3, "WarGamepad"

    const-string v4, "could not find endpoint"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 217
    .local v1, "ep":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 218
    const-string v3, "WarGamepad"

    const-string v4, "endpoint is not interrupt type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_4
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    .line 223
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 224
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_6

    invoke-virtual {v0, v2, v7}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 225
    const-string v3, "WarGamepad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success, I have a USB gamepad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 227
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PLAYSTATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    .line 229
    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->reportPS3as360:Z

    if-nez v3, :cond_5

    const/16 v3, 0x8

    iput v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 231
    :cond_5
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadDevice:Landroid/hardware/usb/UsbDevice;

    .line 232
    iput-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadEndpointIntr:Landroid/hardware/usb/UsbEndpoint;

    .line 233
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 234
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/wardrumstudios/utils/WarGamepad$1;

    invoke-direct {v4, p0}, Lcom/wardrumstudios/utils/WarGamepad$1;-><init>(Lcom/wardrumstudios/utils/WarGamepad;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadThread:Ljava/lang/Thread;

    .line 239
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J

    .line 249
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->USBDeviceAttached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_6
    const-string v3, "WarGamepad"

    const-string v4, "Failed to open USB gamepad"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v3, -0x1

    iput v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 245
    iput-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadDevice:Landroid/hardware/usb/UsbDevice;

    .line 246
    iput-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    goto :goto_1
.end method

.method public USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 254
    iget v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v0, v2, :cond_1

    .line 255
    const-string v0, "WarGamepad"

    const-string v1, "Disconnected gamepad, stopping usb thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadDevice:Landroid/hardware/usb/UsbDevice;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 261
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 264
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastDisconnect:J

    .line 266
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->USBDeviceDetached(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public USBDeviceRun()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 273
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 274
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 275
    .local v2, "request":Landroid/hardware/usb/UsbRequest;
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadEndpointIntr:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2, v4, v5}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 276
    const/4 v3, -0x1

    .line 279
    .local v3, "status":B
    :goto_0
    invoke-virtual {v2, v0, v7}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 281
    const/16 v4, 0x40

    invoke-direct {p0, v4}, Lcom/wardrumstudios/utils/WarGamepad;->sendCommand(I)V

    .line 283
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->mGamepadConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 284
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 285
    .local v1, "newStatus":B
    const-string v4, "WarGamepad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****got status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eq v1, v3, :cond_0

    .line 287
    const-string v4, "WarGamepad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move v3, v1

    .line 289
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_0

    .line 291
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/wardrumstudios/utils/WarGamepad;->sendCommand(I)V

    .line 295
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v4

    goto :goto_0

    .line 299
    .end local v1    # "newStatus":B
    :cond_1
    const-string v4, "WarGamepad"

    const-string v5, "requestWait failed, exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public UpdateTrack(IIIZ)V
    .locals 4
    .param p1, "trackNo"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "fullChange"    # Z

    .prologue
    .line 860
    if-eqz p4, :cond_0

    .line 861
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 862
    mul-int/lit8 v2, p1, 0x8

    mul-int/lit8 v3, v0, 0x2

    add-int v1, v2, v3

    .line 864
    .local v1, "index":I
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouches:[I

    aput p2, v2, v1

    .line 865
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouches:[I

    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_0
    mul-int/lit8 v2, p1, 0x8

    iget v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->numGamepadTouchSamples:I

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 870
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouches:[I

    aput p2, v2, v1

    .line 871
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouches:[I

    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 873
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->CheckNavigation(Landroid/content/res/Configuration;)V

    .line 734
    :cond_0
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 735
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onCreate(Landroid/os/Bundle;)V

    .line 130
    :try_start_0
    invoke-static {p0}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    .line 131
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->init()Z

    .line 132
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 138
    const/4 v1, 0x6

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    .line 139
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadTouches:[I

    .line 142
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "R800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "WarGamepad"

    const-string v2, "Xperia Play detected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    .line 145
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGamepad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarGamepad;->CheckNavigation(Landroid/content/res/Configuration;)V

    .line 170
    :goto_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    goto :goto_0

    .line 147
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "WarGamepad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "WarGamepad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->exit()V

    .line 179
    :cond_0
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarBilling;->onDestroy()V

    .line 180
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v12, -0x1

    const/4 v6, 0x0

    .line 325
    iget-boolean v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    if-eqz v8, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v6

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 338
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 339
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    iput-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    .line 342
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    if-eqz v8, :cond_0

    .line 347
    iput v12, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 348
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    .line 349
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NYKO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 350
    const/4 v8, 0x6

    iput v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 367
    :cond_3
    :goto_1
    iget v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v8, v12, :cond_4

    iget v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/16 v9, 0xb

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v8, v10, :cond_6

    .line 368
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    iput-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    .line 369
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "name":Ljava/lang/String;
    const-string v8, "Thunder"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "Amazon Fire Game Controller"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 371
    :cond_5
    const/16 v8, 0xc

    iput v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 372
    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J

    .line 374
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Setting GamepadType to Amazon Controller"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    iget v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v8, v12, :cond_7

    iget v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v8, v10, :cond_a

    .line 379
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastDisconnect:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xfa

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    .line 385
    const-string v6, "WarGamepad"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FIXME! Received joystick event without a valid joystick. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v6, 0x0

    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 388
    iget-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->IsAndroidTV:Z

    if-eqz v6, :cond_8

    const/16 v6, 0xd

    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 390
    :cond_8
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    if-eqz v6, :cond_9

    .line 391
    const-string v6, "WarGamepad"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLastGamepadInputDevice.getName() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "PLAYSTATION"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 393
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    .line 394
    iget-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->reportPS3as360:Z

    if-nez v6, :cond_9

    const/16 v6, 0x8

    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 398
    :cond_9
    :goto_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 406
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_d

    .line 407
    invoke-direct {p0, p1, v3}, Lcom/wardrumstudios/utils/WarGamepad;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 353
    .end local v2    # "historySize":I
    .end local v3    # "i":I
    :cond_b
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Broadcom Bluetooth HID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 354
    .local v4, "isBroadcom":Z
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v9, 0x16

    invoke-virtual {v8, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 355
    .local v1, "gas":Landroid/view/InputDevice$MotionRange;
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    const/16 v9, 0x17

    invoke-virtual {v8, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 357
    .local v0, "brake":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 358
    iput-boolean v7, p0, Lcom/wardrumstudios/utils/WarGamepad;->mightBeNyko:Z

    .line 359
    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->NykoCheckHacks:I

    goto/16 :goto_1

    .line 395
    .end local v0    # "brake":Landroid/view/InputDevice$MotionRange;
    .end local v1    # "gas":Landroid/view/InputDevice$MotionRange;
    .end local v4    # "isBroadcom":Z
    :cond_c
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 400
    :catch_0
    move-exception v6

    goto :goto_3

    .line 411
    .restart local v2    # "historySize":I
    .restart local v3    # "i":I
    :cond_d
    invoke-direct {p0, p1, v12}, Lcom/wardrumstudios/utils/WarGamepad;->processJoystickInput(Landroid/view/MotionEvent;I)V

    move v6, v7

    .line 412
    goto/16 :goto_0

    .line 415
    .end local v2    # "historySize":I
    .end local v3    # "i":I
    :cond_e
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0xb

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v4, 0x1

    .line 600
    const/4 v1, 0x0

    .line 607
    .local v1, "buttonMask":I
    :try_start_0
    iget-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    if-nez v6, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    if-lez v6, :cond_5

    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v6, v9, :cond_5

    .line 609
    const/4 v6, 0x7

    if-lt p1, v6, :cond_0

    const/16 v6, 0x10

    if-le p1, v6, :cond_3

    :cond_0
    const/16 v6, 0x14

    if-lt p1, v6, :cond_1

    const/16 v6, 0x16

    if-le p1, v6, :cond_3

    :cond_1
    const/16 v6, 0x25

    if-lt p1, v6, :cond_2

    const/16 v6, 0x28

    if-le p1, v6, :cond_3

    :cond_2
    const/16 v6, 0x2f

    if-eq p1, v6, :cond_3

    const/16 v6, 0x1d

    if-eq p1, v6, :cond_3

    const/16 v6, 0x20

    if-eq p1, v6, :cond_3

    const/16 v6, 0x33

    if-ne p1, v6, :cond_d

    :cond_3
    move v2, v4

    .line 613
    .local v2, "mightBeGamestop":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_e

    .line 614
    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v6, v10, :cond_4

    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v6, v8, :cond_5

    :cond_4
    const/4 v6, 0x5

    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 625
    .end local v2    # "mightBeGamestop":Z
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 627
    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v6, v10, :cond_6

    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_6

    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v6, v8, :cond_8

    .line 629
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    .line 630
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    if-eqz v6, :cond_8

    .line 631
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "name":Ljava/lang/String;
    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_11

    const-string v6, "Thunder"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Amazon Fire Game Controller"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 633
    :cond_7
    const/16 v6, 0xc

    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J

    .line 635
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Setting GamepadType to Amazon Controller onKeyDown"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 648
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    const/4 v0, 0x1

    .line 650
    .local v0, "bPS3Flipped":Z
    packed-switch p1, :pswitch_data_0

    .line 669
    :goto_3
    :pswitch_0
    if-nez v1, :cond_9

    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    if-nez v5, :cond_9

    .line 670
    packed-switch p1, :pswitch_data_1

    .line 679
    :goto_4
    if-eqz v1, :cond_9

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadDpadHack:I

    .line 682
    :cond_9
    if-nez v1, :cond_a

    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v4, v10, :cond_a

    .line 683
    sparse-switch p1, :sswitch_data_0

    .line 704
    :cond_a
    :goto_5
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v4, v8, :cond_b

    .line 705
    const/16 v4, 0x6f

    if-ne p1, v4, :cond_1a

    .line 706
    or-int/lit8 v1, v1, 0x20

    .line 707
    const/16 p1, 0x6d

    .line 716
    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    .line 717
    iget v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    or-int/2addr v4, v1

    iput v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 720
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 609
    .end local v0    # "bPS3Flipped":Z
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 616
    .restart local v2    # "mightBeGamestop":Z
    :cond_e
    if-eqz v2, :cond_f

    .line 617
    const/4 v6, 0x3

    :try_start_1
    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    goto/16 :goto_1

    .line 622
    .end local v2    # "mightBeGamestop":Z
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 618
    .restart local v2    # "mightBeGamestop":Z
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GS controller"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Broadcom Bluetooth HID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 619
    :cond_10
    const/4 v6, 0x3

    iput v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 623
    .end local v2    # "mightBeGamestop":Z
    :catch_1
    move-exception v6

    goto/16 :goto_1

    .line 637
    .restart local v3    # "name":Ljava/lang/String;
    :cond_11
    iget v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v6, v9, :cond_8

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->mLastGamepadInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Amazon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 638
    iput v9, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->lastConnect:J

    .line 640
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Setting GamepadType to Amazon Remote"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 652
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "bPS3Flipped":Z
    :pswitch_1
    iget-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v6, :cond_12

    move v1, v4

    :goto_7
    goto/16 :goto_3

    :cond_12
    if-eqz v0, :cond_13

    move v1, v5

    goto :goto_7

    :cond_13
    move v1, v4

    goto :goto_7

    .line 653
    :pswitch_2
    iget-boolean v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v6, :cond_14

    move v1, v5

    :goto_8
    goto/16 :goto_3

    :cond_14
    if-eqz v0, :cond_15

    move v1, v4

    goto :goto_8

    :cond_15
    move v1, v5

    goto :goto_8

    .line 654
    :pswitch_3
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v5, :cond_16

    const/16 v1, 0x8

    :goto_9
    goto/16 :goto_3

    :cond_16
    if-eqz v0, :cond_17

    const/4 v1, 0x2

    goto :goto_9

    :cond_17
    const/16 v1, 0x8

    goto :goto_9

    .line 655
    :pswitch_4
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v5, :cond_18

    const/4 v1, 0x2

    :goto_a
    goto/16 :goto_3

    :cond_18
    if-eqz v0, :cond_19

    const/16 v1, 0x8

    goto :goto_a

    :cond_19
    const/4 v1, 0x2

    goto :goto_a

    .line 657
    :pswitch_5
    const/16 v1, 0x10

    goto/16 :goto_3

    .line 658
    :pswitch_6
    const/16 v1, 0x20

    goto/16 :goto_3

    .line 659
    :pswitch_7
    const/16 v1, 0x80

    goto/16 :goto_3

    .line 660
    :pswitch_8
    const/16 v1, 0x40

    goto/16 :goto_3

    .line 661
    :pswitch_9
    const/16 v1, 0x1000

    goto/16 :goto_3

    .line 662
    :pswitch_a
    const/16 v1, 0x2000

    goto/16 :goto_3

    .line 665
    :pswitch_b
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v5

    goto/16 :goto_3

    .line 666
    :pswitch_c
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v6, 0x5

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    goto/16 :goto_3

    .line 671
    :pswitch_d
    const/16 v1, 0x400

    goto/16 :goto_4

    .line 672
    :pswitch_e
    const/16 v1, 0x800

    goto/16 :goto_4

    .line 673
    :pswitch_f
    const/16 v1, 0x100

    goto/16 :goto_4

    .line 674
    :pswitch_10
    const/16 v1, 0x200

    goto/16 :goto_4

    .line 675
    :pswitch_11
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 684
    :sswitch_0
    const/16 v1, 0x400

    goto/16 :goto_5

    .line 685
    :sswitch_1
    const/16 v1, 0x800

    goto/16 :goto_5

    .line 686
    :sswitch_2
    const/16 v1, 0x100

    goto/16 :goto_5

    .line 687
    :sswitch_3
    const/16 v1, 0x200

    goto/16 :goto_5

    .line 688
    :sswitch_4
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 690
    :sswitch_5
    const/4 v1, 0x2

    .line 691
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    const/16 v5, 0x9e

    if-ne v4, v5, :cond_a

    or-int/lit16 v1, v1, 0x4000

    goto/16 :goto_5

    .line 695
    :sswitch_6
    const/16 v1, 0x1000

    .line 696
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    const/16 v5, 0xe2

    if-ne v4, v5, :cond_a

    const v4, 0x8000

    or-int/2addr v1, v4

    goto/16 :goto_5

    .line 698
    :sswitch_7
    const/16 v1, 0x2000

    goto/16 :goto_5

    .line 708
    :cond_1a
    const/16 v4, 0x42

    if-ne p1, v4, :cond_b

    .line 709
    or-int/lit8 v1, v1, 0x10

    .line 710
    const/16 p1, 0x6c

    goto/16 :goto_6

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 670
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 683
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x52 -> :sswitch_6
        0x54 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/bda/controller/KeyEvent;

    .prologue
    const/4 v6, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x7

    .line 910
    const/4 v0, 0x0

    .line 912
    .local v0, "buttonMask":I
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-eq v1, v2, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGamepad;->GetMogaControllerType()I

    move-result v1

    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 919
    :cond_0
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 920
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 945
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 948
    :cond_1
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    if-eqz v0, :cond_2

    .line 950
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 987
    :cond_2
    :goto_1
    return-void

    .line 923
    :sswitch_0
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    :sswitch_1
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 925
    :sswitch_2
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 926
    :sswitch_3
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 927
    :sswitch_4
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 928
    :sswitch_5
    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 929
    :sswitch_6
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 930
    :sswitch_7
    or-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 931
    :sswitch_8
    or-int/lit16 v0, v0, 0x1000

    goto :goto_0

    .line 932
    :sswitch_9
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    .line 935
    :sswitch_a
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x100

    goto :goto_0

    .line 936
    :sswitch_b
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x200

    goto :goto_0

    .line 937
    :sswitch_c
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    .line 938
    :sswitch_d
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x800

    goto :goto_0

    .line 941
    :sswitch_e
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v5, v1, v3

    goto :goto_0

    .line 942
    :sswitch_f
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v5, v1, v6

    goto :goto_0

    .line 952
    :cond_3
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 977
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    :cond_4
    :goto_2
    if-eqz v0, :cond_2

    .line 982
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    goto :goto_1

    .line 955
    :sswitch_10
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 956
    :sswitch_11
    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 957
    :sswitch_12
    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 958
    :sswitch_13
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 959
    :sswitch_14
    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    .line 960
    :sswitch_15
    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    .line 961
    :sswitch_16
    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    .line 962
    :sswitch_17
    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    .line 963
    :sswitch_18
    or-int/lit16 v0, v0, 0x1000

    goto :goto_2

    .line 964
    :sswitch_19
    or-int/lit16 v0, v0, 0x2000

    goto :goto_2

    .line 967
    :sswitch_1a
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_4

    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    .line 968
    :sswitch_1b
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_4

    or-int/lit16 v0, v0, 0x200

    goto :goto_2

    .line 969
    :sswitch_1c
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_4

    or-int/lit16 v0, v0, 0x400

    goto :goto_2

    .line 970
    :sswitch_1d
    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    if-ne v1, v2, :cond_4

    or-int/lit16 v0, v0, 0x800

    goto :goto_2

    .line 973
    :sswitch_1e
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v4, v1, v3

    goto :goto_2

    .line 974
    :sswitch_1f
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v4, v1, v6

    goto :goto_2

    .line 920
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x60 -> :sswitch_0
        0x61 -> :sswitch_3
        0x63 -> :sswitch_1
        0x64 -> :sswitch_2
        0x66 -> :sswitch_7
        0x67 -> :sswitch_6
        0x68 -> :sswitch_e
        0x69 -> :sswitch_f
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_4
        0x6d -> :sswitch_5
    .end sparse-switch

    .line 952
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_1b
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1d
        0x60 -> :sswitch_10
        0x61 -> :sswitch_13
        0x63 -> :sswitch_11
        0x64 -> :sswitch_12
        0x66 -> :sswitch_17
        0x67 -> :sswitch_16
        0x68 -> :sswitch_1e
        0x69 -> :sswitch_1f
        0x6a -> :sswitch_18
        0x6b -> :sswitch_19
        0x6c -> :sswitch_14
        0x6d -> :sswitch_15
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 524
    const/4 v1, 0x0

    .line 527
    .local v1, "buttonMask":I
    const/4 v0, 0x1

    .line 529
    .local v0, "bPS3Flipped":Z
    packed-switch p1, :pswitch_data_0

    .line 547
    :goto_0
    :pswitch_0
    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    if-nez v3, :cond_0

    .line 548
    packed-switch p1, :pswitch_data_1

    .line 555
    :goto_1
    if-eqz v1, :cond_0

    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadDpadHack:I

    .line 557
    :cond_0
    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->isXperia:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 558
    sparse-switch p1, :sswitch_data_0

    .line 579
    :cond_1
    :goto_2
    iget v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 580
    const/16 v2, 0x6f

    if-ne p1, v2, :cond_c

    .line 581
    or-int/lit8 v1, v1, 0x20

    .line 582
    const/16 p1, 0x6d

    .line 590
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 591
    iget v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    xor-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadButtonMask:I

    .line 594
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarBilling;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 531
    :pswitch_1
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v4, :cond_4

    move v1, v2

    :goto_4
    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_4

    .line 532
    :pswitch_2
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v4, :cond_6

    move v1, v3

    :goto_5
    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_5

    .line 533
    :pswitch_3
    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v3, :cond_8

    move v1, v4

    :goto_6
    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    move v1, v5

    goto :goto_6

    :cond_9
    move v1, v4

    goto :goto_6

    .line 534
    :pswitch_4
    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->is360:Z

    if-eqz v3, :cond_a

    move v1, v5

    :goto_7
    goto :goto_0

    :cond_a
    if-eqz v0, :cond_b

    move v1, v4

    goto :goto_7

    :cond_b
    move v1, v5

    goto :goto_7

    .line 536
    :pswitch_5
    const/16 v1, 0x10

    goto :goto_0

    .line 537
    :pswitch_6
    const/16 v1, 0x20

    goto :goto_0

    .line 538
    :pswitch_7
    const/16 v1, 0x80

    goto :goto_0

    .line 539
    :pswitch_8
    const/16 v1, 0x40

    goto :goto_0

    .line 540
    :pswitch_9
    const/16 v1, 0x1000

    goto :goto_0

    .line 541
    :pswitch_a
    const/16 v1, 0x2000

    goto :goto_0

    .line 544
    :pswitch_b
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    aput v6, v4, v3

    goto :goto_0

    .line 545
    :pswitch_c
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v4, 0x5

    aput v6, v3, v4

    goto/16 :goto_0

    .line 549
    :pswitch_d
    const/16 v1, 0x400

    goto :goto_1

    .line 550
    :pswitch_e
    const/16 v1, 0x800

    goto :goto_1

    .line 551
    :pswitch_f
    const/16 v1, 0x100

    goto/16 :goto_1

    .line 552
    :pswitch_10
    const/16 v1, 0x200

    goto/16 :goto_1

    .line 553
    :pswitch_11
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 559
    :sswitch_0
    const/16 v1, 0x400

    goto :goto_2

    .line 560
    :sswitch_1
    const/16 v1, 0x800

    goto :goto_2

    .line 561
    :sswitch_2
    const/16 v1, 0x100

    goto/16 :goto_2

    .line 562
    :sswitch_3
    const/16 v1, 0x200

    goto/16 :goto_2

    .line 563
    :sswitch_4
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 565
    :sswitch_5
    const/4 v1, 0x2

    .line 566
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    const/16 v3, 0x9e

    if-ne v2, v3, :cond_1

    or-int/lit16 v1, v1, 0x4000

    goto/16 :goto_2

    .line 569
    :sswitch_6
    const/16 v1, 0x1000

    .line 570
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    const/16 v3, 0xe2

    if-ne v2, v3, :cond_1

    const v2, 0x8000

    or-int/2addr v1, v2

    goto/16 :goto_2

    .line 572
    :sswitch_7
    const/16 v1, 0x2000

    goto/16 :goto_2

    .line 583
    :cond_c
    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 584
    or-int/lit8 v1, v1, 0x10

    .line 585
    const/16 p1, 0x6c

    goto/16 :goto_3

    .line 529
    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 548
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x52 -> :sswitch_6
        0x54 -> :sswitch_7
    .end sparse-switch
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/bda/controller/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 998
    iget v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGamepad;->GetMogaControllerType()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    .line 1001
    :cond_0
    invoke-virtual {p1, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mobiX:F

    .line 1002
    invoke-virtual {p1, v3}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->mobiY:F

    .line 1003
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mobiX:F

    aput v1, v0, v2

    .line 1004
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    iget v1, p0, Lcom/wardrumstudios/utils/WarGamepad;->mobiY:F

    aput v1, v0, v3

    .line 1005
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v1, 0x2

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v2

    aput v2, v0, v1

    .line 1006
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadAxes:[F

    const/4 v1, 0x3

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarGamepad;->GetWithDeadZone(F)F

    move-result v2

    aput v2, v0, v1

    .line 1007
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/bda/controller/StateEvent;

    .prologue
    .line 1012
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1015
    :pswitch_0
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1017
    :pswitch_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    goto :goto_0

    .line 1022
    :pswitch_2
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarGamepad;->GetMogaControllerType()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarGamepad;->GamepadType:I

    goto :goto_0

    .line 1030
    :pswitch_3
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1015
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 792
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarGamepad;->ClearBadJoystickAxis()V

    .line 793
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x100008

    if-ne v0, v1, :cond_3

    .line 794
    const/4 v2, 0x0

    .line 795
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "x1":I
    const/4 v4, 0x0

    .local v4, "y1":I
    const/4 v5, 0x0

    .local v5, "x2":I
    const/4 v6, 0x0

    .line 797
    .local v6, "y2":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 798
    .local v9, "numEvents":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    .line 801
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 805
    .local v8, "index":I
    if-nez v2, :cond_1

    .line 807
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v3, v0

    .line 808
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v4, v0

    .line 809
    add-int/lit8 v2, v2, 0x1

    .line 798
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 811
    :cond_1
    if-ne v2, v10, :cond_0

    .line 813
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v5, v0

    .line 814
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 820
    .end local v8    # "index":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/wardrumstudios/utils/WarGamepad;->TouchpadEvent(IIIIII)V

    move v0, v10

    .line 825
    .end local v2    # "count":I
    .end local v3    # "x1":I
    .end local v4    # "y1":I
    .end local v5    # "x2":I
    .end local v6    # "y2":I
    .end local v7    # "i":I
    .end local v9    # "numEvents":I
    :goto_2
    return v0

    :cond_3
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2
.end method

.method public native processTouchpadAsPointer(Landroid/view/ViewParent;Z)Z
.end method
