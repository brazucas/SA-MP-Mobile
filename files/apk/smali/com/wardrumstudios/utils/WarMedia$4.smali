.class Lcom/wardrumstudios/utils/WarMedia$4;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->ShowSDErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$myActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$4;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarMedia$4;->val$myActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$4;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$4;->val$myActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Cannot find storage. Is SDCard mounted?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Exit Game"

    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$4$1;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarMedia$4$1;-><init>(Lcom/wardrumstudios/utils/WarMedia$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    .line 538
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$4;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 539
    return-void
.end method
