.class Lcom/wardrumstudios/utils/WarMedia$2;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->ShowDownloadNetworkError()V
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
    .line 383
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$2;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarMedia$2;->val$myActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$2;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$2;->val$myActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "No network connection. Cannot download game data."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Quit Game"

    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$2$2;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarMedia$2$2;-><init>(Lcom/wardrumstudios/utils/WarMedia$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Continue"

    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$2$1;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarMedia$2$1;-><init>(Lcom/wardrumstudios/utils/WarMedia$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    .line 401
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$2;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 402
    return-void
.end method
