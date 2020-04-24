.class Lcom/wardrumstudios/utils/WarMedia$19$2;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$19;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$19;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$19;)V
    .locals 0

    .prologue
    .line 2361
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$19$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$19;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 2365
    return-void
.end method
