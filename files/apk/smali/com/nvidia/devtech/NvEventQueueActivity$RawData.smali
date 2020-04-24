.class public Lcom/nvidia/devtech/NvEventQueueActivity$RawData;
.super Ljava/lang/Object;
.source "NvEventQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RawData"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field final synthetic this$0:Lcom/nvidia/devtech/NvEventQueueActivity;


# direct methods
.method public constructor <init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
