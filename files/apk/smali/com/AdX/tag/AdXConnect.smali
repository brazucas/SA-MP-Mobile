.class public final Lcom/AdX/tag/AdXConnect;
.super Ljava/lang/Object;
.source "AdXConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/AdX/tag/AdXConnect$ConnectEventTask;,
        Lcom/AdX/tag/AdXConnect$ConnectTask;,
        Lcom/AdX/tag/AdXConnect$RetargetEventTask;
    }
.end annotation


# static fields
.field public static final ADX_CUSTOMERID:I = 0x1

.field public static final ADX_DESTINATION_ID:I = 0xc

.field public static final ADX_END_DATE:I = 0x8

.field public static final ADX_EVENT_CONFIRMATION:I = 0x5

.field public static final ADX_EVENT_HOMEPAGE:I = 0x0

.field public static final ADX_EVENT_LEVEL:I = 0x6

.field public static final ADX_EVENT_LISTINGVIEW:I = 0x3

.field public static final ADX_EVENT_PRODUCTVIEW:I = 0x2

.field public static final ADX_EVENT_SEARCH:I = 0x1

.field public static final ADX_EVENT_VIEWCART:I = 0x4

.field public static final ADX_KEYWORD:I = 0x3

.field public static final ADX_LEVEL:I = 0xd

.field public static final ADX_NEWCUSTOMER:I = 0x9

.field public static final ADX_PARAMETER_DATE:I = 0x11

.field public static final ADX_PARAMETER_FLOAT:I = 0x10

.field public static final ADX_PARAMETER_INT:I = 0xe

.field public static final ADX_PARAMETER_STRING:I = 0xf

.field public static final ADX_PRODUCT:I = 0x2

.field public static final ADX_SOURCE_ID:I = 0xb

.field public static final ADX_START_DATE:I = 0x7

.field public static final ADX_TRANSACTION_ID:I = 0xa

.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect; = null

.field private static AdXConnectInstance:Lcom/AdX/tag/AdXConnect; = null

.field private static AdXURLConnection:Lcom/AdX/tag/AdXURLConnection; = null

.field private static AdX_PREFERENCE:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field private static DLREFERRAL:Ljava/lang/String; = null

.field private static final HASH_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static LASTIDFA:Ljava/lang/String;

.field public static LOGLEVEL:I

.field private static MODREFERRAL:Ljava/lang/String;

.field private static RECEIVER_DONE:Ljava/lang/String;

.field private static REFERRAL_URL:Ljava/lang/String;

.field private static SEENCOUNT:Ljava/lang/String;

.field private static UPDATE:Ljava/lang/String;

.field public static WARN:Z

.field private static clientKey:Ljava/lang/String;

.field private static dict:Lorg/json/JSONObject;

.field private static productlist:Lorg/json/JSONArray;

.field private static referralURL:Ljava/lang/String;

.field private static final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public static sendDelay:I


# instance fields
.field private SEND_TAG:Ljava/lang/String;

.field private androidID:Ljava/lang/String;

.field private appID:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private clientID:Ljava/lang/String;

.field private connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

.field private connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

.field private context:Landroid/content/Context;

.field private deviceCountryCode:Ljava/lang/String;

.field private deviceID:Ljava/lang/String;

.field private deviceLanguage:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceOSVersion:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private fbattribution:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private idfa:Ljava/lang/String;

.field private isLAT:Z

.field private libraryVersion:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private retargetEventTask:Lcom/AdX/tag/AdXConnect$RetargetEventTask;

.field private sdkType:Ljava/lang/String;

.field private storeAppID:Ljava/lang/String;

.field private tagVersion:Ljava/lang/String;

