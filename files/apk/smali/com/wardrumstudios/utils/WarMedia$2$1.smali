.class Lcom/wardrumstudios/utils/WarMedia$2$1;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$2;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$2;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$2$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "i"    # Landroid/content/DialogInterface;
    .param p2, "a"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$2$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$2;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$2;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$2$1$1;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarMedia$2$1$1;-><init>(Lcom/wardrumstudios/utils/WarMedia$2$1;)V

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method
