.class public Lcom/AdX/tag/AdXAppTracker;
.super Landroid/content/BroadcastReceiver;
.source "AdXAppTracker.java"


# instance fields
.field final AdX_PREFERENCE:Ljava/lang/String;

.field final REFERRAL_URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const-string v0, "AdXPrefrences"

    iput-object v0, p0, Lcom/AdX/tag/AdXAppTracker;->AdX_PREFERENCE:Ljava/lang/String;

    .line 18
    const-string v0, "InstallReferral"

    iput-object v0, p0, Lcom/AdX/tag/AdXAppTracker;->REFERRAL_URL:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private pass_on_broadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v7, ""

    .line 56
    .local v7, "str1":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 57
    .local v6, "localObject":Landroid/content/pm/PackageManager;
    if-eqz v6, :cond_1

    .line 59
    new-instance v4, Landroid/content/ComponentName;

    const-class v8, Lcom/AdX/tag/AdXAppTracker;

    invoke-direct {v4, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v4, "localComponentName":Landroid/content/ComponentName;
    check-cast v6, Landroid/content/pm/PackageManager;

    .end local v6    # "localObject":Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 61
    .local v3, "localActivityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_1

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_1

    .line 63
    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 64
    .local v6, "localObject":Ljava/util/Set;
    if-eqz v6, :cond_1

    .line 67
    check-cast v6, Ljava/util/Set;

    .end local v6    # "localObject":Ljava/util/Set;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 68
    .local v5, "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 100
    .end local v3    # "localActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "localComponentName":Landroid/content/ComponentName;
    .end local v5    # "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    return-void

    .line 70
    .restart local v3    # "localActivityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "localComponentName":Landroid/content/ComponentName;
    .restart local v5    # "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    .local v6, "localObject":Ljava/lang/String;
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 72
    .local v2, "forwardname":Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ADX_FORWARD_REFERRAL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 74
    const-string v8, "AdXAppTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found Forwarding : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    check-cast v6, Ljava/lang/String;

    .end local v6    # "localObject":Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 81
    const-string v8, "AdXAppTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Successfully forwarded install notification to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "AdXAppTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not forward Market\'s INSTALL_REFERRER intent to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "forwardname":Ljava/lang/String;
    .end local v3    # "localActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "localComponentName":Landroid/content/ComponentName;
    .end local v5    # "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_1
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "AdXAppTracker"

    const-string v9, "Unhandled exception while forwarding install intents.  Possibly lost some install information."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 23
    const-string v4, "AdXAppTracker"

    const-string v5, "Received Referrral Intent"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 28
    const-string v4, "referrer="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, "index":I
    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 32
    const-string v4, "AdXAppTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Referral URI: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v4, "AdXPrefrences"

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 35
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "InstallReferral"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    const-string v4, "AdXAppTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cached Referral URI: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "index":I
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/AdX/tag/AdXConnect;->doBroadcastConnectInstance(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/AdX/tag/AdXAppTracker;->pass_on_broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    const-string v4, "AdXAppTracker"

    const-string v5, "End"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 41
    .restart local v1    # "index":I
    :cond_1
    const-string v4, "AdXAppTracker"

    const-string v5, "No Referral URL."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
