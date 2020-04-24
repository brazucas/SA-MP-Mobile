.class Lcom/wardrumstudios/utils/WarMedia$12;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->ClearSystemNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$12;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1380
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$12;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1382
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1383
    return-void
.end method
