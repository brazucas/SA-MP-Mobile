.class public Lcom/rockstargames/gtasa/GTASA;
.super Lcom/wardrumstudios/utils/WarMedia;
.source "GTASA.java"


# static fields
.field static UseAndroidHal:Z

.field private static debugStaticCheck:I

.field public static gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

.field static vmVersion:Ljava/lang/String;


# instance fields
.field IsAmazonBuild:Z

.field IsGermanBuild:Z

.field final UseADX:Z

.field UseExpansionPack:Z

.field public isInSocialClub:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/gtasa/GTASA;->UseAndroidHal:Z

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    .line 47
    sput-object v1, Lcom/rockstargames/gtasa/GTASA;->gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

    .line 52
    sput-object v1, Lcom/rockstargames/gtasa/GTASA;->vmVersion:Ljava/lang/String;

    .line 392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** Loading SO\'s"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    :try_start_0
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/gtasa/GTASA;->vmVersion:Ljava/lang/String;

    .line 395
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vmVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/rockstargames/gtasa/GTASA;->vmVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    const-string v0, "ImmEmulatorJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    const-string v0, "SCAnd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 400
    const-string v0, "GTASA"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 401
    return-void

    .line 398
    :catch_0
    move-exception v0

    goto :goto_0

    .line 397
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->UseExpansionPack:Z

    .line 43
    iput-boolean v1, p0, Lcom/rockstargames/gtasa/GTASA;->IsAmazonBuild:Z

    .line 48
    iput-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    .line 50
    iput-boolean v1, p0, Lcom/rockstargames/gtasa/GTASA;->IsGermanBuild:Z

    .line 54
    iput-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->UseADX:Z

    return-void
.end method

.method public static staticEnterSocialClub()V
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/rockstargames/gtasa/GTASA;->gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

    invoke-virtual {v0}, Lcom/rockstargames/gtasa/GTASA;->EnterSocialClub()V

    .line 386
    return-void
.end method

.method public static staticExitSocialClub()V
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/rockstargames/gtasa/GTASA;->gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

    invoke-virtual {v0}, Lcom/rockstargames/gtasa/GTASA;->ExitSocialClub()V

    .line 382
    return-void
.end method