.field private urlParams:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    sput-object v1, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    .line 86
    sput-object v1, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 87
    sput-object v1, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 88
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/AdX/tag/AdXConnect;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 115
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/AdX/tag/AdXConnect;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 118
    const-string v0, ""

    sput-object v0, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    .line 119
    const-string v0, "AdXPrefrences"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    .line 120
    const-string v0, "AdXReferral"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    .line 121
    const-string v0, "AdXLastIDFA"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->LASTIDFA:Ljava/lang/String;

    .line 122
    const-string v0, "AdXDLReferral"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->DLREFERRAL:Ljava/lang/String;

    .line 123
    const-string v0, "AdXSeencount"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->SEENCOUNT:Ljava/lang/String;

    .line 124
    const-string v0, "ReceiverDone"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    .line 125
    const-string v0, "AdXUpdate"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    .line 126
    const-string v0, "InstallReferral"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->REFERRAL_URL:Ljava/lang/String;

    .line 127
    sput-object v1, Lcom/AdX/tag/AdXConnect;->clientKey:Ljava/lang/String;

    .line 129
    sput v2, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    .line 130
    const/4 v0, 0x3

    sput v0, Lcom/AdX/tag/AdXConnect;->sendDelay:I

    .line 134
    sput-object v1, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    .line 135
    sput-object v1, Lcom/AdX/tag/AdXConnect;->productlist:Lorg/json/JSONArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    .line 81
    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    .line 82
    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->retargetEventTask:Lcom/AdX/tag/AdXConnect$RetargetEventTask;

    .line 83
    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->protocol:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    .line 105
    const-string v0, "3.2.6"

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    .line 112
    const-string v0, "SendTag"

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/AdX/tag/AdXConnect;->isLAT:Z

    .line 462
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 463
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "update"    # I
    .param p3, "extraInstallData"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v9, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    .line 81
    iput-object v9, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    .line 82
    iput-object v9, p0, Lcom/AdX/tag/AdXConnect;->retargetEventTask:Lcom/AdX/tag/AdXConnect$RetargetEventTask;

    .line 83
    iput-object v9, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 91
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;

    .line 92
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->protocol:Ljava/lang/String;

    .line 93
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 94
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    .line 95
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    .line 96
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    .line 97
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    .line 98
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    .line 99
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    .line 100
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    .line 101
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    .line 102
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    .line 103
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    .line 104
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    .line 105
    const-string v7, "3.2.6"

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    .line 106
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 107
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    .line 108
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    .line 109
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    .line 110
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 111
    const-string v7, ""

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    .line 112
    const-string v7, "SendTag"

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    .line 113
    iput-boolean v10, p0, Lcom/AdX/tag/AdXConnect;->isLAT:Z

    .line 472
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 474
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v8, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 476
    .local v6, "settings":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "sendTag":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "stop"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 479
    sget-boolean v7, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "AdXAppTracker"

    const-string v8, "SendTag is set to stop "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    sget-boolean v7, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "AdXAppTracker"

    const-string v8, "Install Connection "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->getApplicationData(Landroid/content/Context;)V

    .line 486
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/AdX/tag/AdXConnect;->getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 490
    :try_start_0
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 492
    .local v3, "manager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    .line 491
    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 493
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "USEQASERVER"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "metaDataValue":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v7, "ON"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 495
    const-string v7, "testing.ad-x.co.uk"

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    .end local v4    # "metaDataValue":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "udid="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 506
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&androidID="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 507
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&macAddress="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 508
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&type="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 509
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&storeAppID="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 510
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&device_name="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 511
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&device_type="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 512
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&os_version="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 513
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&country_code="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 514
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&language="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 515
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&app_id="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 516
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&clientid="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 517
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&app_version="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 518
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&tag_version="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 519
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&fbattribution="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 520
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&uagent="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 521
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&update="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 523
    const-string v7, ""

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 525
    :try_start_1
    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&instData="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {p3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 526
    sget-boolean v7, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "AdXAppTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Sending extra install data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    :cond_3
    :goto_2
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 535
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v7, Lcom/AdX/tag/AdXConnect$4;

    invoke-direct {v7, p0}, Lcom/AdX/tag/AdXConnect$4;-><init>(Lcom/AdX/tag/AdXConnect;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 497
    .end local v2    # "mHandler":Landroid/os/Handler;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "manager":Landroid/content/pm/PackageManager;
    .restart local v4    # "metaDataValue":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v7, "apps.ad-x.co.uk"

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 499
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    .end local v4    # "metaDataValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "AdXAppTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error setting host: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_5
    const-string v7, "apps.ad-x.co.uk"

    iput-object v7, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;

    goto/16 :goto_1

    .line 527
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 528
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "AdXAppTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error encoding extra install data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/AdX/tag/AdXConnect;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "currency"    # Ljava/lang/String;
    .param p5, "custom_data"    # Ljava/lang/String;
    .param p6, "receiptdata"    # Ljava/lang/String;
    .param p7, "receiptsignature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    .line 81
    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    .line 82
    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->retargetEventTask:Lcom/AdX/tag/AdXConnect$RetargetEventTask;

    .line 83
    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 91
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;

    .line 92
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->protocol:Ljava/lang/String;

    .line 93
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 94
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    .line 95
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    .line 96
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    .line 97
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    .line 98
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    .line 99
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    .line 100
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    .line 101
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    .line 102
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    .line 103
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    .line 104
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    .line 105
    const-string v4, "3.2.6"

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    .line 106
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 107
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    .line 108
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    .line 109
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    .line 110
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 111
    const-string v4, ""

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    .line 112
    const-string v4, "SendTag"

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    .line 113
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/AdX/tag/AdXConnect;->isLAT:Z

    .line 553
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 555
    sget-boolean v4, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "AdXAppTracker"

    const-string v5, "Event Connection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->getApplicationData(Landroid/content/Context;)V

    .line 558
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 560
    sget-boolean v4, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "AdXAppTracker"

    const-string v5, "Got Application Data "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "oursecret="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 562
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&udid="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 563
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&androidID="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 564
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&macAddress="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 565
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&type="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 566
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&storeAppID="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 567
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&device_name="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 568
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&device_type="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 569
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&os_version="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 570
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&country_code="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 571
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&language="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 572
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&app_id="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 573
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&fbattribution="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 574
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&event="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 575
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&data="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 576
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&uagent="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 577
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&currency="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 580
    if-eqz p5, :cond_2

    .line 581
    :try_start_0
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&custom_data="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p5, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 583
    :cond_2
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 584
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&receiptdata="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p6, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 585
    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&receiptsignature="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p7, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_3
    :goto_0
    move-object v3, p2

    .line 594
    .local v3, "passEvent":Ljava/lang/String;
    move-object v2, p3

    .line 596
    .local v2, "passData":Ljava/lang/String;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 597
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v4, Lcom/AdX/tag/AdXConnect$5;

    invoke-direct {v4, p0, v3, v2}, Lcom/AdX/tag/AdXConnect$5;-><init>(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void

    .line 587
    .end local v1    # "mHandler":Landroid/os/Handler;
    .end local v2    # "passData":Ljava/lang/String;
    .end local v3    # "passEvent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AdXAppTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception URL encoding custom_data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _sendExtendedEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 314
    :try_start_0
    sget-object v3, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    const-string v4, "e"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    :try_start_1
    sget-object v3, Lcom/AdX/tag/AdXConnect;->productlist:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 319
    sget-object v3, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    const-string v4, "p"

    sget-object v5, Lcom/AdX/tag/AdXConnect;->productlist:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    :cond_0
    :goto_1
    sget-boolean v3, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "AdXAppTracker"

    sget-object v4, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    sget-object v3, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "jsonstring":Ljava/lang/String;
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/AdX/tag/AdXConnect;->getApplicationData(Landroid/content/Context;)V

    .line 327
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/AdX/tag/AdXConnect;->getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 329
    const-string v3, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 330
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "udid="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 331
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "device_name="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 332
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "device_type="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 333
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "os_version="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 334
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "fbattribution="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 336
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v3, Lcom/AdX/tag/AdXConnect$3;

    invoke-direct {v3, p0, v1}, Lcom/AdX/tag/AdXConnect$3;-><init>(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void

    .line 315
    .end local v1    # "jsonstring":Ljava/lang/String;
    .end local v2    # "mHandler":Landroid/os/Handler;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AdXAppTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "AdXAppTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->getIDFA(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15()Lcom/AdX/tag/AdXURLConnection;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    return-object v0
.end method

.method static synthetic access$16(Lcom/AdX/tag/AdXURLConnection;)V
    .locals 0

    .prologue
    .line 87
    sput-object p0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    return-void
.end method

.method static synthetic access$17()Lcom/AdX/tag/AdXConnect;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    return-object v0
.end method

.method static synthetic access$19(Lcom/AdX/tag/AdXConnect;)V
    .locals 0

    .prologue
    .line 85
    sput-object p0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    return-void
.end method

.method static synthetic access$2(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/AdX/tag/AdXConnect;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$21(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$RetargetEventTask;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->retargetEventTask:Lcom/AdX/tag/AdXConnect$RetargetEventTask;

    return-void
.end method

.method static synthetic access$22(Lcom/AdX/tag/AdXConnect;)Lcom/AdX/tag/AdXConnect$RetargetEventTask;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->retargetEventTask:Lcom/AdX/tag/AdXConnect$RetargetEventTask;

    return-object v0
.end method

.method static synthetic access$23(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$ConnectTask;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    return-void
.end method

.method static synthetic access$24(Lcom/AdX/tag/AdXConnect;)Lcom/AdX/tag/AdXConnect$ConnectTask;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    return-object v0
.end method

.method static synthetic access$25(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$ConnectEventTask;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    return-void
.end method

.method static synthetic access$26(Lcom/AdX/tag/AdXConnect;)Lcom/AdX/tag/AdXConnect$ConnectEventTask;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    return-object v0
.end method

.method static synthetic access$3(Lcom/AdX/tag/AdXConnect;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/AdX/tag/AdXConnect;->isLAT:Z

    return v0
.end method

.method static synthetic access$4(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/AdX/tag/AdXConnect;)V
    .locals 0

    .prologue
    .line 1221
    invoke-direct {p0}, Lcom/AdX/tag/AdXConnect;->getHost()V

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/AdX/tag/AdXConnect;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0, p1, p2}, Lcom/AdX/tag/AdXConnect;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addProductToList(Ljava/lang/String;)V
    .locals 1
    .param p0, "product"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-object v0, Lcom/AdX/tag/AdXConnect;->productlist:Lorg/json/JSONArray;

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 293
    return-void
.end method

.method public static addProductToList(Ljava/lang/String;DI)V
    .locals 3
    .param p0, "product"    # Ljava/lang/String;
    .param p1, "price"    # D
    .param p3, "quantity"    # I

    .prologue
    .line 295
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 297
    .local v0, "minidict":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "i"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v1, "pr"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 299
    const-string v1, "q"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    sget-object v1, Lcom/AdX/tag/AdXConnect;->productlist:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 1164
    const/4 v0, 0x0

    .line 1168
    .local v0, "document":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 1172
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1174
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1175
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1182
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 1177
    :catch_0
    move-exception v2

    .line 1179
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "AdXAppTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "buildDocument exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static doBroadcastConnectInstance(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    sget-boolean v2, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AdXAppTracker"

    const-string v3, "Broadcast Receiver - sending to AdX."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    sget-object v2, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v3, "done"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    return-void
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 679
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "HmacSHA256"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 680
    .local v3, "sk":Ljava/security/Key;
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 681
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 683
    .local v1, "hmac":[B
    invoke-direct {p0, v1}, Lcom/AdX/tag/AdXConnect;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 684
    .end local v1    # "hmac":[B
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "sk":Ljava/security/Key;
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/SignatureException;

    const-string v5, "No such algorithm HmacSHA256"

    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 686
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 687
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/security/SignatureException;

    const-string v5, "Invalid key HmacSHA256"

    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 349
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 352
    :cond_0
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    if-eqz v0, :cond_1

    sput-object v5, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 353
    :cond_1
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 354
    return-void
.end method

.method public static getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "custom_data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 358
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 361
    :cond_0
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    if-eqz v0, :cond_1

    sput-object v6, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 362
    :cond_1
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 363
    return-void
.end method

.method public static getAdXConnectEventInstanceWithReceipt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "receiptdata"    # Ljava/lang/String;
    .param p5, "receiptsignature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 367
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 370
    :cond_0
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    if-eqz v0, :cond_1

    sput-object v5, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 371
    :cond_1
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 372
    return-void
.end method

.method public static getAdXConnectEventInstanceWithReceipt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "receiptdata"    # Ljava/lang/String;
    .param p5, "receiptsignature"    # Ljava/lang/String;
    .param p6, "custom_data"    # Ljava/lang/String;

    .prologue
    .line 377
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 380
    :cond_0
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 381
    :cond_1
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 382
    return-void
.end method

.method public static getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "update"    # Z
    .param p2, "loglevel"    # I

    .prologue
    .line 145
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZILjava/lang/String;)Lcom/AdX/tag/AdXConnect;

    move-result-object v0

    return-object v0
.end method

.method public static getAdXConnectInstance(Landroid/content/Context;ZILjava/lang/String;)Lcom/AdX/tag/AdXConnect;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "update"    # Z
    .param p2, "loglevel"    # I
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    .line 150
    sput p2, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    .line 151
    sget v19, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    const/16 v19, 0x1

    :goto_0
    sput-boolean v19, Lcom/AdX/tag/AdXConnect;->WARN:Z

    .line 152
    sget v19, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    if-lez v19, :cond_8

    const/16 v19, 0x1

    :goto_1
    sput-boolean v19, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    .line 153
    sget-object v19, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 154
    .local v16, "settings":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 156
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v19, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    const/16 v20, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 157
    .local v17, "updateValue":I
    if-gez v17, :cond_0

    .line 159
    if-eqz p1, :cond_9

    sget-object v19, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v17, 0x1

    .line 161
    :goto_2
    sget-boolean v19, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string v19, "AdXAppTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Update flag set to "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 166
    .local v11, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 168
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "OTHERSTORE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "metaDataValue":Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 170
    sget-object v19, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v20, "done"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    sget-boolean v19, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v19, :cond_1

    const-string v19, "AdXAppTracker"

    const-string v20, "Otherstore set in manifest."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "NETWORK"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 176
    if-eqz v12, :cond_2

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 178
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 179
    .local v13, "network":Ljava/lang/String;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "REFERENCE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 180
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, "reference":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "referrer=utm_source%3D"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%26utm_medium%3Dcpc%26utm_campaign%3D"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 184
    .local v18, "uri":Ljava/lang/String;
    sget-object v19, Lcom/AdX/tag/AdXConnect;->REFERRAL_URL:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    sget-object v19, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v20, "done"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "manager":Landroid/content/pm/PackageManager;
    .end local v12    # "metaDataValue":Ljava/lang/String;
    .end local v13    # "network":Ljava/lang/String;
    .end local v15    # "reference":Ljava/lang/String;
    .end local v18    # "uri":Ljava/lang/String;
    :cond_2
    :goto_3
    sget-object v19, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 192
    .local v14, "receiverDone":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    if-eqz v14, :cond_a

    const-string v19, "done"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 194
    :cond_3
    sget-boolean v19, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v19, :cond_4

    const-string v19, "AdXAppTracker"

    const-string v20, "Sending to AdX"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    sget-object v19, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v19, :cond_5

    .line 196
    new-instance v19, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct/range {v19 .. v19}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v19, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 198
    :cond_5
    sget-object v19, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    if-nez v19, :cond_6

    .line 199
    new-instance v19, Lcom/AdX/tag/AdXConnect;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v19, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    .line 201
    :cond_6
    sget-object v19, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    .line 247
    :goto_4
    return-object v19

    .line 151
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "receiverDone":Ljava/lang/String;
    .end local v16    # "settings":Landroid/content/SharedPreferences;
    .end local v17    # "updateValue":I
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 152
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 160
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v16    # "settings":Landroid/content/SharedPreferences;
    .restart local v17    # "updateValue":I
    :cond_9
    sget-object v19, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v17, 0x0

    goto/16 :goto_2

    .line 188
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v19, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v19, :cond_2

    const-string v19, "AdXAppTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Exception "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 204
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v14    # "receiverDone":Ljava/lang/String;
    :cond_a
    sget-boolean v19, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v19, :cond_b

    const-string v19, "AdXAppTracker"

    const-string v20, "Re Referral yet - deferring.."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_b
    sget-object v19, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v20, "done"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    move-object/from16 v4, p0

    .line 213
    .local v4, "ctx":Landroid/content/Context;
    move/from16 v10, v17

    .line 214
    .local v10, "isUpdate":I
    move-object/from16 v7, p3

    .line 216
    .local v7, "extraInstallData":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v19

    if-nez v19, :cond_e

    .line 217
    :cond_c
    new-instance v19, Lcom/AdX/tag/AdXConnect$1;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v10, v7}, Lcom/AdX/tag/AdXConnect$1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 228
    sget v20, Lcom/AdX/tag/AdXConnect;->sendDelay:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 217
    invoke-static/range {v19 .. v20}, Lcom/AdX/tag/AdXConnect;->schedule(Ljava/lang/Runnable;Ljava/lang/Long;)V

    .line 247
    :cond_d
    :goto_5
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 231
    :cond_e
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 233
    .local v8, "handler":Landroid/os/Handler;
    new-instance v19, Lcom/AdX/tag/AdXConnect$2;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v10, v7}, Lcom/AdX/tag/AdXConnect$2;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 243
    sget v20, Lcom/AdX/tag/AdXConnect;->sendDelay:I

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 233
    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 245
    .end local v8    # "handler":Landroid/os/Handler;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v19, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v19, :cond_d

    const-string v19, "AdXAppTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Exception in delayed send to Ad-X: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static getAdXDLReferral(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    .line 407
    sget-object v3, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    .local v1, "settings":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/AdX/tag/AdXConnect;->DLREFERRAL:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "tempReferralURL":Ljava/lang/String;
    const/4 v0, 0x0

    .line 411
    .local v0, "count":I
    :goto_0
    mul-int/lit8 v3, p1, 0x5

    if-ge v0, v3, :cond_0

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 423
    :cond_0
    return-object v2

    .line 414
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 415
    :try_start_0
    sget-object v3, Lcom/AdX/tag/AdXConnect;->DLREFERRAL:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 419
    :cond_2
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getAdXDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    invoke-direct {v0, p0}, Lcom/AdX/tag/AdXConnect;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAdXReferral(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    .line 386
    sget-object v3, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 388
    .local v1, "settings":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "tempReferralURL":Ljava/lang/String;
    const/4 v0, 0x0

    .line 390
    .local v0, "count":I
    :goto_0
    mul-int/lit8 v3, p1, 0x5

    if-ge v0, v3, :cond_0

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 402
    :cond_0
    return-object v2

    .line 393
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 394
    :try_start_0
    sget-object v3, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 398
    :cond_2
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getApplicationData(Landroid/content/Context;)V
    .locals 26
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 719
    .local v9, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x80

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 722
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_1d

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 725
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "APP_NAME"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 726
    .local v10, "metaDataValue":Ljava/lang/String;
    if-eqz v10, :cond_c

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 728
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    .line 737
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "ADX_CLIENT_ID"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 738
    if-eqz v10, :cond_d

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 740
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    .line 748
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "SENDFINGERPRINT"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 749
    if-eqz v10, :cond_e

    const-string v21, "ON"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 750
    new-instance v18, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 751
    .local v18, "webview":Landroid/webkit/WebView;
    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    .line 756
    .end local v18    # "webview":Landroid/webkit/WebView;
    :goto_0
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "OTHERSTORE"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 757
    if-eqz v10, :cond_0

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 758
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    .line 760
    :cond_0
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "STOREAPPID"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 761
    if-eqz v10, :cond_1

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 762
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    .line 767
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 768
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    .line 771
    const-string v21, "android"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    .line 774
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    .line 777
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    .line 780
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    .line 781
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 789
    .local v14, "settings":Landroid/content/SharedPreferences;
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "DEVICE_ID"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 792
    if-eqz v10, :cond_f

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 794
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 894
    :goto_1
    sget-object v21, Lcom/AdX/tag/AdXConnect;->REFERRAL_URL:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 895
    .local v17, "tempReferralURL":Ljava/lang/String;
    if-eqz v17, :cond_2

    const-string v21, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 896
    sput-object v17, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    .line 898
    :cond_2
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_3

    const-string v21, "AdXAppTracker"

    const-string v22, "Metadata successfully loaded"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_3
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_4

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "APP_ID = ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_4
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_5

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "deviceName: ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_5
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_6

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "deviceType: ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_6
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_7

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "libraryVersion: ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_7
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_8

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "deviceOSVersion: ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_8
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_9

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "COUNTRY_CODE: ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_9
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_a

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "LANGUAGE_CODE: ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_a
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_b

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "referralURL: ["

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "metaDataValue":Ljava/lang/String;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "settings":Landroid/content/SharedPreferences;
    .end local v17    # "tempReferralURL":Ljava/lang/String;
    :cond_b
    :goto_2
    return-void

    .line 732
    .restart local v8    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "metaDataValue":Ljava/lang/String;
    :cond_c
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v21, :cond_b

    const-string v21, "AdXAppTracker"

    const-string v22, "APP_NAME can\'t be empty."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 919
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "metaDataValue":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 921
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v21, :cond_b

    const-string v21, "AdXAppTracker"

    const-string v22, "Check your AndroidManifest.xml file. For more details view integration document."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 744
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "metaDataValue":Ljava/lang/String;
    :cond_d
    :try_start_1
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v21, :cond_b

    const-string v21, "AdXAppTracker"

    const-string v22, "ADX_CLIENT_ID can\'t be empty."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 753
    :cond_e
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 801
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "settings":Landroid/content/SharedPreferences;
    :cond_f
    :try_start_2
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "ANDROIDID"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 802
    if-eqz v10, :cond_16

    const-string v21, "ON"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "android_id"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    .line 808
    :goto_3
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "MACADDRESS"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 809
    if-eqz v10, :cond_17

    const-string v21, "ON"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    .line 811
    .local v20, "wifiMan":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    .line 812
    .local v19, "wifiInf":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    .line 817
    .end local v19    # "wifiInf":Landroid/net/wifi/WifiInfo;
    .end local v20    # "wifiMan":Landroid/net/wifi/WifiManager;
    :goto_4
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "IMEI"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 818
    if-eqz v10, :cond_18

    const-string v21, "ON"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "phone"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 821
    .local v16, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v16, :cond_10

    .line 822
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 831
    .end local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_10
    :goto_5
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "SERIALID"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 832
    if-eqz v10, :cond_12

    const-string v21, "ON"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 833
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 834
    .local v13, "sdkVersion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_19

    const/16 v21, 0x9

    move/from16 v0, v21

    if-lt v13, v0, :cond_19

    .line 835
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_11

    const-string v21, "AdXAppTracker"

    const-string v22, "Using Serial ID."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_11
    invoke-static {}, Lcom/AdX/tag/DeviceSerial;->getInstance()Lcom/AdX/tag/DeviceSerial;

    .line 837
    invoke-static {}, Lcom/AdX/tag/DeviceSerial;->getDeviceSerial()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 846
    .end local v13    # "sdkVersion":I
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "000000000000000"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 848
    :cond_13
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 849
    .local v2, "buff":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    if-nez v21, :cond_14

    .line 851
    const-string v21, "ADXID"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 853
    :cond_14
    const-string v21, "emulatorDeviceId"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 856
    .local v15, "storedID":Ljava/lang/String;
    if-eqz v15, :cond_1a

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1a

    .line 858
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 886
    .end local v2    # "buff":Ljava/lang/StringBuffer;
    .end local v15    # "storedID":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 888
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_15

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Error getting a deviceID. e: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_15
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 805
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_16
    :try_start_4
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    goto/16 :goto_3

    .line 814
    :cond_17
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    goto/16 :goto_4

    .line 825
    :cond_18
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    goto/16 :goto_5

    .line 839
    .restart local v13    # "sdkVersion":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_12

    .line 840
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v21, :cond_12

    const-string v21, "AdXAppTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Serial ID not available on SDK "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 863
    .end local v13    # "sdkVersion":I
    .restart local v2    # "buff":Ljava/lang/StringBuffer;
    .restart local v15    # "storedID":Ljava/lang/String;
    :cond_1a
    const-string v4, "1234567890abcdefghijklmnopqrstuvw"

    .line 865
    .local v4, "constantChars":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    const/16 v21, 0x10

    move/from16 v0, v21

    if-lt v7, v0, :cond_1b

    .line 872
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 875
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 876
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v21, "emulatorDeviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 867
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v12, v0

    .line 868
    .local v12, "randomChar":I
    rem-int/lit8 v3, v12, 0x1e

    .line 869
    .local v3, "ch":I
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 865
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 883
    .end local v2    # "buff":Ljava/lang/StringBuffer;
    .end local v3    # "ch":I
    .end local v4    # "constantChars":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v12    # "randomChar":I
    .end local v15    # "storedID":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 915
    .end local v10    # "metaDataValue":Ljava/lang/String;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "settings":Landroid/content/SharedPreferences;
    :cond_1d
    :try_start_5
    sget-boolean v21, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v21, :cond_b

    const-string v21, "AdXAppTracker"

    const-string v22, "Check your AndroidManifest.xml file. For more details view integration document."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method private getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 636
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/AdX/tag/AdXConnect;->LASTIDFA:Ljava/lang/String;

    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 607
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 608
    .local v2, "projection":[Ljava/lang/String;
    const-string v6, ""

    .line 610
    .local v6, "attributionId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/AdX/tag/AdXConnect;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 613
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v10

    .line 628
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 614
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 615
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object v0, v6

    .line 628
    goto :goto_0

    .line 616
    :catch_0
    move-exception v8

    .line 617
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v0, :cond_3

    const-string v0, "AdXAppTracker"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_3
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v0, :cond_4

    const-string v0, "AdXAppTracker"

    const-string v1, "Retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/AdX/tag/AdXConnect;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 622
    .restart local v7    # "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, v10

    goto :goto_0

    .line 624
    :cond_6
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 625
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 626
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v9

    .local v9, "e2":Ljava/lang/Exception;
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v0, :cond_2

    const-string v0, "AdXAppTracker"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getHost()V
    .locals 8

    .prologue
    .line 1224
    :try_start_0
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1226
    .local v2, "manager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 1225
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1227
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "USEQASERVER"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1228
    .local v3, "metaDataValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "ON"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1229
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "AdXAppTracker"

    const-string v6, "Host Set to QA SERVER"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    const-string v5, "testing.ad-x.co.uk"

    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;

    .line 1234
    :goto_0
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "USEHTTPS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1235
    .local v4, "protocolValue":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v5, "ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1236
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AdXAppTracker"

    const-string v6, "Set to HTTPS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_1
    const-string v5, "https://"

    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->protocol:Ljava/lang/String;

    .line 1246
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "metaDataValue":Ljava/lang/String;
    .end local v4    # "protocolValue":Ljava/lang/String;
    :goto_1
    return-void

    .line 1232
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "manager":Landroid/content/pm/PackageManager;
    .restart local v3    # "metaDataValue":Ljava/lang/String;
    :cond_2
    const-string v5, "apps.ad-x.co.uk"

    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1241
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "metaDataValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1243
    const-string v5, "AdXAppTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error setting host: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_3
    const-string v5, "apps.ad-x.co.uk"

    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->host:Ljava/lang/String;

    goto :goto_1

    .line 1239
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "manager":Landroid/content/pm/PackageManager;
    .restart local v3    # "metaDataValue":Ljava/lang/String;
    .restart local v4    # "protocolValue":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v5, "http://"

    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->protocol:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getIDFA(Landroid/content/Context;)Z
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    .line 644
    .local v3, "resultCode":I
    if-nez v3, :cond_0

    .line 646
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    .line 648
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/AdX/tag/AdXConnect;->isLAT:Z

    .line 650
    sget-object v6, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 651
    .local v4, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 652
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v6, Lcom/AdX/tag/AdXConnect;->LASTIDFA:Ljava/lang/String;

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    const/4 v5, 0x1

    .line 665
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return v5

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lcom/AdX/tag/AdXConnect;->LASTIDFA:Ljava/lang/String;

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    .line 657
    iput-boolean v5, p0, Lcom/AdX/tag/AdXConnect;->isLAT:Z

    .line 658
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 663
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v6, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lcom/AdX/tag/AdXConnect;->LASTIDFA:Ljava/lang/String;

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/AdX/tag/AdXConnect;->idfa:Ljava/lang/String;

    .line 664
    iput-boolean v5, p0, Lcom/AdX/tag/AdXConnect;->isLAT:Z

    goto :goto_0
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v6, 0x0

    .line 1195
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1196
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 1197
    .local v5, "nodeValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1199
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1201
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 1202
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 1209
    if-eqz v5, :cond_0

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1211
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1218
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_0
    return-object v6

    .line 1204
    .restart local v1    # "i":I
    .restart local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .restart local v3    # "length":I
    :cond_1
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1205
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    .line 1206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1202
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSeencount(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    .line 428
    sget-object v3, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 430
    .local v1, "settings":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/AdX/tag/AdXConnect;->SEENCOUNT:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "tempSeencount":Ljava/lang/String;
    const/4 v0, 0x0

    .line 432
    .local v0, "count":I
    :goto_0
    mul-int/lit8 v3, p1, 0x5

    if-ge v0, v3, :cond_0

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    :cond_0
    return-object v2

    .line 435
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 436
    :try_start_0
    sget-object v3, Lcom/AdX/tag/AdXConnect;->SEENCOUNT:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 439
    :cond_2
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private handleConnectResponse(Ljava/lang/String;)Z
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1095
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1097
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_9

    .line 1099
    const-string v9, "Referral"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/AdX/tag/AdXConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "nodeValue1":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1105
    sget-boolean v9, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "AdXAppTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Successfully get returned referral "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_0
    iget-object v9, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v10, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1107
    .local v6, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1108
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    invoke-interface {v1, v9, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1112
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    const-string v9, "DLReferral"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/AdX/tag/AdXConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 1113
    .local v4, "nodeValue2":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1115
    sget-boolean v9, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "AdXAppTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Successfully get returned DLreferral "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_2
    iget-object v9, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v10, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1117
    .restart local v6    # "settings":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1118
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/AdX/tag/AdXConnect;->DLREFERRAL:Ljava/lang/String;

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1119
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1122
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "settings":Landroid/content/SharedPreferences;
    :cond_3
    const-string v9, "Seencount"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/AdX/tag/AdXConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, "nodeValue3":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1125
    iget-object v9, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v10, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1126
    .restart local v6    # "settings":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1127
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/AdX/tag/AdXConnect;->SEENCOUNT:Ljava/lang/String;

    invoke-interface {v1, v9, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1128
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1131
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "settings":Landroid/content/SharedPreferences;
    :cond_4
    const-string v9, "Success"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/AdX/tag/AdXConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 1133
    .local v2, "nodeValue":Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v9, "true"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1135
    sget-boolean v8, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "AdXAppTracker"

    const-string v9, "Successfully connected to AdX site."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    .end local v2    # "nodeValue":Ljava/lang/String;
    .end local v3    # "nodeValue1":Ljava/lang/String;
    .end local v4    # "nodeValue2":Ljava/lang/String;
    .end local v5    # "nodeValue3":Ljava/lang/String;
    :cond_5
    :goto_0
    return v7

    .line 1138
    .restart local v2    # "nodeValue":Ljava/lang/String;
    .restart local v3    # "nodeValue1":Ljava/lang/String;
    .restart local v4    # "nodeValue2":Ljava/lang/String;
    .restart local v5    # "nodeValue3":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_8

    const-string v9, "stop"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1140
    sget-boolean v9, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "AdXAppTracker"

    const-string v10, "Successfully connected to AdX site - stopping tags from now on."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_7
    iget-object v9, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v10, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1142
    .restart local v6    # "settings":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1143
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    const-string v9, "stop"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1144
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1149
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "settings":Landroid/content/SharedPreferences;
    :cond_8
    sget-boolean v7, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "AdXAppTracker"

    const-string v9, "Event Connection before device attribution."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "nodeValue":Ljava/lang/String;
    .end local v3    # "nodeValue1":Ljava/lang/String;
    .end local v4    # "nodeValue2":Ljava/lang/String;
    .end local v5    # "nodeValue3":Ljava/lang/String;
    :cond_9
    move v7, v8

    .line 1153
    goto :goto_0
.end method

.method private static schedule(Ljava/lang/Runnable;Ljava/lang/Long;)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delaySeconds"    # Ljava/lang/Long;

    .prologue
    .line 704
    sget-object v0, Lcom/AdX/tag/AdXConnect;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 705
    return-void
.end method

.method public static sendExtendedEvent(I)V
    .locals 3
    .param p0, "type_index"    # I

    .prologue
    .line 308
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lc"

    aput-object v2, v0, v1

    .line 309
    .local v0, "type":[Ljava/lang/String;
    sget-object v1, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    aget-object v2, v0, p0

    invoke-direct {v1, v2}, Lcom/AdX/tag/AdXConnect;->_sendExtendedEvent(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public static sendExtendedEventOfName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    invoke-direct {v0, p0}, Lcom/AdX/tag/AdXConnect;->_sendExtendedEvent(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public static setAttribution(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;

    .prologue
    .line 448
    sget-object v3, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 449
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "referrer=utm_source%3D"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%26utm_medium%3Dcpc%26utm_campaign%3D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "uri":Ljava/lang/String;
    sget-object v3, Lcom/AdX/tag/AdXConnect;->REFERRAL_URL:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    sget-object v3, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v4, "done"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 455
    return-void
.end method

.method public static setEventParameter(ILjava/lang/Object;)V
    .locals 5
    .param p0, "index"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 284
    const/16 v2, 0xe

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ci"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "kw"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "pr"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "q"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "din"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "dout"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "nc"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "sid"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "did"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "l"

    aput-object v3, v1, v2

    .line 287
    .local v1, "keys":[Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    aget-object v3, v1, p0

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AdXAppTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEventParameterOfName(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 279
    :try_start_0
    sget-object v1, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdXAppTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    sput-object p0, Lcom/AdX/tag/AdXConnect;->clientKey:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public static startNewExtendedEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 272
    :cond_0
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 273
    :cond_1
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    invoke-direct {v0, p0}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 274
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->dict:Lorg/json/JSONObject;

    .line 275
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->productlist:Lorg/json/JSONArray;

    .line 276
    return-void
.end method

.method private toHexString([B)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 695
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 696
    .local v1, "formatter":Ljava/util/Formatter;
    array-length v5, p1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 699
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 700
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 696
    :cond_0
    aget-byte v0, p1, v3

    .line 697
    .local v0, "b":B
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .prologue
    .line 1257
    return-void
.end method
