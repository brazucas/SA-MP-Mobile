.class Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
.super Ljava/lang/Object;
.source "WarMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PoolInfo"
.end annotation


# instance fields
.field duration:F

.field filename:Ljava/lang/String;

.field lv:F

.field rv:F

.field soundID:I

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$PoolInfo;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
