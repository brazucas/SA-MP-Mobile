.class Lcom/wardrumstudios/utils/WarDownloader$7;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader;->ShowDownloadNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;

.field final synthetic val$fTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$7;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarDownloader$7;->val$fTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$7;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$7;->val$fTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$7;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->EXIT_BUTTON:Ljava/lang/String;

    new-instance v3, Lcom/wardrumstudios/utils/WarDownloader$7$2;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarDownloader$7$2;-><init>(Lcom/wardrumstudios/utils/WarDownloader$7;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$7;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->NEXT_BUTTON:Ljava/lang/String;

    new-instance v3, Lcom/wardrumstudios/utils/WarDownloader$7$1;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarDownloader$7$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader$7;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 366
    .local v0, "exitDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 367
    return-void
.end method
