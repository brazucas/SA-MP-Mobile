.class public Lcom/wardrumstudios/utils/WarMedia;
.super Lcom/wardrumstudios/utils/WarGamepad;
.source "WarMedia.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarMedia$PoolInfo;,
        Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    }
.end annotation


# instance fields
.field public AddMovieExtension:Z

.field protected AllowLongPressForExit:Z

.field DeviceCountry:Ljava/lang/String;

.field public DeviceLocale:Ljava/lang/String;

.field DisplayMovieTextOnTap:Z

.field final DoLog:Z

.field public final FinalRelease:Z

.field ForceSize:Z

.field GameIsFocused:Z

.field protected HELLO_ID:I

.field IsInValidation:Z

.field private IsScreenPaused:Z

.field IsShowingBackMessage:I

.field KeepAspectRatio:Z

.field MovieIsSkippable:Z

.field MovieTextDisplayed:Z

.field protected SpecialBuildType:I

.field TABLET_SIZE:F

.field protected UseExpansionFiles:Z

.field protected UseFTPDownload:Z

.field public UseWarDownloader:Z

.field final UsingSounds:Z

.field activity:Landroid/app/Activity;

.field protected apkFileName:Ljava/lang/String;

.field protected appContentText:Ljava/lang/CharSequence;

.field protected appContentTitle:Ljava/lang/CharSequence;

.field protected appIntent:Landroid/content/Intent;

.field protected appStatusIcon:I

.field protected appTickerText:Ljava/lang/CharSequence;

.field audioManager:Landroid/media/AudioManager;

.field audioMax:I

.field audioVolume:I

.field availableMemory:I

.field bIsPlayingMovie:I

.field bMoviePlayerPaused:Z

.field public baseDirectory:Ljava/lang/String;

.field public baseDirectoryRoot:Ljava/lang/String;

.field protected cachedSizeRead:I

.field col1:Landroid/widget/LinearLayout;

.field col2:Landroid/widget/LinearLayout;

.field col3:Landroid/widget/LinearLayout;

.field currentMovieFilename:Ljava/lang/String;

.field currentMovieLength:I

.field currentMovieMS:I

.field currentMovieOffset:I

.field currentMovieVolume:F

.field currentTempID:I

.field customMovieHolder:Landroid/view/SurfaceHolder;

.field customMovieSurface:Landroid/view/SurfaceView;

.field public dialogPlayer:Landroid/media/MediaPlayer;

.field downloadHolder:Landroid/view/SurfaceHolder;

.field downloadView:Landroid/view/SurfaceView;

.field downloadViewCreated:Z

.field exitDialog:Landroid/app/AlertDialog;

.field protected expansionFileName:Ljava/lang/String;

.field protected hasTouchScreen:Z

.field isCompleting:Z

.field isPhone:Z

.field private isUserPresent:Z

.field lastMovieStop:J

.field public llSplashView:Landroid/widget/LinearLayout;

.field public localIp:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field mAscent:I

.field private mAverageSpeed:Landroid/widget/TextView;

.field mCamera:Landroid/hardware/Camera;

.field private mCancelValidation:Z

.field private mCellMessage:Landroid/view/View;

.field private mDashboard:Landroid/view/View;

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private mState:I

.field private mStatePaused:Z

.field private mStatusText:Landroid/widget/TextView;

.field mTextPaint:Landroid/graphics/Paint;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field memInfo:Landroid/app/ActivityManager$MemoryInfo;

.field memoryThreshold:I

.field protected metrics:Landroid/util/DisplayMetrics;

.field mgr:Landroid/app/ActivityManager;

.field movieLooping:I

.field public moviePlayer:Landroid/media/MediaPlayer;

.field movieSubtitleText:Ljava/lang/String;

.field movieTextDisplayNow:Z

.field movieTextHolder:Landroid/view/SurfaceHolder;

.field movieTextScale:I

.field movieTextSurface:Landroid/view/SurfaceView;

.field movieTextView:Landroid/widget/TextView;

.field movieView:Landroid/widget/LinearLayout;

.field movieViewCreated:Z

.field movieViewHeight:I

.field movieViewIsActive:Z

.field movieViewText:Landroid/widget/TextView;

.field movieViewWidth:I

.field movieViewX:I

.field movieViewY:I

.field movieWindowHolder:Landroid/view/SurfaceHolder;

.field movieWindowSurface:Landroid/view/SurfaceView;

.field public musicPlayer:Landroid/media/MediaPlayer;

