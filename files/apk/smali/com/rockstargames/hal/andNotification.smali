.class public Lcom/rockstargames/hal/andNotification;
.super Ljava/lang/Object;
.source "andNotification.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static notificationIDCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-class v0, Lcom/rockstargames/hal/andNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/rockstargames/hal/andNotification;->$assertionsDisabled:Z

    .line 12
    sput v1, Lcom/rockstargames/hal/andNotification;->notificationIDCount:I

    return-void

    :cond_0
    move v0, v1

    .line 11
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "time"    # I

    .prologue
    const/4 v8, 0x0

    .line 17
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.rockstargames.hal.Broadcast"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .local v3, "i":Landroid/content/Intent;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/rockstargames/hal/andAlarmReceiver;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 19
    const-string v6, "notificationTitle"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v6, "notificationMsg"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v6, "notificationID"

    sget v7, Lcom/rockstargames/hal/andNotification;->notificationIDCount:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcom/rockstargames/hal/andNotification;->notificationIDCount:I

    invoke-static {v6, v7, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 26
    .local v0, "alarmSender":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 27
    .local v2, "c":Ljava/util/Calendar;
    const/16 v6, 0xd

    invoke-virtual {v2, v6, p3}, Ljava/util/Calendar;->add(II)V

    .line 29
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 31
    .local v4, "firstTime":J
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 32
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v1, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 34
    sget v6, Lcom/rockstargames/hal/andNotification;->notificationIDCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/rockstargames/hal/andNotification;->notificationIDCount:I

    .line 36
    sget-boolean v6, Lcom/rockstargames/hal/andNotification;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    sget v6, Lcom/rockstargames/hal/andNotification;->notificationIDCount:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 37
    :cond_0
    return-void
.end method

.method public static CancelAllNotifications()V
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 42
    .local v1, "am":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_1

    .line 44
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.rockstargames.hal.Broadcast"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "removeIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/rockstargames/hal/andAlarmReceiver;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/high16 v5, 0x20000000

    invoke-static {v4, v2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 47
    .local v0, "alarmSender":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "alarmSender":Landroid/app/PendingIntent;
    .end local v3    # "removeIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    sput v4, Lcom/rockstargames/hal/andNotification;->notificationIDCount:I

    .line 52
    return-void
.end method
