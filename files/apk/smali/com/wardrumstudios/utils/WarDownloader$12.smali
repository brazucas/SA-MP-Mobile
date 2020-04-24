.class Lcom/wardrumstudios/utils/WarDownloader$12;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader;->DownloadAllFiles()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;

.field final synthetic val$fWarMedia:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;Lcom/wardrumstudios/utils/WarMedia;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->val$fWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1082
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v3, Lcom/wardrumstudios/utils/WarDownloader;->mNotifyManager:Landroid/app/NotificationManager;

    .line 1083
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1084
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->downloadTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOADING_FILES_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->PLEASE_WAIT_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget v3, v3, Lcom/wardrumstudios/utils/WarMedia;->appStatusIcon:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1088
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->val$fWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v2, Lcom/wardrumstudios/utils/WarMedia;->appIntent:Landroid/content/Intent;

    .line 1089
    .local v0, "notificationIntent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1090
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const/high16 v3, 0x8000000

    invoke-static {v2, v6, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1091
    .local v1, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1093
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->val$mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    .line 1094
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1095
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOADING_FILES_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->PLEASE_WAIT_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1096
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v4, v4, Lcom/wardrumstudios/utils/WarDownloader;->CANCEL_BUTTON:Ljava/lang/String;

    new-instance v5, Lcom/wardrumstudios/utils/WarDownloader$12$1;

    invoke-direct {v5, p0}, Lcom/wardrumstudios/utils/WarDownloader$12$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader$12;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1107
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1108
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1109
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarDownloader;->DownloadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1111
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iput-boolean v7, v2, Lcom/wardrumstudios/utils/WarDownloader;->ProgressInited:Z

    .line 1113
    return-void
.end method
