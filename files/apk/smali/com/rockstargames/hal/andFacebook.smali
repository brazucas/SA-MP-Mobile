.class public Lcom/rockstargames/hal/andFacebook;
.super Ljava/lang/Object;
.source "andFacebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andFacebook$2;,
        Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;
    }
.end annotation


# static fields
.field private static final PENDING_PUBLISH_KEY:Ljava/lang/String; = "pendingPublishReauthorization"

.field private static final PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static applicationId:Ljava/lang/String;

.field private static instance:Lcom/rockstargames/hal/andFacebook;

.field static test:Z


# instance fields
.field private pendingPublishReauthorization:Z

.field private statusCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/andFacebook;->instance:Lcom/rockstargames/hal/andFacebook;

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/hal/andFacebook;->PERMISSIONS:Ljava/util/List;

    .line 130
    sput-boolean v3, Lcom/rockstargames/hal/andFacebook;->test:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;-><init>(Lcom/rockstargames/hal/andFacebook;Lcom/rockstargames/hal/andFacebook$1;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andFacebook;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andFacebook;->pendingPublishReauthorization:Z

    .line 240
    return-void
.end method

.method static synthetic access$100(Lcom/rockstargames/hal/andFacebook;)Lcom/facebook/Session$StatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andFacebook;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/rockstargames/hal/andFacebook;->statusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method public static closeAndClearTokenInformation()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 152
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 155
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 156
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 158
    :cond_0
    return-void
.end method

.method public static closeSession()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 142
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 145
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 147
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/rockstargames/hal/andFacebook;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/rockstargames/hal/andFacebook;->instance:Lcom/rockstargames/hal/andFacebook;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/rockstargames/hal/andFacebook;

    invoke-direct {v0}, Lcom/rockstargames/hal/andFacebook;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andFacebook;->instance:Lcom/rockstargames/hal/andFacebook;

    .line 50
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/andFacebook;->instance:Lcom/rockstargames/hal/andFacebook;

    return-object v0
.end method

.method public static isSessionOpen()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 66
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "subset":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "superset":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "string":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 170
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static openSession()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/rockstargames/hal/andFacebook;->openSession(Z)V

    .line 83
    return-void
.end method

.method public static openSession(Z)V
    .locals 7
    .param p0, "fromCache"    # Z

    .prologue
    .line 87
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 88
    .local v3, "session":Lcom/facebook/Session;
    if-nez v3, :cond_1

    .line 90
    if-nez v3, :cond_0

    .line 91
    new-instance v4, Lcom/facebook/Session$Builder;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/rockstargames/hal/andFacebook;->applicationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v3

    .line 93
    :cond_0
    invoke-static {v3}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 96
    :cond_1
    const/4 v0, 0x1

    .line 98
    .local v0, "allowOpenSession":Z
    if-eqz p0, :cond_2

    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    sget-object v5, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-eq v4, v5, :cond_2

    .line 100
    const/4 v0, 0x0

    .line 103
    :cond_2
    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-nez v4, :cond_4

    .line 107
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 109
    .local v1, "op":Lcom/facebook/Session$OpenRequest;
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 110
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "basic_info"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v4, "publish_actions"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 117
    invoke-virtual {v3, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 118
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v4

    iget-object v4, v4, Lcom/rockstargames/hal/andFacebook;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v3, v4}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 128
    .end local v1    # "op":Lcom/facebook/Session$OpenRequest;
    .end local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return-void

    .line 125
    :cond_4
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v6

    iget-object v6, v6, Lcom/rockstargames/hal/andFacebook;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v4, v5, v6}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method public static openSessionFromCache()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 134
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_0

    .line 135
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/rockstargames/hal/andFacebook;->openSession(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public static postMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "pictureLink"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 175
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 176
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v7

    .line 180
    .local v7, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v2

    sget-object v4, Lcom/rockstargames/hal/andFacebook;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v2, v4, v7}, Lcom/rockstargames/hal/andFacebook;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v2

    iput-boolean v10, v2, Lcom/rockstargames/hal/andFacebook;->pendingPublishReauthorization:Z

    .line 182
    new-instance v6, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v4, Lcom/rockstargames/hal/andFacebook;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v6, v2, v4}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 184
    .local v6, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    invoke-virtual {v1, v6}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 238
    .end local v6    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    .end local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v3, "postParams":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v3, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "caption"

    const-string v4, " "

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "description"

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "link"

    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "picture"

    invoke-virtual {v3, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v5, Lcom/rockstargames/hal/andFacebook$1;

    invoke-direct {v5}, Lcom/rockstargames/hal/andFacebook$1;-><init>()V

    .line 232
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 235
    .local v0, "request":Lcom/facebook/Request;
    new-instance v8, Lcom/facebook/RequestAsyncTask;

    new-array v2, v10, [Lcom/facebook/Request;

    aput-object v0, v2, v9

    invoke-direct {v8, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 236
    .local v8, "task":Lcom/facebook/RequestAsyncTask;
    new-array v2, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v2}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static setApplicationID(Ljava/lang/String;)V
    .locals 2
    .param p0, "appID"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 72
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "currentAppID":Ljava/lang/String;
    if-eq p0, v0, :cond_0

    .line 76
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->closeAndClearTokenInformation()V

    .line 78
    .end local v0    # "currentAppID":Ljava/lang/String;
    :cond_0
    sput-object p0, Lcom/rockstargames/hal/andFacebook;->applicationId:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method native facebookClosed()V
.end method

.method native facebookOpenedSucessfully(Ljava/lang/String;)V
.end method

.method native facebookPostFailed()V
.end method

.method native facebookPostSuccess()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 162
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 59
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->closeSession()V

    .line 61
    :cond_0
    return-void
.end method
