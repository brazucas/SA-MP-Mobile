.class Lcom/wardrumstudios/utils/WarMedia$19$1;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$19;->onPreExecute()V
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
    .line 2296
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$19$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$19;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->access$1802(Lcom/wardrumstudios/utils/WarMedia;Z)Z

    .line 2300
    return-void
.end method
