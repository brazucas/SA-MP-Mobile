.class public Lcom/rockstargames/hal/ActivityWrapper;
.super Ljava/lang/Object;
.source "ActivityWrapper.java"


# static fields
.field private static applicationContext:Landroid/content/Context;

.field private static atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

.field private static instance:Lcom/rockstargames/hal/ActivityWrapper;

.field private static layout:Lcom/rockstargames/hal/ContainerLayout;

.field private static linkedAccountResult:Ljava/lang/String;

.field private static mainActivity:Landroid/app/Activity;

.field private static scale:F

.field private static transitioning:Z

.field private static windowHeight:I

.field private static windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    .line 345
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/rockstargames/hal/ActivityWrapper;->scale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetLinkedAccountResult(Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 321
    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->linkedAccountResult:Ljava/lang/String;

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/ActivityWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockstargames/hal/ActivityWrapper;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/rockstargames/hal/ActivityWrapper;->runUpdateCallback()V

    return-void
.end method

.method public static addUpdateCallback()V
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/ActivityWrapper$3;

    invoke-direct {v1}, Lcom/rockstargames/hal/ActivityWrapper$3;-><init>()V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFreeMemoryBytes()J
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/rockstargames/hal/ActivityWrapper;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/rockstargames/hal/ActivityWrapper;

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    .line 37
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    return-object v0
.end method

.method public static getLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method public static getManagedStaticCounts()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->getStaticCounts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "debugString":Ljava/lang/String;
    return-object v0
.end method

.method public static getScale()F
    .locals 1

    .prologue
    .line 347
    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->scale:F

    return v0
.end method

.method public static getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    return-object v0
.end method

.method public static getTotalMemoryBytes()J
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTransitioning()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    return v0
.end method

.method public static getUsedMemoryBytes()J
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 229
    const-string v0, "nope"

    .line 232
    .local v0, "app_ver":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getWindowHeight()I
    .locals 1

    .prologue
    .line 350
    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->windowHeight:I

    return v0
.end method

.method public static getWindowWidth()I
    .locals 1

    .prologue
    .line 349
    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->windowWidth:I

    return v0
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/ActivityWrapper$1;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/ActivityWrapper$1;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityWrapper"

    const-string v2, "Unable to report error as toast!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "heading"    # Ljava/lang/String;
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockstargames/hal/ActivityWrapper;->showToast(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method private native main()V
.end method

.method public static onDestroyCallback()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    .line 305
    return-void
.end method

.method private native onPauseApp()V
.end method

.method public static onPauseCallback()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/rockstargames/hal/andAudio;->MuteAllAudio(Z)V

    .line 293
    invoke-static {}, Lcom/rockstargames/hal/andVideo;->Suspend()V

    .line 294
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;->onPauseApp()V

    .line 295
    return-void
.end method

.method public static onRestartCallback()V
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;->onStartApp()V

    .line 280
    return-void
.end method

.method private native onResumeApp(Ljava/lang/String;)V
.end method

.method public static onResumeCallback()V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/rockstargames/hal/andAudio;->MuteAllAudio(Z)V

    .line 285
    invoke-static {}, Lcom/rockstargames/hal/andVideo;->Resume()V

    .line 286
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    sget-object v1, Lcom/rockstargames/hal/ActivityWrapper;->linkedAccountResult:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ActivityWrapper;->onResumeApp(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->invalidateHierarchy()V

    .line 288
    return-void
.end method

.method private native onStartApp()V
.end method

.method public static onStartCallback()V
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;->onStartApp()V

    .line 275
    return-void
.end method

.method public static onStopCallback()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public static runMain(II)V
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 188
    sput p0, Lcom/rockstargames/hal/ActivityWrapper;->windowWidth:I

    .line 189
    sput p1, Lcom/rockstargames/hal/ActivityWrapper;->windowHeight:I

    .line 207
    const-string v1, "HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using window size of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/rockstargames/hal/ActivityWrapper;->windowWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/rockstargames/hal/ActivityWrapper;->windowHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    .line 211
    .local v0, "wrapper":Lcom/rockstargames/hal/ActivityWrapper;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->setupLocale()V

    .line 213
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ActivityWrapper;->setVersionNumber(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p0, p1}, Lcom/rockstargames/hal/ActivityWrapper;->setCurrentScreenSize(II)V

    .line 219
    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;->main()V

    .line 220
    return-void
.end method

.method private native runUpdateCallback()V
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->mainActivity:Landroid/app/Activity;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    .line 62
    new-instance v2, Lcom/rockstargames/hal/ContainerLayout;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    .line 64
    sget-object v2, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/rockstargames/hal/ContainerLayout;->setBackgroundColor(I)V

    .line 66
    sget-object v2, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-static {p0}, Lcom/rockstargames/hal/andSecureData;->Init(Landroid/content/Context;)V

    .line 82
    sget-object v2, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    if-nez v2, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x32

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 85
    .local v0, "cacheMemory":I
    new-instance v2, Lcom/rockstargames/hal/TextureAtlasCache;

    invoke-direct {v2, v0}, Lcom/rockstargames/hal/TextureAtlasCache;-><init>(I)V

    sput-object v2, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    .line 89
    :try_start_0
    new-array v2, v0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "cacheMemory":I
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v0    # "cacheMemory":I
    :catch_0
    move-exception v1

    .line 93
    .local v1, "ome":Ljava/lang/OutOfMemoryError;
    const-string v2, "ActivityWrapper"

    const-string v3, "Running low on memory!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private native setLanguage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static setTransitioning(Z)V
    .locals 0
    .param p0, "trans"    # Z

    .prologue
    .line 183
    sput-boolean p0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    .line 184
    return-void
.end method

.method private native setVersionNumber(Ljava/lang/String;)V
.end method

.method public static setupLocale()V
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/ActivityWrapper;->setLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static showToast(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "longDuration"    # Z

    .prologue
    .line 155
    return-void
.end method


# virtual methods
.method public native getLocalisedString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native onBackPressed()V
.end method

.method public native onExitSC()V
.end method

.method public native setCurrentScreenSize(II)V
.end method