# virtual methods
.method public AfterDownloadFunction()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    :try_start_0
    sget-boolean v4, Lcom/rockstargames/gtasa/GTASA;->UseAndroidHal:Z

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 171
    invoke-static {p0}, Lcom/rockstargames/hal/ActivityWrapper;->setActivity(Landroid/app/Activity;)V

    .line 172
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTransitioning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    const-string v4, "StartupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** MainActivity onCreate() transitioning ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ***)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/rockstargames/hal/ActivityWrapper;->setTransitioning(Z)V

    .line 180
    :goto_0
    sget v4, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    .line 182
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 184
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_2

    move v4, v2

    :goto_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_3

    :goto_2
    if-ne v4, v2, :cond_4

    .line 185
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/rockstargames/hal/ActivityWrapper;->runMain(II)V

    .line 190
    :goto_3
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rockstargames/hal/andFacebook;->onCreate()V

    .line 195
    .end local v0    # "d":Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->DoResumeEvent()V

    .line 201
    :goto_4
    return-void

    .line 178
    :cond_1
    const-string v4, "StartupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** MainActivity onCreate() not transitioning ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ***)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 199
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Exception"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "d":Landroid/view/Display;
    :cond_2
    move v4, v3

    .line 184
    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 187
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/rockstargames/hal/ActivityWrapper;->runMain(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public EnterSocialClub()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/rockstargames/gtasa/GTASA$1;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtasa/GTASA$1;-><init>(Lcom/rockstargames/gtasa/GTASA;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtasa/GTASA;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public ExitSocialClub()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    .line 371
    iget-object v0, p0, Lcom/rockstargames/gtasa/GTASA;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/rockstargames/gtasa/GTASA;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtasa/GTASA;->setContentView(Landroid/view/View;)V

    .line 376
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtasa/GTASA;->setRequestedOrientation(I)V

    .line 377
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/gtasa/GTASA;->view:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtasa/GTASA;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    const-string v5, "ForceGermanBuild"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    iget-boolean v3, p0, Lcom/rockstargames/gtasa/GTASA;->IsGermanBuild:Z

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 209
    :cond_1
    const-string v5, "SetLocale"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {p0, p2}, Lcom/rockstargames/gtasa/GTASA;->SetLocale(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    const-string v5, "IsAmazonBuild"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    iget-boolean v3, p0, Lcom/rockstargames/gtasa/GTASA;->IsAmazonBuild:Z

    goto :goto_0

    .line 213
    :cond_3
    const-string v5, "Download"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    const-string v5, "IsDownloaded"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    :try_start_0
    const-string v5, ";"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "part":[Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/rockstargames/gtasa/GTASA;->baseDirectory:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v0, "f":Ljava/io/File;
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 226
    .local v1, "len":I
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    int-to-long v8, v1

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 230
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "len":I
    .end local v2    # "part":[Ljava/lang/String;
    :cond_4
    const-string v4, "ADXEvent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    sget-object v4, Lcom/rockstargames/gtasa/GTASA;->gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

    const-string v5, ""

    const-string v6, ""

    invoke-static {v4, p2, v5, v6}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public ServiceAppCommandValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 241
    const-string v1, "GetDownloadBytes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    const-string v1, "GetDownloadState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    const/4 v0, 0x4

    goto :goto_0

    .line 253
    :cond_2
    const-string v1, "GetNetworkState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native main()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 345
    invoke-super {p0, p1, p2, p3}, Lcom/wardrumstudios/utils/WarMedia;->onActivityResult(IILandroid/content/Intent;)V

    .line 346
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/rockstargames/hal/andFacebook;->onActivityResult(IILandroid/content/Intent;)V

    .line 347
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 327
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    iget-boolean v1, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v1, "StartupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** MainActivity onConfigurationChanged() ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ***)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget v1, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    .line 334
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 336
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    :goto_2
    if-ne v1, v2, :cond_3

    .line 337
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/rockstargames/hal/ActivityWrapper;->setCurrentScreenSize(II)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 336
    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 339
    :cond_3
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/rockstargames/hal/ActivityWrapper;->setCurrentScreenSize(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 61
    sput-object p0, Lcom/rockstargames/gtasa/GTASA;->gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "isupdate":Z
    const/4 v3, 0x0

    .line 65
    .local v3, "loglevel":I
    sget-object v7, Lcom/rockstargames/gtasa/GTASA;->gtasaSelf:Lcom/rockstargames/gtasa/GTASA;

    invoke-static {v7, v2, v6}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    .line 67
    const v7, 0x1e1bc

    iput v7, p0, Lcom/rockstargames/gtasa/GTASA;->HELLO_ID:I

    .line 68
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/rockstargames/gtasa/GTASA;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->appIntent:Landroid/content/Intent;

    .line 69
    const-string v7, "GTA3 San Andreas"

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->appTickerText:Ljava/lang/CharSequence;

    .line 70
    const-string v7, "San Andreas"

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->appContentTitle:Ljava/lang/CharSequence;

    .line 71
    const-string v7, "Running - Return to Game?"

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->appContentText:Ljava/lang/CharSequence;

    .line 72
    const-string v7, "com.rockstargames.gtasa.R"

    sput-object v7, Lcom/google/android/vending/expansion/downloader/Helpers;->resourceClassString:Ljava/lang/String;

    .line 74
    const-string v7, "main.8.com.rockstargames.gtasa.obb"

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->expansionFileName:Ljava/lang/String;

    .line 75
    const-string v7, "patch.8.com.rockstargames.gtasa.obb"

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->patchFileName:Ljava/lang/String;

    .line 77
    const-string v7, "com.rockstargames.gtasa"

    invoke-virtual {p0, v7}, Lcom/rockstargames/gtasa/GTASA;->GetPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->apkFileName:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->GetGameBaseDirectory()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->baseDirectory:Ljava/lang/String;

    .line 80
    iput-boolean v5, p0, Lcom/rockstargames/gtasa/GTASA;->AllowLongPressForExit:Z

    .line 81
    iput-boolean v6, p0, Lcom/rockstargames/gtasa/GTASA;->reportPS3as360:Z

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/GTASA/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "externalDirectory":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/rockstargames/gtasa/GTASA;->expansionFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "testExpansionFileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "buildobb":Ljava/io/File;
    iget-boolean v7, p0, Lcom/rockstargames/gtasa/GTASA;->IsAmazonBuild:Z

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    iput-boolean v6, p0, Lcom/rockstargames/gtasa/GTASA;->UseExpansionPack:Z

    .line 89
    iget-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->expansionFileName:Ljava/lang/String;

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->expansionFileName:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/rockstargames/gtasa/GTASA;->baseDirectory:Ljava/lang/String;

    .line 92
    :cond_0
    iget-boolean v7, p0, Lcom/rockstargames/gtasa/GTASA;->IsAmazonBuild:Z

    if-eqz v7, :cond_1

    iput-boolean v6, p0, Lcom/rockstargames/gtasa/GTASA;->UseExpansionPack:Z

    .line 94
    :cond_1
    const-string v7, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlDfyMGss+/15UlnoCk+/NWLga5rXTgJyt893tWIPAkSNawLOHC8pFzuKZ26ZxGKUB88+6kfXVHBryUb3pDWItMj9qbDm+6Guu3mDx+r9TmSDEN8olB2egFSeosjWT4wvFu/couZumEGKgAqcIl82LIfblyGmkh9zzgyf3MSQnQdUbtIpC4uoYs51f9jEalFrtAWb7gGrPFKbMydRZgADO+Uon1w9Q+Zv5Jmtgg0YpA1hxQRf9eEidlz1Rry1U+/HtfZH7oHKIiDFm+7EmRwX4qacxVr/xdM5AUvI5GMgij37i+eAxQAq267mRDOy3UZc42odygjvGqL8ln9+cUfudwIDAQAB"

    sput-object v7, Lcom/wardrumstudios/utils/WarDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 96
    const/16 v7, 0x14

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    sput-object v7, Lcom/wardrumstudios/utils/WarDownloaderService;->SALT:[B

    .line 97
    iget-boolean v7, p0, Lcom/rockstargames/gtasa/GTASA;->UseExpansionPack:Z

    if-eqz v7, :cond_2

    .line 98
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    iput-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .line 100
    iget-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    new-instance v8, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    const-wide/32 v10, 0x75469c7c

    invoke-direct {v8, v5, v9, v10, v11}, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;-><init>(ZIJ)V

    aput-object v8, v7, v6

    .line 105
    iget-object v7, p0, Lcom/rockstargames/gtasa/GTASA;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    new-instance v8, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    const-wide/32 v10, 0x254584f6

    invoke-direct {v8, v6, v9, v10, v11}, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;-><init>(ZIJ)V

    aput-object v8, v7, v5

    .line 114
    :cond_2
    iput-boolean v6, p0, Lcom/rockstargames/gtasa/GTASA;->AddMovieExtension:Z

    .line 116
    iput-boolean v5, p0, Lcom/rockstargames/gtasa/GTASA;->wantsMultitouch:Z

    .line 117
    iput-boolean v5, p0, Lcom/rockstargames/gtasa/GTASA;->wantsAccelerometer:Z

    .line 119
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->RestoreCurrentLanguage()V

    .line 121
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/rockstargames/gtasa/GTASA;->IsTV()Z

    move-result v7

    if-nez v7, :cond_4

    :goto_0
    sput-boolean v5, Lcom/rockstargames/gtasa/GTASA;->UseAndroidHal:Z

    .line 126
    sget-boolean v5, Lcom/rockstargames/gtasa/GTASA;->UseAndroidHal:Z

    if-nez v5, :cond_3

    .line 127
    iput-boolean v6, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    .line 137
    :cond_3
    return-void

    :cond_4
    move v5, v6

    .line 124
    goto :goto_0

    .line 96
    nop

    :array_0
    .array-data 1
        0x1t
        0x2at
        -0xct
        -0x1t
        0x36t
        0x62t
        -0x64t
        -0xct
        0x2bt
        0x2t
        -0x8t
        -0x4t
        0x9t
        0x5t
        -0x6at
        -0x6bt
        -0x21t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 318
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onDestroy()V

    .line 319
    iget-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** MainActivity onDestroy() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 141
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 143
    iget-boolean v1, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/ActivityWrapper;->onBackPressed()V

    .line 159
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-boolean v1, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-eqz v1, :cond_2

    .line 150
    const/16 v1, 0x60

    if-eq p1, v1, :cond_1

    const/16 v1, 0x61

    if-eq p1, v1, :cond_1

    const/16 v1, 0x63

    if-eq p1, v1, :cond_1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x67

    if-eq p1, v1, :cond_1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_2

    .line 155
    :cond_1
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/ActivityWrapper;->onExitSC()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarMedia;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onPause()V

    .line 298
    iget-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onPauseCallback()V

    .line 301
    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** MainActivity onPause() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    goto :goto_0
.end method

.method public onRestart()V
    .locals 3

    .prologue
    .line 277
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onRestart()V

    .line 278
    iget-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** MainActivity onRestart() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 286
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onResume()V

    .line 287
    iget-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onResumeCallback()V

    .line 290
    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** MainActivity onResume() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onStart()V

    .line 267
    iget-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onStartCallback()V

    .line 270
    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** MainActivity onStart() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarMedia;->onStop()V

    .line 308
    iget-boolean v0, p0, Lcom/rockstargames/gtasa/GTASA;->isInSocialClub:Z

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andFacebook;->onStop()V

    .line 311
    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** MainActivity onStop() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/gtasa/GTASA;->debugStaticCheck:I

    goto :goto_0
.end method

.method public native setCurrentScreenSize(II)V
.end method
