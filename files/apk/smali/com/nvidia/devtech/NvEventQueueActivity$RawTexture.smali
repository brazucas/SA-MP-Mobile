.class public Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;
.super Lcom/nvidia/devtech/NvEventQueueActivity$RawData;
.source "NvEventQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/devtech/NvEventQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RawTexture"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->this$0:Lcom/nvidia/devtech/NvEventQueueActivity;

    invoke-direct {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    return-void
.end method
