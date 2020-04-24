.class Lcom/wardrumstudios/utils/WarMedia$1$2;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$1;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$1;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$1$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "i"    # Landroid/content/DialogInterface;
    .param p2, "a"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$1$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$1;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$1;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 363
    return-void
.end method
