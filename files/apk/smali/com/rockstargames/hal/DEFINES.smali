.class public Lcom/rockstargames/hal/DEFINES;
.super Ljava/lang/Object;
.source "DEFINES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/DEFINES$ObbInfo;
    }
.end annotation


# static fields
.field public static final DUMP_IMAGES_ON_SCREEN_CHANGE:Z

.field public static final ENABLE_TOASTS:Z

.field public static final FILE_SPAM:Z

.field public static final FONT_SPAM:Z

.field public static final HIERARCHY_SPAM:Z

.field public static final HTTP_SPAM:Z

.field public static final IMAGE_SPAM:Z

.field public static final MEM_SPAM:Z

.field public static OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

.field public static final OBB_MAIN_SIZE:J

.field public static final OBB_MAIN_VERSION:I

.field public static final OBB_PATCH_SIZE:J

.field public static final OBB_PATCH_VERSION:I

.field public static final STARTUP_DIAG_SPAM:Z

.field public static final USE_OBB:Z

.field public static final VIEW_SPAM:Z

.field public static final VISIBLE_CONTAINERS:Z

.field public static final VISIBLE_NULL_IMAGES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide/32 v12, 0xe26d711

    const-wide/32 v10, 0xe1ad09e

    const-wide/32 v4, 0xfbb9237

    const-wide/32 v8, 0xe27667d

    const-wide/32 v6, 0xe27ab7c

    .line 29
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x20

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x22

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x23

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x24

    const-wide/32 v4, 0xe1d8883

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x25

    const-wide/32 v4, 0xe1d8883

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x26

    const-wide/32 v4, 0xe204188

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x27

    const-wide/32 v4, 0xe206107

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x28

    invoke-direct {v2, v3, v10, v11}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x29

    invoke-direct {v2, v3, v10, v11}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x2a

    invoke-direct {v2, v3, v10, v11}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x2b

    invoke-direct {v2, v3, v8, v9}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x2c

    invoke-direct {v2, v3, v8, v9}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x2d

    invoke-direct {v2, v3, v8, v9}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x2e

    invoke-direct {v2, v3, v8, v9}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x2f

    invoke-direct {v2, v3, v12, v13}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x30

    invoke-direct {v2, v3, v12, v13}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x31

    invoke-direct {v2, v3, v12, v13}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x32

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x33

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x34

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x35

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x36

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x37

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x38

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x39

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x3a

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x3b

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x3c

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x3d

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x3e

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x3f

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x40

    invoke-direct {v2, v3, v6, v7}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x41

    const-wide/32 v4, 0xe27c71c

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/rockstargames/hal/DEFINES$ObbInfo;

    const/16 v3, 0x44

    const-wide/32 v4, 0xe27c71c

    invoke-direct {v2, v3, v4, v5}, Lcom/rockstargames/hal/DEFINES$ObbInfo;-><init>(IJ)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    .line 71
    sget-object v0, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    sget-object v1, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/rockstargames/hal/DEFINES$ObbInfo;->version:I

    sput v0, Lcom/rockstargames/hal/DEFINES;->OBB_MAIN_VERSION:I

    .line 72
    sget-object v0, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    sget-object v1, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Lcom/rockstargames/hal/DEFINES$ObbInfo;->size:J

    sput-wide v0, Lcom/rockstargames/hal/DEFINES;->OBB_MAIN_SIZE:J

    .line 74
    sget-object v0, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    sget-object v1, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/rockstargames/hal/DEFINES$ObbInfo;->version:I

    sput v0, Lcom/rockstargames/hal/DEFINES;->OBB_PATCH_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method
