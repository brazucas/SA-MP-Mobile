.class Lcom/wardrumstudios/utils/WarMedia$4$1;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$4;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$4;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$4$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "i"    # Landroid/content/DialogInterface;
    .param p2, "a"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$4$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$4;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$4;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 535
    return-void
.end method
