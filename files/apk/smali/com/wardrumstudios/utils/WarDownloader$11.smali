.class Lcom/wardrumstudios/utils/WarDownloader$11;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader;->ShowErrorMessage(I)V
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
    .line 498
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$11;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 500
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Data download failed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    const-string v0, ""

    .line 502
    .local v0, "errMess":Ljava/lang/String;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$11;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v1, Lcom/wardrumstudios/utils/WarDownloader;->DATA_ACCESS_ERROR_MESSAGE:Ljava/lang/String;

    .line 504
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$11;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$11;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->EXIT_BUTTON:Ljava/lang/String;

    new-instance v3, Lcom/wardrumstudios/utils/WarDownloader$11$1;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarDownloader$11$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader$11;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 510
    return-void
.end method
