.class Lcom/wardrumstudios/utils/WarMedia$2$1$1;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/wardrumstudios/utils/WarMedia$2$1;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$2$1;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$2$1$1;->this$2:Lcom/wardrumstudios/utils/WarMedia$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$2$1$1;->this$2:Lcom/wardrumstudios/utils/WarMedia$2$1;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$2$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$2;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$2;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->localHasGameData()Z

    .line 396
    return-void
.end method