.field myPid:[I

.field private myVib:Landroid/os/Vibrator;

.field private myWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected overrideExpansionName:Z

.field protected patchFileName:Ljava/lang/String;

.field protected privateData:[B

.field protected privateDataFiles:[Ljava/lang/String;

.field row1:Landroid/widget/LinearLayout;

.field row2:Landroid/widget/LinearLayout;

.field row3:Landroid/widget/LinearLayout;

.field sTextPaint:Landroid/text/TextPaint;

.field screenWidthInches:F

.field skipMovies:Z

.field skipSound:Z

.field soundLog:Z

.field sounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wardrumstudios/utils/WarMedia$PoolInfo;",
            ">;"
        }
    .end annotation
.end field

.field tPaint:Landroid/graphics/Paint;

.field textPaint:Landroid/text/TextPaint;

.field totalMemory:I

.field vibrateEffects:[[J

.field public wardown:Lcom/wardrumstudios/utils/WarDownloader;

.field protected xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x5

    const/4 v5, 0x7

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarGamepad;-><init>()V

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->apkFileName:Ljava/lang/String;

    .line 142
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->overrideExpansionName:Z

    .line 143
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .line 156
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->KeepAspectRatio:Z

    .line 157
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->ForceSize:Z

    .line 159
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->UseFTPDownload:Z

    .line 160
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->UseWarDownloader:Z

    .line 161
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->wardown:Lcom/wardrumstudios/utils/WarDownloader;

    .line 164
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->FinalRelease:Z

    .line 165
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    .line 166
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    .line 168
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->DoLog:Z

    .line 172
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 173
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->skipSound:Z

    .line 174
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->skipMovies:Z

    .line 175
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->isCompleting:Z

    .line 176
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 177
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->soundLog:Z

    .line 186
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieTextOnTap:Z

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    .line 189
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextDisplayNow:Z

    .line 191
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->SpecialBuildType:I

    .line 194
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    .line 196
    const/16 v0, 0x303a

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->HELLO_ID:I

    .line 197
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->appStatusIcon:I

    .line 199
    const-string v0, "MyApp"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->appTickerText:Ljava/lang/CharSequence;

    .line 200
    const-string v0, "MyApp"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->appContentTitle:Ljava/lang/CharSequence;

    .line 201
    const-string v0, "Running - Return to Game?"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->appContentText:Ljava/lang/CharSequence;

    .line 202
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->appIntent:Landroid/content/Intent;

    .line 203
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->UseExpansionFiles:Z

    .line 205
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->AllowLongPressForExit:Z

    .line 207
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    .line 217
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    .line 219
    const v0, 0x186a0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentTempID:I

    .line 231
    const-string v0, "/mnt/sdcard/"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    .line 232
    const-string v0, "/mnt/sdcard/"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    .line 233
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->AddMovieExtension:Z

    .line 238
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 239
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    .line 242
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSizeRead:I

    .line 246
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->UsingSounds:Z

    .line 248
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->memoryThreshold:I

    .line 249
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->availableMemory:I

    .line 250
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 338
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 572
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadViewCreated:Z

    .line 670
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    .line 707
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$9;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$9;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 851
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 852
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    .line 853
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    .line 854
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    .line 855
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    .line 856
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    .line 936
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    .line 951
    new-array v0, v1, [[J

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [J

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v5, [J

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [J

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [J

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vibrateEffects:[[J

    .line 1166
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    .line 1167
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 1168
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myPid:[I

    .line 1340
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->TABLET_SIZE:F

    .line 1452
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1457
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    .line 1485
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    .line 1486
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    .line 1488
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextHolder:Landroid/view/SurfaceHolder;

    .line 1489
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    .line 1491
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    .line 1492
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewCreated:Z

    .line 1494
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    .line 1495
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    .line 1497
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    .line 1498
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    .line 1499
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewX:I

    .line 1500
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewY:I

    .line 1501
    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1502
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieView:Landroid/widget/LinearLayout;

    .line 1505
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewText:Landroid/widget/TextView;

    .line 1898
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceLocale:Ljava/lang/String;

    .line 1899
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    .line 1957
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 2281
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    .line 2468
    const/16 v0, 0x20

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    .line 2533
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextView:Landroid/widget/TextView;

    .line 2549
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    .line 2577
    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    return-void

    .line 951
    :array_0
    .array-data 8
        0x0
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x64
        0x32
        0x4b
        0x64
        0x32
        0x64
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x19
        0x32
        0x64
        0x32
        0x19
        0x64
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x19
        0x32
        0x19
        0x64
        0x64
        0x64
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x32
        0x32
        0x32
        0x32
        0x19
        0x64
    .end array-data
.end method

.method static synthetic access$000(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatePaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/wardrumstudios/utils/WarMedia;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewIsActive:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewCreated:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewIsActive:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieIsStopping:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/wardrumstudios/utils/WarMedia;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->mCancelValidation:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wardrumstudios/utils/WarMedia;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->setButtonPausedState(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/wardrumstudios/utils/WarMedia;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/wardrumstudios/utils/WarMedia;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/wardrumstudios/utils/WarMedia;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/wardrumstudios/utils/WarMedia;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$2700(Lcom/wardrumstudios/utils/WarMedia;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->surfaceHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    return p1
.end method

.method static synthetic access$500(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    return v0
.end method

.method static synthetic access$502(Lcom/wardrumstudios/utils/WarMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->viewIsActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->noVidSurface:Z

    return v0
.end method

.method static synthetic access$800(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wardrumstudios/utils/WarMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarMedia;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->noVidSurface:Z

    return v0
.end method

.method private getNumberOfProcessors()I
    .locals 4

    .prologue
    .line 2132
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$1CpuFilter;

    invoke-direct {v3, p0}, Lcom/wardrumstudios/utils/WarMedia$1CpuFilter;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 2136
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 2137
    :catch_0
    move-exception v1

    .line 2139
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private initializeDownloadUI()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 577
    const-class v6, Lcom/wardrumstudios/utils/WarDownloaderService;

    invoke-static {p0, v6}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 578
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v6, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 580
    new-instance v6, Landroid/view/SurfaceView;

    invoke-direct {v6, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadView:Landroid/view/SurfaceView;

    .line 581
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadView:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadHolder:Landroid/view/SurfaceHolder;

    .line 582
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadHolder:Landroid/view/SurfaceHolder;

    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$5;

    invoke-direct {v7, p0}, Lcom/wardrumstudios/utils/WarMedia$5;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 602
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadHolder:Landroid/view/SurfaceHolder;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 603
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->downloadView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v6}, Lcom/wardrumstudios/utils/WarMedia;->setContentView(Landroid/view/View;)V

    .line 605
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 606
    .local v3, "myParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 608
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "download"

    const-string v8, "layout"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 609
    .local v2, "layoutID":I
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 610
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 611
    .local v5, "tmpView":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v5, v3}, Lcom/wardrumstudios/utils/WarMedia;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressBar"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 614
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    .line 615
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "statusText"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 616
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatusText:Landroid/widget/TextView;

    .line 617
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressAsFraction"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 618
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressFraction:Landroid/widget/TextView;

    .line 619
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressAsPercentage"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 620
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressPercent:Landroid/widget/TextView;

    .line 621
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressAverageSpeed"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 622
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mAverageSpeed:Landroid/widget/TextView;

    .line 623
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "progressTimeRemaining"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 624
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mTimeRemaining:Landroid/widget/TextView;

    .line 625
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "downloaderDashboard"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 626
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    .line 627
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "approveCellular"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 628
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    .line 629
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "pauseButton"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 630
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    .line 631
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifiSettingsButton"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 632
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mWiFiSettingsButton:Landroid/widget/Button;

    .line 634
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$6;

    invoke-direct {v7, p0}, Lcom/wardrumstudios/utils/WarMedia$6;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mWiFiSettingsButton:Landroid/widget/Button;

    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$7;

    invoke-direct {v7, p0}, Lcom/wardrumstudios/utils/WarMedia$7;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "resumeOverCellular"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 659
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 660
    .local v4, "resumeOnCell":Landroid/widget/Button;
    new-instance v6, Lcom/wardrumstudios/utils/WarMedia$8;

    invoke-direct {v6, p0}, Lcom/wardrumstudios/utils/WarMedia$8;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    return-void
.end method

.method private setButtonPausedState(Z)V
    .locals 4
    .param p1, "paused"    # Z

    .prologue
    .line 2191
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatePaused:Z

    .line 2192
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "text_button_resume"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2194
    .local v0, "stringResourceID":I
    :goto_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 2195
    return-void

    .line 2192
    .end local v0    # "stringResourceID":I
    :cond_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "text_button_pause"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 2184
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mState:I

    if-eq v0, p1, :cond_0

    .line 2185
    iput p1, p0, Lcom/wardrumstudios/utils/WarMedia;->mState:I

    .line 2186
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2188
    :cond_0
    return-void
.end method


# virtual methods
.method public AfterDownloadFunction()V
    .locals 0

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DoResumeEvent()V

    .line 2673
    return-void
.end method

.method ChangeMovieView(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, -0x2

    .line 1596
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1599
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1600
    return-void
.end method

.method ClearMovieText()V
    .locals 1

    .prologue
    .line 2458
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$20;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$20;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2465
    return-void
.end method

.method ClearSplashScreen()V
    .locals 1

    .prologue
    .line 2633
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$24;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$24;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2639
    return-void
.end method

.method public ClearSystemNotification()V
    .locals 1

    .prologue
    .line 1378
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$12;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$12;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1385
    return-void
.end method

.method public ClearVidView()V
    .locals 1

    .prologue
    .line 1430
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$14;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$14;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method public CopyFileFromAssets(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2710
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2711
    .local v7, "ringtone":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2712
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 2713
    .local v2, "destParentDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2714
    const/4 v3, 0x0

    .line 2715
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 2718
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2719
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 2720
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2722
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .line 2724
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    .line 2725
    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2734
    .end local v1    # "buffer":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 2736
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "destParentDir":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    return v8

    .line 2727
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v2    # "destParentDir":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2728
    const/4 v3, 0x0

    .line 2729
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 2730
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2731
    const/4 v4, 0x0

    .line 2732
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    const/4 v8, 0x1

    goto :goto_1

    .line 2734
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v6    # "read":I
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method CreatTextSurface(Landroid/view/SurfaceView;)Landroid/view/SurfaceHolder;
    .locals 3
    .param p1, "surface"    # Landroid/view/SurfaceView;

    .prologue
    .line 1508
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1509
    .local v0, "holder":Landroid/view/SurfaceHolder;
    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$15;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarMedia$15;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1540
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "movieWindowHolder setType"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1541
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1542
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 1544
    return-object v0
.end method

.method CreateMovieView(IIII)Landroid/widget/LinearLayout;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1557
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1558
    .local v0, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1559
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1561
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    .line 1562
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1563
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1564
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1566
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    .line 1567
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1568
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    .line 1571
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1572
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1573
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    .line 1574
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1575
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    .line 1578
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1580
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    .line 1581
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1582
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1583
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->col1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1584
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->col2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1585
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->col3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1586
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1588
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    .line 1589
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1590
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->row3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1592
    return-object v0
.end method

.method CreateTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1548
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1549
    .local v0, "tv":Landroid/widget/TextView;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1550
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1551
    const-string v1, "Tap to Skip"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    return-object v0
.end method

.method public CustomLoadFunction()Z
    .locals 1

    .prologue
    .line 2667
    const/4 v0, 0x0

    return v0
.end method

.method public DeleteDirectory(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "dirString"    # Ljava/lang/String;
    .param p2, "recurse"    # Z

    .prologue
    .line 2647
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2648
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2649
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 2650
    .local v1, "children":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2651
    new-instance v0, Ljava/io/File;

    aget-object v4, v1, v3

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2652
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/wardrumstudios/utils/WarMedia;->DeleteDirectory(Ljava/lang/String;Z)V

    .line 2655
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2650
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2659
    .end local v0    # "child":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2661
    .end local v1    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public DeleteFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 2045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2046
    .local v1, "fullFilename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2049
    .local v0, "delfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2052
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 2054
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method DisplayMovieText()V
    .locals 4

    .prologue
    .line 2535
    move-object v0, p0

    .line 2536
    .local v0, "myActivity":Landroid/app/Activity;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayMovieText vidViewIsActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->vidViewIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DrawMovieText()V

    .line 2541
    return-void
.end method

.method public DisplaySplashScreen(Ljava/lang/String;I)V
    .locals 1
    .param p1, "splashPng"    # Ljava/lang/String;
    .param p2, "splashTimer"    # I

    .prologue
    .line 2579
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/wardrumstudios/utils/WarMedia$23;-><init>(Lcom/wardrumstudios/utils/WarMedia;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2630
    return-void
.end method

.method DrawMovieText()V
    .locals 1

    .prologue
    .line 2495
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$21;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$21;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2531
    return-void
.end method

.method public ExitGame()V
    .locals 1

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->onDestroy()V

    .line 1152
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 1153
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1154
    return-void
.end method

.method public FileGetArchiveName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2067
    packed-switch p1, :pswitch_data_0

    .line 2072
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2068
    :pswitch_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->apkFileName:Ljava/lang/String;

    goto :goto_0

    .line 2069
    :pswitch_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    goto :goto_0

    .line 2070
    :pswitch_2
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    goto :goto_0

    .line 2067
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public FileRename(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "oldfile"    # Ljava/lang/String;
    .param p2, "newfile"    # Ljava/lang/String;
    .param p3, "overWrite"    # I

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x2f

    .line 2058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2059
    .local v3, "oldFilename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2060
    .local v1, "newFilename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2061
    .local v2, "oldFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2062
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2063
    const/4 v4, 0x1

    return v4
.end method

.method public GetAndroidBuildinfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2080
    packed-switch p1, :pswitch_data_0

    .line 2084
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 2081
    :pswitch_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    .line 2082
    :pswitch_1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_0

    .line 2083
    :pswitch_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0

    .line 2080
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public GetAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2701
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAvailableMemory()I
    .locals 1

    .prologue
    .line 2696
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->GetMemoryInfo(Z)I

    .line 2697
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    return v0
.end method

.method public GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1871
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1874
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public GetDeviceInfo(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2089
    packed-switch p1, :pswitch_data_0

    .line 2093
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2090
    :pswitch_0
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->getNumberOfProcessors()I

    move-result v0

    goto :goto_0

    .line 2091
    :pswitch_1
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public GetDeviceLocale()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1911
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceLocale:Ljava/lang/String;

    .line 1912
    .local v0, "lang":Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return v1

    .line 1914
    :cond_1
    const-string v2, "fr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1915
    const/4 v1, 0x1

    goto :goto_0

    .line 1916
    :cond_2
    const-string v2, "de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1917
    const/4 v1, 0x2

    goto :goto_0

    .line 1918
    :cond_3
    const-string v2, "it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1919
    const/4 v1, 0x3

    goto :goto_0

    .line 1920
    :cond_4
    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1921
    const/4 v1, 0x4

    goto :goto_0

    .line 1922
    :cond_5
    const-string v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1923
    const/4 v1, 0x5

    goto :goto_0

    .line 1924
    :cond_6
    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1925
    const/4 v1, 0x6

    goto :goto_0

    .line 1926
    :cond_7
    const-string v2, "sv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1927
    const/4 v1, 0x7

    goto :goto_0

    .line 1928
    :cond_8
    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1929
    :cond_9
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public GetDeviceType()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2098
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build info version device  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2099
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build MANUFACTURER  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2100
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build BOARD  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2101
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build DISPLAY  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2102
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build CPU_ABI  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2103
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build CPU_ABI2  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2104
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build HARDWARE  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2105
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build MODEL  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2106
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build PRODUCT  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2109
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->glVendor:Ljava/lang/String;

    const-string v6, "NVIDIA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x2

    .line 2110
    .local v0, "isTegra":I
    :goto_0
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->getNumberOfProcessors()I

    move-result v5

    mul-int/lit8 v2, v5, 0x4

    .line 2111
    .local v2, "numProcs":I
    iget v5, p0, Lcom/wardrumstudios/utils/WarMedia;->availableMemory:I

    mul-int/lit8 v1, v5, 0x40

    .line 2112
    .local v1, "mem":I
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/2addr v4, v0

    add-int/2addr v4, v2

    add-int v3, v4, v1

    .line 2114
    .local v3, "ret":I
    return v3

    .end local v0    # "isTegra":I
    .end local v1    # "mem":I
    .end local v2    # "numProcs":I
    .end local v3    # "ret":I
    :cond_1
    move v0, v4

    .line 2109
    goto :goto_0
.end method

.method public GetGameBaseDirectory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 509
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 512
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "base":Ljava/lang/String;
    const-string v3, "/Android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 514
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 522
    .end local v0    # "base":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 518
    :catch_0
    move-exception v3

    .line 521
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowSDErrorDialog()V

    .line 522
    const-string v3, ""

    goto :goto_0

    .line 517
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public GetLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->localIp:Ljava/lang/String;

    return-object v0
.end method

.method public GetLocale()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1935
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1936
    .local v0, "lang":Ljava/lang/String;
    const-string v2, "en"

    if-ne v0, v2, :cond_1

    .line 1954
    :cond_0
    :goto_0
    return v1

    .line 1938
    :cond_1
    const-string v2, "fr"

    if-ne v0, v2, :cond_2

    .line 1939
    const/4 v1, 0x1

    goto :goto_0

    .line 1940
    :cond_2
    const-string v2, "de"

    if-ne v0, v2, :cond_3

    .line 1941
    const/4 v1, 0x2

    goto :goto_0

    .line 1942
    :cond_3
    const-string v2, "it"

    if-ne v0, v2, :cond_4

    .line 1943
    const/4 v1, 0x3

    goto :goto_0

    .line 1944
    :cond_4
    const-string v2, "es"

    if-ne v0, v2, :cond_5

    .line 1945
    const/4 v1, 0x4

    goto :goto_0

    .line 1946
    :cond_5
    const-string v2, "ja"

    if-ne v0, v2, :cond_6

    .line 1947
    const/4 v1, 0x5

    goto :goto_0

    .line 1948
    :cond_6
    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1949
    const/4 v1, 0x6

    goto :goto_0

    .line 1950
    :cond_7
    const-string v2, "sv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1951
    const/4 v1, 0x7

    goto :goto_0

    .line 1952
    :cond_8
    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "nn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1953
    :cond_9
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public GetLowThreshhold()I
    .locals 1

    .prologue
    .line 2692
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->memoryThreshold:I

    return v0
.end method

.method public GetMemoryInfo(Z)I
    .locals 8
    .param p1, "allProcesses"    # Z

    .prologue
    const-wide/16 v6, 0x400

    .line 1171
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    if-nez v3, :cond_0

    .line 1172
    const-string v3, "activity"

    invoke-super {p0, v3}, Lcom/wardrumstudios/utils/WarGamepad;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    .line 1173
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 1176
    :cond_0
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1180
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->memoryThreshold:I

    .line 1181
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->availableMemory:I

    .line 1182
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 1183
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    .line 1188
    :goto_0
    if-eqz p1, :cond_2

    .line 1189
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 1190
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1192
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1193
    .local v2, "pids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1194
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v3, v2, v0

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1185
    .end local v0    # "i":I
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "pids":[I
    :cond_1
    const/16 v3, 0x100

    iput v3, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    goto :goto_0

    .line 1213
    :cond_2
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->myPid:[I

    if-eqz v3, :cond_3

    .line 1214
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->mgr:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myPid:[I

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 1218
    :cond_3
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    long-to-int v3, v4

    return v3
.end method

.method public GetPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 2403
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2405
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2406
    .local v0, "appinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2408
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2409
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2412
    :goto_1
    return-object v3

    .line 2406
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2412
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public GetRealLocale()V
    .locals 4

    .prologue
    .line 1901
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1902
    .local v1, "langLocal":Ljava/util/Locale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1903
    .local v0, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1904
    .local v2, "locale":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    .line 1907
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceLocale:Ljava/lang/String;

    .line 1908
    return-void
.end method

.method public GetScreenWidthInches()F
    .locals 1

    .prologue
    .line 2688
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    return v0
.end method

.method GetSoundsIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->sounds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1158
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->sounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarMedia$PoolInfo;

    .line 1159
    .local v1, "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    iget-object v2, v1, Lcom/wardrumstudios/utils/WarMedia$PoolInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    iget v2, v1, Lcom/wardrumstudios/utils/WarMedia$PoolInfo;->soundID:I

    .line 1163
    .end local v1    # "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    :goto_1
    return v2

    .line 1157
    .restart local v1    # "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1163
    .end local v1    # "pi":Lcom/wardrumstudios/utils/WarMedia$PoolInfo;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public GetSpecialBuildType()I
    .locals 1

    .prologue
    .line 2643
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->SpecialBuildType:I

    return v0
.end method

.method public GetTotalMemory()I
    .locals 1

    .prologue
    .line 2684
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->totalMemory:I

    return v0
.end method

.method public IsAppInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2418
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2419
    .local v0, "appinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2420
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dir "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2421
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2422
    const/4 v3, 0x1

    .line 2425
    :goto_1
    return v3

    .line 2419
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2425
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public IsCloudAvailable()Z
    .locals 1

    .prologue
    .line 2434
    const/4 v0, 0x0

    return v0
.end method

.method public IsKeyboardShown()Z
    .locals 1

    .prologue
    .line 2162
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    return v0
.end method

.method public IsMoviePlaying()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 1856
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 1867
    :cond_0
    :goto_0
    return v0

    .line 1859
    :cond_1
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1860
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    goto :goto_0

    .line 1861
    :cond_2
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1864
    :try_start_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1865
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public IsMovieViewActive()Z
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 1446
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidViewIsActive:Z

    .line 1448
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    goto :goto_0
.end method

.method public IsPhone()Z
    .locals 2

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsTV()Z
    .locals 1

    .prologue
    .line 2076
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsAndroidTV:Z

    return v0
.end method

.method public LoadAllGamesFromCloud()V
    .locals 0

    .prologue
    .line 2440
    return-void
.end method

.method public LoadGameFromCloud(I[B)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I
    .param p2, "array"    # [B

    .prologue
    .line 2443
    const-string v0, ""

    return-object v0
.end method

.method public MovieClearText(Z)V
    .locals 1
    .param p1, "isSubtitle"    # Z

    .prologue
    .line 2544
    if-eqz p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    .line 2546
    :goto_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DrawMovieText()V

    .line 2547
    return-void

    .line 2545
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    goto :goto_0
.end method

.method public MovieDisplayText(Z)V
    .locals 3
    .param p1, "display"    # Z

    .prologue
    .line 2571
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovieDisplayText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2572
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    if-nez v0, :cond_0

    .line 2573
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieText()V

    .line 2575
    :cond_0
    return-void
.end method

.method public MovieKeepAspectRatio(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .prologue
    .line 2454
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->KeepAspectRatio:Z

    .line 2455
    return-void
.end method

.method public MovieSetSkippable(Z)V
    .locals 0
    .param p1, "skippable"    # Z

    .prologue
    .line 1454
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1455
    return-void
.end method

.method public MovieSetText(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "DisplayNow"    # Z
    .param p3, "isSubtitle"    # Z

    .prologue
    .line 2551
    if-eqz p3, :cond_1

    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieSubtitleText:Ljava/lang/String;

    .line 2559
    :goto_0
    if-eqz p2, :cond_3

    .line 2560
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieText()V

    .line 2568
    :cond_0
    :goto_1
    return-void

    .line 2553
    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieTextOnTap:Z

    .line 2554
    iput-boolean p2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextDisplayNow:Z

    .line 2555
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieText:Ljava/lang/String;

    goto :goto_0

    .line 2553
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 2561
    :cond_3
    if-nez p2, :cond_0

    .line 2562
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$22;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$22;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method MovieSetTextScale(I)V
    .locals 2
    .param p1, "scale"    # I

    .prologue
    .line 2470
    iput p1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    .line 2471
    const v0, -0xff0100

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->SetPaint(II)V

    .line 2472
    return-void
.end method

.method public NewCloudSaveAvailable(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 2450
    const/4 v0, 0x0

    return v0
.end method

.method public OBFU_GetDeviceID()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1889
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1890
    .local v3, "tmDevice":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1891
    .local v4, "tmSerial":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "androidId":Ljava/lang/String;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v8, v5

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v10, v5

    or-long/2addr v8, v10

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 1895
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method OpenLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 2429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2430
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->startActivity(Landroid/content/Intent;)V

    .line 2431
    return-void
.end method

.method PauseMoviePlayer(Z)V
    .locals 3
    .param p1, "bPause"    # Z

    .prologue
    .line 841
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 849
    :goto_0
    return-void

    .line 842
    :cond_0
    move v0, p1

    .line 843
    .local v0, "bfPause":Z
    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$10;

    invoke-direct {v1, p0, v0}, Lcom/wardrumstudios/utils/WarMedia$10;-><init>(Lcom/wardrumstudios/utils/WarMedia;Z)V

    .line 848
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method PauseMoviePlayerThread(Z)V
    .locals 11
    .param p1, "bPause"    # Z

    .prologue
    const/4 v4, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 859
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->skipMovies:Z

    if-eqz v0, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    if-eqz p1, :cond_4

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 867
    :try_start_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    .line 868
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 870
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer paused at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 871
    :catch_0
    move-exception v8

    .line 872
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer pause failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 874
    :try_start_3
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 876
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 877
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 887
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 888
    .local v7, "e":Ljava/lang/IllegalStateException;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseMoviePlayerThread err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 890
    iput-object v10, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 891
    iput v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 892
    iput-boolean v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    goto/16 :goto_0

    .line 881
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "moviePlayer not playing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 895
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer resume bMoviePlayerPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " moviePlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 896
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    .line 897
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    if-lez v0, :cond_5

    .line 898
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FII)V

    .line 901
    :goto_2
    iput-boolean v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    goto/16 :goto_0

    .line 900
    :cond_5
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;F)V

    goto :goto_2

    .line 903
    :cond_6
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 904
    const/4 v6, 0x0

    .line 905
    .local v6, "count":I
    :cond_7
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->IsMovieViewActive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 908
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    .line 909
    add-int/lit8 v6, v6, 0x1

    if-le v6, v4, :cond_7

    .line 913
    :cond_8
    if-gt v6, v4, :cond_a

    .line 914
    :try_start_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "moviePlayer paused false"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 915
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    if-lez v0, :cond_9

    .line 916
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    iget v4, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 930
    :goto_3
    iput-boolean v9, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    goto/16 :goto_0

    .line 918
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;F)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 924
    :catch_2
    move-exception v8

    .line 925
    .restart local v8    # "ex":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moviePlayer resume failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 927
    iput-object v10, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 928
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    goto :goto_3

    .line 920
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 922
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 875
    .end local v6    # "count":I
    .restart local v8    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public PlayMovie(Ljava/lang/String;F)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "Volume"    # F

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->vidHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;FLandroid/view/SurfaceHolder;)V

    .line 1775
    return-void
.end method

.method public PlayMovie(Ljava/lang/String;FLandroid/view/SurfaceHolder;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "Volume"    # F
    .param p3, "myVidHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v10, 0x0

    .line 1780
    iput-object p3, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    .line 1782
    const/4 v7, 0x1

    iput v7, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1783
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    .line 1784
    iput v10, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    .line 1785
    iput v10, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    .line 1786
    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    .line 1789
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\"

    const-string v9, "/"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/wardrumstudios/utils/WarMedia;->AddMovieExtension:Z

    if-eqz v7, :cond_0

    const-string v7, ".m4v"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1790
    .local v6, "newFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1791
    .local v4, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 1792
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1796
    :try_start_0
    iget-boolean v7, p0, Lcom/wardrumstudios/utils/WarMedia;->AddMovieExtension:Z

    if-eqz v7, :cond_1

    .line 1797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    const-string v9, "/"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".m4v.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1800
    .local v2, "apkFilename":Ljava/lang/String;
    :goto_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Looking for  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1805
    .end local v2    # "apkFilename":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_2

    .line 1806
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1807
    iput v10, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1852
    :goto_3
    return-void

    .line 1789
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "newFile":Ljava/lang/String;
    :cond_0
    const-string v7, ""

    goto :goto_0

    .line 1799
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "newFile":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    const-string v9, "/"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "apkFilename":Ljava/lang/String;
    goto :goto_1

    .line 1802
    .end local v2    # "apkFilename":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1803
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_2

    .line 1812
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    move-object v5, p0

    .line 1814
    .local v5, "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    :try_start_2
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_3

    .line 1815
    iget-object v7, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1818
    :cond_3
    :goto_4
    iget-wide v8, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 1819
    const-wide/16 v8, 0x64

    invoke-virtual {p0, v8, v9}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_4

    .line 1820
    :cond_4
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->SetVidView()V

    .line 1821
    move-object v1, v0

    .line 1822
    .local v1, "afdFinal":Landroid/content/res/AssetFileDescriptor;
    new-instance v7, Lcom/wardrumstudios/utils/WarMedia$18;

    invoke-direct {v7, p0, v1, v6, v5}, Lcom/wardrumstudios/utils/WarMedia$18;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v7}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1816
    .end local v1    # "afdFinal":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v7

    goto :goto_4
.end method

.method public PlayMovieInFile(Ljava/lang/String;FII)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "volume"    # F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1695
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->vidHolder:Landroid/view/SurfaceHolder;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V

    .line 1696
    return-void
.end method

.method public PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "volume"    # F
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "myVidHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1702
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    .line 1703
    :cond_0
    iput-object p5, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieHolder:Landroid/view/SurfaceHolder;

    .line 1706
    const/4 v4, 0x1

    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1707
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 1708
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieFilename:Ljava/lang/String;

    .line 1709
    iput p3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieOffset:I

    .line 1710
    iput p4, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieLength:I

    .line 1711
    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    .line 1715
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1719
    .local v3, "tempFilename":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1720
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1721
    move-object v3, p1

    .line 1723
    :cond_1
    move-object v2, v3

    .line 1727
    .local v2, "newFile":Ljava/lang/String;
    move-object v1, p0

    .line 1729
    .local v1, "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    :try_start_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_2

    .line 1730
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :cond_2
    :goto_1
    iget-wide v4, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 1734
    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_1

    .line 1718
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    .end local v2    # "newFile":Ljava/lang/String;
    .end local v3    # "tempFilename":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "/"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tempFilename":Ljava/lang/String;
    goto :goto_0

    .line 1735
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "myWarMedia":Lcom/wardrumstudios/utils/WarMedia;
    .restart local v2    # "newFile":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->SetVidView()V

    .line 1736
    new-instance v4, Lcom/wardrumstudios/utils/WarMedia$17;

    invoke-direct {v4, p0, v2, v1}, Lcom/wardrumstudios/utils/WarMedia$17;-><init>(Lcom/wardrumstudios/utils/WarMedia;Ljava/lang/String;Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1771
    return-void

    .line 1731
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public PlayMovieInWindow(Ljava/lang/String;IIIIFIII)V
    .locals 9
    .param p1, "inFilename"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "inVolume"    # F
    .param p7, "inOffset"    # I
    .param p8, "inLength"    # I
    .param p9, "looping"    # I

    .prologue
    .line 1603
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PlayMovieInWindow filename "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " movieWindowSurface "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->movieWindowSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " inOffset "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " inLength "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1605
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->ForceSize:Z

    .line 1608
    iput p4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    iput p5, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewX:I

    iput p3, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewY:I

    .line 1609
    move/from16 v0, p9

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1610
    move-object v4, p1

    .line 1611
    .local v4, "filename":Ljava/lang/String;
    move v5, p6

    .line 1612
    .local v5, "volume":F
    move/from16 v6, p7

    .line 1613
    .local v6, "offset":I
    move/from16 v3, p8

    .line 1614
    .local v3, "length":I
    move-object v7, p0

    .line 1615
    .local v7, "myWarmedia":Lcom/wardrumstudios/utils/WarMedia;
    const/4 v1, 0x1

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1616
    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$16;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/wardrumstudios/utils/WarMedia$16;-><init>(Lcom/wardrumstudios/utils/WarMedia;ILjava/lang/String;FI)V

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1691
    return-void
.end method

.method public RestoreCurrentLanguage()V
    .locals 4

    .prologue
    .line 1981
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1982
    .local v1, "lang":Ljava/lang/String;
    const-string v0, ""

    .line 1983
    .local v0, "countyStr":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1984
    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1985
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "GB"

    .line 1989
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 1990
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1993
    :cond_1
    return-void

    .line 1986
    :cond_2
    const-string v0, "US"

    goto :goto_0
.end method

.method public SaveGameToCloud(I[BI)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "array"    # [B
    .param p3, "numbytes"    # I

    .prologue
    .line 2447
    return-void
.end method

.method public ScreenSetWakeLock(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2705
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2707
    :goto_0
    return-void

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public SendStatEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 2677
    return-void
.end method

.method public SendStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 2681
    return-void
.end method

.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 2740
    const/4 v0, 0x0

    return v0
.end method

.method public ServiceAppCommandValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 2744
    const/4 v0, 0x0

    return v0
.end method

.method public SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1878
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1879
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1880
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1883
    return-void
.end method

.method public SetLocale(I)V
    .locals 3
    .param p1, "newLang"    # I

    .prologue
    .line 1997
    packed-switch p1, :pswitch_data_0

    .line 2026
    const-string v0, "en"

    .line 2032
    .local v0, "lStr":Ljava/lang/String;
    :goto_0
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2037
    .local v1, "lang":Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 2038
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 2040
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2, v0}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    return-void

    .line 1999
    .end local v0    # "lStr":Ljava/lang/String;
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_0
    const-string v0, "en"

    .line 2000
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2002
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "fr"

    .line 2003
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2005
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "de"

    .line 2006
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2008
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "it"

    .line 2009
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2011
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "es"

    .line 2012
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2014
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "ja"

    .line 2015
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2017
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "ko"

    .line 2018
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2020
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "sv"

    .line 2021
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 2023
    .end local v0    # "lStr":Ljava/lang/String;
    :pswitch_8
    const-string v0, "no"

    .line 2024
    .restart local v0    # "lStr":Ljava/lang/String;
    goto :goto_0

    .line 1997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public SetLocale(Ljava/lang/String;)V
    .locals 4
    .param p1, "lStr"    # Ljava/lang/String;

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetRealLocale()V

    .line 1963
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1968
    .local v1, "lang":Ljava/lang/String;
    const-string v0, ""

    .line 1969
    .local v0, "countyStr":Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1970
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->DeviceCountry:Ljava/lang/String;

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "GB"

    .line 1973
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    .line 1974
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1976
    const-string v2, "currentLanguage"

    invoke-virtual {p0, v2, p1}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    return-void

    .line 1971
    :cond_1
    const-string v0, "US"

    goto :goto_0
.end method

.method SetPaint(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "size"    # I

    .prologue
    .line 2476
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    .line 2478
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2479
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2480
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2482
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mAscent:I

    .line 2483
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->tPaint:Landroid/graphics/Paint;

    .line 2484
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->tPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2485
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->textPaint:Landroid/text/TextPaint;

    .line 2486
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2487
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2488
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->sTextPaint:Landroid/text/TextPaint;

    .line 2489
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->sTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2490
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->sTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextScale:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2491
    return-void
.end method

.method SetVidView()V
    .locals 1

    .prologue
    .line 1417
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$13;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$13;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1425
    return-void
.end method

.method SetVideoAspect(Landroid/media/MediaPlayer;)V
    .locals 11
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1233
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-eqz v8, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1235
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    .line 1236
    .local v5, "surfaceView_Width":I
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    .line 1238
    .local v4, "surfaceView_Height":I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v8

    int-to-float v7, v8

    .line 1239
    .local v7, "video_Width":F
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v8

    int-to-float v6, v8

    .line 1241
    .local v6, "video_Height":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v7, v8

    if-lez v8, :cond_1

    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_2

    .line 1242
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videosize error ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1276
    .end local v4    # "surfaceView_Height":I
    .end local v5    # "surfaceView_Width":I
    .end local v6    # "video_Height":F
    .end local v7    # "video_Width":F
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1246
    .restart local v4    # "surfaceView_Height":I
    .restart local v5    # "surfaceView_Width":I
    .restart local v6    # "video_Height":F
    .restart local v7    # "video_Width":F
    :cond_2
    int-to-float v8, v5

    div-float v3, v8, v7

    .line 1247
    .local v3, "ratio_width":F
    int-to-float v8, v4

    div-float v2, v8, v6

    .line 1248
    .local v2, "ratio_height":F
    div-float v0, v7, v6

    .line 1251
    .local v0, "aspectratio":F
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-nez v8, :cond_3

    .line 1252
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1255
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget-boolean v8, p0, Lcom/wardrumstudios/utils/WarMedia;->ForceSize:Z

    if-eqz v8, :cond_4

    .line 1256
    iget v8, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewWidth:I

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1257
    iget v8, p0, Lcom/wardrumstudios/utils/WarMedia;->movieViewHeight:I

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1271
    :goto_2
    const/16 v8, 0x11

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1272
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-nez v8, :cond_7

    .line 1273
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1277
    .end local v0    # "aspectratio":F
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "ratio_height":F
    .end local v3    # "ratio_width":F
    .end local v4    # "surfaceView_Height":I
    .end local v5    # "surfaceView_Width":I
    .end local v6    # "video_Height":F
    .end local v7    # "video_Width":F
    :catch_1
    move-exception v8

    goto :goto_0

    .line 1253
    .restart local v0    # "aspectratio":F
    .restart local v2    # "ratio_height":F
    .restart local v3    # "ratio_width":F
    .restart local v4    # "surfaceView_Height":I
    .restart local v5    # "surfaceView_Width":I
    .restart local v6    # "video_Height":F
    .restart local v7    # "video_Width":F
    :cond_3
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    .line 1258
    :cond_4
    iget-boolean v8, p0, Lcom/wardrumstudios/utils/WarMedia;->KeepAspectRatio:Z

    if-eqz v8, :cond_6

    .line 1259
    cmpl-float v8, v3, v2

    if-lez v8, :cond_5

    .line 1260
    int-to-float v8, v4

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1261
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1263
    :cond_5
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1264
    int-to-float v8, v5

    div-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1267
    :cond_6
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1268
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1275
    :cond_7
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    invoke-virtual {v8, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0
.end method

.method ShowDownloadNetworkError()V
    .locals 3

    .prologue
    .line 381
    move-object v1, p0

    .line 382
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "No network connection. Cannot download game data."

    .line 383
    .local v0, "fTitle":Ljava/lang/String;
    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$2;

    invoke-direct {v2, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$2;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method

.method ShowExitDialog()V
    .locals 4

    .prologue
    .line 1040
    move-object v1, p0

    .line 1041
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "Press back again to exit"

    .line 1042
    .local v0, "fTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/wardrumstudios/utils/WarMedia$11;

    invoke-direct {v3, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$11;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1078
    return-void
.end method

.method ShowGPDownloadError()V
    .locals 3

    .prologue
    .line 355
    move-object v1, p0

    .line 356
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "Unknown download error. Please reinstall from Google Play"

    .line 357
    .local v0, "fTitle":Ljava/lang/String;
    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$1;

    invoke-direct {v2, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$1;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public ShowKeyboard(I)V
    .locals 4
    .param p1, "show"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2148
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_0

    .line 2158
    :goto_0
    return-void

    .line 2150
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2151
    .local v0, "myImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_1

    .line 2152
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2153
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    goto :goto_0

    .line 2155
    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2156
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    goto :goto_0
.end method

.method ShowSDErrorDialog()V
    .locals 3

    .prologue
    .line 527
    move-object v1, p0

    .line 528
    .local v1, "myActivity":Landroid/app/Activity;
    const-string v0, "Cannot find storage. Is SDCard mounted?"

    .line 529
    .local v0, "fTitle":Ljava/lang/String;
    new-instance v2, Lcom/wardrumstudios/utils/WarMedia$4;

    invoke-direct {v2, p0, v1}, Lcom/wardrumstudios/utils/WarMedia$4;-><init>(Lcom/wardrumstudios/utils/WarMedia;Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method public StopMovie()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1461
    iput v6, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1462
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    .line 1463
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    .line 1464
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1467
    iput v6, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1471
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 1472
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1473
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    .line 1479
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1480
    iput v6, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1481
    iput-boolean v6, p0, Lcom/wardrumstudios/utils/WarMedia;->bMoviePlayerPaused:Z

    .line 1482
    return-void

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "ex":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public VibratePhone(I)V
    .locals 4
    .param p1, "numMilliseconds"    # I

    .prologue
    .line 942
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 943
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 947
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public VibratePhoneEffect(I)V
    .locals 3
    .param p1, "effect"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 962
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 966
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->myVib:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->vibrateEffects:[[J

    aget-object v1, v1, p1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method

.method public downloadFTPFile(Ljava/lang/String;IZ)I
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filesize"    # I
    .param p3, "check"    # Z

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method expansionFilesDelivered()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 545
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .local v0, "arr$":[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 546
    .local v4, "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    iget-boolean v5, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    iget v7, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileVersion:I

    invoke-static {p0, v5, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "fileName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->overrideExpansionName:Z

    if-nez v5, :cond_0

    .line 549
    iget-boolean v5, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    if-eqz v5, :cond_1

    .line 550
    invoke-static {p0, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    .line 553
    :goto_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download name "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v5, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    :cond_0
    iget-wide v8, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileSize:J

    invoke-static {p0, v1, v8, v9, v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    .line 561
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :goto_3
    return v5

    .line 552
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v4    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :cond_1
    invoke-static {p0, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    goto :goto_1

    .line 553
    :cond_2
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    goto :goto_2

    .line 545
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :cond_4
    const/4 v5, 0x1

    goto :goto_3
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->onDestroy()V

    .line 1147
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->finish()V

    .line 1148
    return-void
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1085
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1086
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1087
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1088
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1089
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1090
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1098
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 1094
    :catch_0
    move-exception v2

    .line 1095
    .local v2, "ex":Ljava/net/SocketException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got SocketException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1098
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 347
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v2

    .line 348
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 349
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public isWiFiAvailable()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 341
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected localHasGameData()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 413
    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->UseFTPDownload:Z

    if-eqz v5, :cond_0

    .line 415
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/wardrumstudios/utils/WarMedia$3;

    invoke-direct {v6, p0}, Lcom/wardrumstudios/utils/WarMedia$3;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 505
    :goto_0
    return v4

    .line 467
    :cond_0
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->expansionFilesDelivered()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->AfterDownloadFunction()V

    .line 505
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 471
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .local v1, "notifierIntent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 474
    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 480
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    const-class v5, Lcom/wardrumstudios/utils/WarDownloaderService;

    invoke-static {p0, v2, v5}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v3

    .line 482
    .local v3, "startResult":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localHasGameData startDownloadServiceIfRequired startResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    if-eqz v3, :cond_4

    .line 488
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->isNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 489
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->initializeDownloadUI()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    .end local v3    # "startResult":I
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 491
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "startResult":I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowDownloadNetworkError()V

    goto :goto_0

    .line 495
    :cond_4
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->expansionFilesDelivered()Z

    move-result v5

    if-nez v5, :cond_5

    .line 496
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowGPDownloadError()V

    goto :goto_0

    .line 499
    :cond_5
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->AfterDownloadFunction()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 756
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onAttachedToWindow()V

    .line 759
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 760
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/wardrumstudios/utils/WarMedia;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 776
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x0

    .line 1316
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCompletion completed moviePlayer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1320
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    :goto_0
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1323
    iget v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1324
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1325
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wardrumstudios/utils/WarMedia;->lastMovieStop:J

    .line 1326
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieTextDisplayed:Z

    .line 1327
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    .line 1330
    :cond_1
    return-void

    .line 1321
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingKeyboard:Z

    .line 696
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->imeClosed()V

    .line 699
    :cond_0
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 700
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x40600000    # 3.5f

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v3, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearSystemNotification()V

    .line 259
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetGameBaseDirectory()Ljava/lang/String;

    .line 262
    iget-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->UseFTPDownload:Z

    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->GetGLExtensions:Z

    .line 264
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ADT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsAndroidTV:Z

    .line 266
    :cond_0
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nvidia/devtech/NvUtil;->setActivity(Landroid/app/Activity;)V

    .line 267
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v4

    const-string v5, "STORAGE_ROOT"

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/nvidia/devtech/NvUtil;->setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v4

    const-string v5, "STORAGE_ROOT_BASE"

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->baseDirectoryRoot:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/nvidia/devtech/NvUtil;->setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->IsPortrait()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 271
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_6

    .line 272
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    .line 282
    :goto_0
    iput-object p0, p0, Lcom/wardrumstudios/utils/WarMedia;->activity:Landroid/app/Activity;

    .line 284
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->GetRealLocale()V

    .line 286
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 287
    .local v0, "pm":Landroid/os/PowerManager;
    const v4, 0x1000001a

    const-string v5, "WarEngine"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 288
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 291
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    .line 292
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 293
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display Metrics Info:\n\tdensity:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tdensityDPI:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tscaledDensity:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\twidthDPI:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\theightDPI:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\twidthPixels:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\theightPixels:\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tscreenlayout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->IsPhone()Z

    move-result v4

    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    .line 304
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    .line 305
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hastouchscreen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/wardrumstudios/utils/WarMedia;->hasTouchScreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " touchscreen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v4

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 309
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->isPhone:Z

    if-eqz v2, :cond_9

    .line 310
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_2

    iput v9, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 311
    :cond_2
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    iput v7, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 317
    :cond_3
    :goto_1
    invoke-virtual {p0, v8}, Lcom/wardrumstudios/utils/WarMedia;->setVolumeControlStream(I)V

    .line 318
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioManager:Landroid/media/AudioManager;

    .line 319
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioMax:I

    .line 320
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->audioVolume:I

    .line 322
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 323
    .local v1, "processors":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "availableProcessors "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cpu "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;->getNumberOfProcessors()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->GetMemoryInfo(Z)I

    .line 326
    iget-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->UseSubtitles:Z

    if-eqz v2, :cond_4

    const v2, -0xff0100

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->SetPaint(II)V

    .line 329
    :cond_4
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->localIp:Ljava/lang/String;

    .line 331
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onCreate(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->CustomLoadFunction()Z

    move-result v2

    if-nez v2, :cond_5

    .line 334
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->localHasGameData()Z

    .line 336
    :cond_5
    return-void

    .line 274
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "processors":I
    :cond_6
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 276
    :cond_7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_8

    .line 277
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 279
    :cond_8
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 313
    .restart local v0    # "pm":Landroid/os/PowerManager;
    :cond_9
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_a

    iput v7, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    .line 314
    :cond_a
    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    const/high16 v2, 0x41200000    # 10.0f

    iput v2, p0, Lcom/wardrumstudios/utils/WarMedia;->screenWidthInches:F

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearSystemNotification()V

    .line 1139
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1140
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onDestroy()V

    .line 1141
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1142
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 780
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onDetachedFromWindow()V

    .line 783
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 784
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 8
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    const/16 v6, 0x8

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSpeedString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB/s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2386
    .local v0, "downloadSpeed":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mAverageSpeed:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2388
    .local v1, "timeRemaining":Ljava/lang/String;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mTimeRemaining:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2390
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    iput-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    .line 2391
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    shr-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2392
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    shr-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2393
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2396
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia;->mProgressFraction:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2399
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 9
    .param p1, "newState"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2204
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->setState(I)V

    .line 2205
    const/4 v5, 0x1

    .line 2206
    .local v5, "showDashboard":Z
    const/4 v4, 0x0

    .line 2209
    .local v4, "showCellMessage":Z
    packed-switch p1, :pswitch_data_0

    .line 2262
    :pswitch_0
    const/4 v3, 0x1

    .line 2263
    .local v3, "paused":Z
    const/4 v1, 0x1

    .line 2264
    .local v1, "indeterminate":Z
    const/4 v5, 0x1

    .line 2266
    :goto_0
    if-eqz v5, :cond_3

    move v2, v6

    .line 2267
    .local v2, "newDashboardVisibility":I
    :goto_1
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 2268
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarMedia;->mDashboard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    :cond_0
    if-eqz v4, :cond_4

    move v0, v6

    .line 2271
    .local v0, "cellMessageVisibility":I
    :goto_2
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v0, :cond_1

    .line 2272
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mCellMessage:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2275
    :cond_1
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->mPB:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2276
    invoke-direct {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->setButtonPausedState(Z)V

    .line 2277
    .end local v0    # "cellMessageVisibility":I
    .end local v1    # "indeterminate":Z
    .end local v2    # "newDashboardVisibility":I
    .end local v3    # "paused":Z
    :cond_2
    :goto_3
    return-void

    .line 2213
    :pswitch_1
    const/4 v3, 0x0

    .line 2214
    .restart local v3    # "paused":Z
    const/4 v1, 0x1

    .line 2215
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2218
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_2
    const/4 v5, 0x1

    .line 2219
    const/4 v3, 0x0

    .line 2220
    .restart local v3    # "paused":Z
    const/4 v1, 0x1

    .line 2221
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2223
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_3
    const/4 v3, 0x0

    .line 2224
    .restart local v3    # "paused":Z
    const/4 v5, 0x1

    .line 2225
    const/4 v1, 0x0

    .line 2226
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2232
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_4
    const/4 v3, 0x1

    .line 2233
    .restart local v3    # "paused":Z
    const/4 v5, 0x1

    .line 2234
    const/4 v1, 0x0

    .line 2235
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2238
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_5
    const/4 v5, 0x0

    .line 2239
    const/4 v3, 0x1

    .line 2240
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2241
    .restart local v1    # "indeterminate":Z
    const/4 v4, 0x1

    .line 2242
    goto :goto_0

    .line 2245
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_6
    const/4 v3, 0x1

    .line 2246
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2247
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2250
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_7
    const/4 v3, 0x1

    .line 2251
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2252
    .restart local v1    # "indeterminate":Z
    goto :goto_0

    .line 2254
    .end local v1    # "indeterminate":Z
    .end local v3    # "paused":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->expansionFilesDelivered()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2255
    const/4 v5, 0x0

    .line 2256
    const/4 v3, 0x0

    .line 2257
    .restart local v3    # "paused":Z
    const/4 v1, 0x0

    .line 2258
    .restart local v1    # "indeterminate":Z
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->validateXAPKZipFiles()V

    goto :goto_3

    :cond_3
    move v2, v7

    .line 2266
    goto :goto_1

    .restart local v2    # "newDashboardVisibility":I
    :cond_4
    move v0, v7

    .line 2270
    goto :goto_2

    .line 2209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1335
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1017
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->AllowLongPressForExit:Z

    if-eqz v1, :cond_0

    .line 1019
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 1025
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ShowExitDialog()V

    .line 1036
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wardrumstudios/utils/WarGamepad;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->lowMemoryEvent()V

    .line 705
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 972
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onPause()V

    .line 976
    :cond_1
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onPause()V

    .line 980
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayer(Z)V

    .line 982
    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarMedia;->GetMemoryInfo(Z)I

    .line 983
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    .line 984
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    .line 985
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1282
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    if-eq v1, v5, :cond_1

    .line 1285
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "trying to start a requested to stop movie"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1287
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1289
    :goto_0
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1290
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1291
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    .line 1313
    :cond_0
    :goto_1
    return-void

    .line 1294
    :cond_1
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    iget v3, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1295
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieLooping:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1296
    :cond_2
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    if-lez v1, :cond_3

    .line 1297
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1298
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1311
    :goto_2
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->currentMovieMS:I

    goto :goto_1

    .line 1300
    :cond_3
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->SetVideoAspect(Landroid/media/MediaPlayer;)V

    .line 1302
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1303
    const/4 v1, 0x2

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared IllegalStateException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1306
    iput-object v6, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    .line 1307
    iput v4, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1308
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->ClearVidView()V

    goto :goto_2

    .line 1288
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 1131
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onRestart()V

    .line 1132
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 793
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onResume()V

    .line 795
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mogaController:Lcom/bda/controller/Controller;

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->onResume()V

    .line 798
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Resuming when Media is not mounted, waiting for sdcard mount"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 801
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    .line 802
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 838
    :goto_0
    return-void

    .line 806
    :cond_1
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    if-eqz v1, :cond_3

    .line 807
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->viewIsActive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->ResumeEventDone:Z

    if-eqz v1, :cond_2

    .line 808
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->resumeEvent()V

    .line 809
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 812
    :cond_2
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    .line 814
    invoke-virtual {p0, v3}, Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayer(Z)V

    .line 817
    :cond_3
    iput-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    goto :goto_0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->soundLog:Z

    if-eqz v0, :cond_0

    .line 1223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onSeekComplete"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->moviePlayer:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_1

    .line 1225
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->SetVideoAspect(Landroid/media/MediaPlayer;)V

    .line 1226
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1227
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1228
    const/4 v0, 0x2

    iput v0, p0, Lcom/wardrumstudios/utils/WarMedia;->bIsPlayingMovie:I

    .line 1230
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 2199
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 2200
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 2201
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 1113
    :cond_0
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onStart()V

    .line 1114
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 1123
    :cond_0
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarGamepad;->onStop()V

    .line 1125
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 990
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->MovieIsSkippable:Z

    if-eqz v1, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->StopMovie()V

    .line 994
    :cond_0
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->DisplayMovieTextOnTap:Z

    if-eqz v1, :cond_1

    .line 995
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextViewIsActive:Z

    if-eqz v1, :cond_1

    .line 996
    iput-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->movieTextDisplayNow:Z

    .line 997
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->DrawMovieText()V

    .line 1001
    :cond_1
    iget v1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1004
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia;->exitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1006
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 1010
    :goto_0
    return v0

    .line 1009
    :cond_3
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1010
    .local v0, "ret":Z
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->ResumeEventDone:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->isUserPresent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->viewIsActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->IsScreenPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->paused:Z

    if-nez v0, :cond_1

    .line 676
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 677
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->pauseEvent()V

    .line 681
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    .line 684
    :cond_1
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarGamepad;->onWindowFocusChanged(Z)V

    .line 686
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->hideSystemUI()V

    .line 687
    :cond_2
    return-void

    .line 678
    :cond_3
    iget-boolean v0, p0, Lcom/wardrumstudios/utils/WarMedia;->GameIsFocused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarMedia;->resumeEvent()V

    goto :goto_0
.end method

.method validateXAPKZipFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2283
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateXAPKZipFiles IsInValidation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2284
    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    if-eqz v1, :cond_0

    .line 2374
    :goto_0
    return-void

    .line 2287
    :cond_0
    iput-boolean v4, p0, Lcom/wardrumstudios/utils/WarMedia;->IsInValidation:Z

    .line 2288
    new-instance v0, Lcom/wardrumstudios/utils/WarMedia$19;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarMedia$19;-><init>(Lcom/wardrumstudios/utils/WarMedia;)V

    .line 2373
    .local v0, "validationTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;Ljava/lang/Boolean;>;"
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
