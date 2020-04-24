.class Lcom/wardrumstudios/utils/WarDownloader$13;
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


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$13;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1265
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$13;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$13;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader;->DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1266
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$13;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2, v2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1267
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$13;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1268
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$13;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->mNotifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$13;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1269
    return-void
.end method
