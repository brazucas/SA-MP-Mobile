.class Lcom/wardrumstudios/utils/WarDownloader$9;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader;->DownloadDataMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$9;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 402
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$9;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$9;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->ADDITIONAL_DATA_NEEDED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$9;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->NEXT_BUTTON:Ljava/lang/String;

    new-instance v4, Lcom/wardrumstudios/utils/WarDownloader$9$2;

    invoke-direct {v4, p0}, Lcom/wardrumstudios/utils/WarDownloader$9$2;-><init>(Lcom/wardrumstudios/utils/WarDownloader$9;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$9;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->CANCEL_BUTTON:Ljava/lang/String;

    new-instance v4, Lcom/wardrumstudios/utils/WarDownloader$9$1;

    invoke-direct {v4, p0}, Lcom/wardrumstudios/utils/WarDownloader$9$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader$9;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 421
    .local v1, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 422
    .local v0, "al":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 423
    return-void
.end method
