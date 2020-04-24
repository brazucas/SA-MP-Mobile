.class final Lcom/rockstargames/hal/ActivityWrapper$3;
.super Ljava/lang/Object;
.source "ActivityWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/ActivityWrapper;->addUpdateCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/rockstargames/hal/ActivityWrapper;

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->access$000(Lcom/rockstargames/hal/ActivityWrapper;)V

    .line 315
    return-void
.end method
