.class Lcom/wardrumstudios/utils/WarDownloader$14;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader;->ChangeMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;

.field final synthetic val$mess:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->val$mess:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1276
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->val$mess:Ljava/lang/String;

    const-string v4, "Done Downloading"

    if-ne v3, v4, :cond_3

    .line 1277
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 1278
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1279
    :cond_0
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iput-object v5, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    .line 1282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-wide v6, v3, Lcom/wardrumstudios/utils/WarDownloader;->StartTime:J

    sub-long v0, v4, v6

    .line 1283
    .local v0, "elapsed":J
    const-string v2, ""

    .line 1284
    .local v2, "newMess":Ljava/lang/String;
    const-wide/32 v4, 0x493e0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 1285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0xea60

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->MINUTES_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1289
    :goto_0
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1290
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->NEXT_BUTTON:Ljava/lang/String;

    new-instance v5, Lcom/wardrumstudios/utils/WarDownloader$14$2;

    invoke-direct {v5, p0}, Lcom/wardrumstudios/utils/WarDownloader$14$2;-><init>(Lcom/wardrumstudios/utils/WarDownloader$14;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->EXIT_BUTTON:Ljava/lang/String;

    new-instance v5, Lcom/wardrumstudios/utils/WarDownloader$14$1;

    invoke-direct {v5, p0}, Lcom/wardrumstudios/utils/WarDownloader$14$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader$14;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1326
    .end local v0    # "elapsed":J
    .end local v2    # "newMess":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1287
    .restart local v0    # "elapsed":J
    .restart local v2    # "newMess":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->SECONDS_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1313
    .end local v0    # "elapsed":J
    .end local v2    # "newMess":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->val$mess:Ljava/lang/String;

    const-string v4, "Done Downloading Language"

    if-ne v3, v4, :cond_5

    .line 1314
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_4

    .line 1315
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1316
    :cond_4
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iput-object v5, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 1318
    :cond_5
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_6

    .line 1319
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->val$mess:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1320
    :cond_6
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v3, :cond_1

    .line 1321
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->notifyMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1322
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->mNotifyManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method
