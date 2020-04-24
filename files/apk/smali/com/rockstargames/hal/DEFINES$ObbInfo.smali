.class public Lcom/rockstargames/hal/DEFINES$ObbInfo;
.super Ljava/lang/Object;
.source "DEFINES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/DEFINES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObbInfo"
.end annotation


# instance fields
.field public size:J

.field public version:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "v"    # I
    .param p2, "s"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rockstargames/hal/DEFINES$ObbInfo;->version:I

    iput-wide p2, p0, Lcom/rockstargames/hal/DEFINES$ObbInfo;->size:J

    return-void
.end method
