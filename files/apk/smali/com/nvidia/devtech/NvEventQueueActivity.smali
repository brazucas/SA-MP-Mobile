.class public abstract Lcom/nvidia/devtech/NvEventQueueActivity;
.super Landroid/app/Activity;
.source "NvEventQueueActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;,
        Lcom/nvidia/devtech/NvEventQueueActivity$RawData;,
        Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static EGL_OPENGL_ES3_BIT:I = 0x0

.field private static final EGL_RENDERABLE_TYPE:I = 0x3040


# instance fields
.field protected GetGLExtensions:Z

.field public HasGLExtensions:Z

.field InVideview:Z

.field protected IsShowingKeyboard:Z

.field protected ResumeEventDone:Z

.field SwapBufferSkip:I

.field protected UseSubtitles:Z

.field protected alphaSize:I

.field protected blueSize:I

.field public cachedSurfaceHolder:Landroid/view/SurfaceHolder;

.field capsLockOn:Z

.field protected configAttrs:[I

.field protected contextAttrs:[I

.field protected creatingMediaplayer:Z

.field protected delayInputForStore:Z

.field protected display:Landroid/view/Display;

.field egl:Ljavax/microedition/khronos/egl/EGL10;

.field protected eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field protected eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field protected eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field protected eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field protected gl:Ljavax/microedition/khronos/opengles/GL11;

.field public glExtensions:Ljava/lang/String;

.field protected glRenderer:Ljava/lang/String;

.field protected glVendor:Ljava/lang/String;

.field protected glVersion:Ljava/lang/String;

.field protected greenSize:I

.field public handler:Landroid/os/Handler;

.field protected holder:Landroid/view/SurfaceHolder;

.field private inputPaused:Z

.field protected isFailedError:Z

.field protected lastResumeTime:J

.field protected mSensorDelay:I

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field mVideoHeight:I

.field mVideoWidth:I

.field protected movieIsStarting:Z

.field protected movieIsStopping:Z

.field protected movieText:Ljava/lang/String;

.field protected movieTextHolder:Landroid/view/SurfaceHolder;

.field protected movieTextView:Landroid/view/SurfaceView;

.field protected movieTextViewCreated:Z

.field protected movieTextViewFirstDestroy:Z

.field protected movieTextViewIsActive:Z

.field myLayout:Landroid/view/ViewGroup$LayoutParams;

.field protected noVidSurface:Z

.field public paused:Z

.field prefs:Landroid/content/SharedPreferences;

.field private ranInit:Z

.field protected redSize:I

.field public splashView:Landroid/view/View;

.field protected stencilSize:I

.field protected supportPauseResume:Z

.field protected surfaceHeight:I

.field protected surfaceWidth:I

.field protected vidHolder:Landroid/view/SurfaceHolder;

.field protected vidView:Landroid/view/SurfaceView;

.field protected vidViewCreated:Z

.field vidViewHeight:I

.field protected vidViewIsActive:Z

.field vidViewWidth:I

.field protected view:Landroid/view/SurfaceView;

.field protected viewIsActive:Z

.field protected wantsAccelerometer:Z

.field protected wantsMultitouch:Z

.field protected warView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x40

    sput v0, Lcom/nvidia/devtech/NvEventQueueActivity;->EGL_OPENGL_ES3_BIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->handler:Landroid/os/Handler;

    .line 99
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    .line 101
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsMultitouch:Z

    .line 103
    iput-boolean v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    .line 104
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    .line 106
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->isFailedError:Z

    .line 108
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->delayInputForStore:Z

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->lastResumeTime:J

    .line 110
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->inputPaused:Z

    .line 112
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    .line 115
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->IsShowingKeyboard:Z

    .line 116
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->capsLockOn:Z

    .line 142
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieText:Ljava/lang/String;

    .line 143
    const/16 v0, 0x400

    iput v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewWidth:I

    .line 144
    const/16 v0, 0x258

    iput v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewHeight:I

    .line 145
    const/16 v0, 0x280

    iput v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mVideoWidth:I

    .line 146
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mVideoHeight:I

    .line 147
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->InVideview:Z

    .line 148
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->myLayout:Landroid/view/ViewGroup$LayoutParams;

    .line 153
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsAccelerometer:Z

    .line 154
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 155
    iput v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorDelay:I

    .line 156
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->display:Landroid/view/Display;

    .line 161
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 162
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 164
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    .line 165
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 166
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 167
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 168
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 171
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->warView:Landroid/view/SurfaceView;

    .line 177
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewCreated:Z

    .line 178
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidViewIsActive:Z

    .line 179
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    .line 180
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieIsStopping:Z

    .line 181
    iput-boolean v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->noVidSurface:Z

    .line 182
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieIsStarting:Z

    .line 183
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->creatingMediaplayer:Z

    .line 188
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewCreated:Z

    .line 189
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewIsActive:Z

    .line 190
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextViewFirstDestroy:Z

    .line 192
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glExtensions:Ljava/lang/String;

    .line 193
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    .line 194
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glRenderer:Ljava/lang/String;

    .line 195
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVersion:Ljava/lang/String;

    .line 198
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 199
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    .line 200
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    .line 202
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ResumeEventDone:Z

    .line 204
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    .line 676
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->HasGLExtensions:Z

    .line 995
    iput v6, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->redSize:I

    .line 997
    const/4 v0, 0x6

    iput v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->greenSize:I

    .line 999
    iput v6, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->blueSize:I

    .line 1001
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->alphaSize:I

    .line 1003
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->stencilSize:I

    .line 1011
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 1013
    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->contextAttrs:[I

    return-void
.end method

.method static synthetic access$002(Lcom/nvidia/devtech/NvEventQueueActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nvidia/devtech/NvEventQueueActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    return p1
.end method


# virtual methods
.method public DoResumeEvent()V
    .locals 2

    .prologue
    .line 750
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nvidia/devtech/NvEventQueueActivity$1;

    invoke-direct {v1, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$1;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 759
    return-void
.end method

.method public GamepadReportSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 740
    return-void
.end method

.method public GetDepthBits()I
    .locals 1

    .prologue
    .line 1007
    const/16 v0, 0x10

    return v0
.end method

.method public GetGLExtensions()V
    .locals 3

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->HasGLExtensions:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f00

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glExtensions:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f01

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glRenderer:Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1f02

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVersion:Ljava/lang/String;

    .line 685
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 686
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extensions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glExtensions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 687
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glRenderer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 688
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->HasGLExtensions:Z

    .line 693
    :cond_0
    return-void
.end method

.method public InitEGLAndGLES2(I)Z
    .locals 6
    .param p1, "EGLVersion"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 697
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "InitEGLAndGLES2"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 698
    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v3, :cond_0

    .line 700
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "InitEGLAndGLES2 failed, cachedSurfaceHolder is null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    :goto_0
    return v1

    .line 704
    :cond_0
    const/4 v0, 0x1

    .line 705
    .local v0, "eglInitialized":Z
    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v3, :cond_2

    .line 707
    const/4 v0, 0x0

    .line 708
    if-lt p1, v5, :cond_1

    .line 709
    invoke-virtual {p0, v5}, Lcom/nvidia/devtech/NvEventQueueActivity;->initEGL(I)Z

    move-result v0

    .line 710
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initEGL 3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    :cond_1
    if-nez v0, :cond_2

    .line 713
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 714
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/nvidia/devtech/NvEventQueueActivity;->initEGL(I)Z

    move-result v0

    .line 715
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initEGL 2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 718
    :cond_2
    if-eqz v0, :cond_4

    .line 720
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Should we create a surface?"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 721
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    if-nez v1, :cond_3

    .line 722
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Yes! Calling create surface"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->createEGLSurface(Landroid/view/SurfaceHolder;)Z

    .line 724
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Done creating surface"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    :cond_3
    iput-boolean v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->viewIsActive:Z

    .line 727
    iput v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    move v1, v2

    .line 735
    goto :goto_0

    .line 731
    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "initEGLAndGLES2 failed, core EGL init failure"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public IsPortrait()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public native accelerometerEvent(FFF)Z
.end method

.method public native cleanup()V
.end method

.method protected cleanupEGL()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1192
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->destroyEGLSurface()V

    .line 1193
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1198
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1200
    :cond_2
    iput-object v5, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1201
    iput-object v5, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1202
    iput-object v5, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1204
    iput-boolean v6, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    .line 1205
    iput-object v5, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1207
    iput-object v5, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->cachedSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1208
    iput v6, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    .line 1209
    iput v6, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    .line 1210
    return-void
.end method

.method protected createEGLSurface(Landroid/view/SurfaceHolder;)Z
    .locals 7
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1152
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1154
    new-array v0, v6, [I

    .line 1156
    .local v0, "sizes":[I
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3057

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 1157
    aget v1, v0, v5

    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    .line 1158
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3056

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 1159
    aget v1, v0, v5

    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    .line 1161
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "checking glVendor == null?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1162
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->glVendor:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1163
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Making current and back"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->makeCurrent()Z

    .line 1165
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->unMakeCurrent()Z

    .line 1167
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Done. Making current and back"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1169
    return v6
.end method

.method protected destroyEGLSurface()V
    .locals 5

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1182
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1183
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSupportPauseResume()Z
    .locals 1

    .prologue
    .line 1241
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 1251
    iget v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 1246
    iget v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->surfaceWidth:I

    return v0
.end method

.method public hideSystemUI()V
    .locals 2

    .prologue
    .line 973
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->warView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->warView:Landroid/view/SurfaceView;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    .line 982
    :cond_0
    return-void
.end method

.method public native imeClosed()V
.end method

.method public native init(Z)Z
.end method

.method protected initEGL(I)Z
    .locals 26
    .param p1, "esVersion"    # I

    .prologue
    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    if-nez v1, :cond_0

    .line 1024
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3038

    aput v3, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 1025
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    move-object/from16 v17, v0

    .line 1027
    .local v17, "oldConf":[I
    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 1028
    const/4 v14, 0x0

    .line 1029
    .local v14, "i":I
    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_1

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    aget v2, v17, v14

    aput v2, v1, v14

    .line 1029
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1031
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    const/16 v2, 0x3040

    aput v2, v1, v14

    .line 1032
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 1033
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    sget v2, Lcom/nvidia/devtech/NvEventQueueActivity;->EGL_OPENGL_ES3_BIT:I

    aput v2, v1, v15

    .line 1036
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3038

    aput v2, v1, v14

    .line 1038
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3098

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->contextAttrs:[I

    .line 1044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    if-nez v1, :cond_2

    .line 1045
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3038

    aput v3, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 1046
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    move-object/from16 v18, v0

    .line 1048
    .local v18, "oldConfES2":[I
    move-object/from16 v0, v18

    array-length v1, v0

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    .line 1049
    const/4 v14, 0x0

    .end local v15    # "i":I
    .restart local v14    # "i":I
    :goto_2
    move-object/from16 v0, v18

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_4

    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    aget v2, v18, v14

    aput v2, v1, v14

    .line 1049
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1035
    .end local v14    # "i":I
    .end local v18    # "oldConfES2":[I
    .restart local v15    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    const/4 v2, 0x4

    aput v2, v1, v15

    goto :goto_1

    .line 1051
    .restart local v18    # "oldConfES2":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3024

    aput v2, v1, v14

    .line 1052
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->redSize:I

    aput v2, v1, v15

    .line 1053
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3023

    aput v2, v1, v14

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->greenSize:I

    aput v2, v1, v15

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3022

    aput v2, v1, v14

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->blueSize:I

    aput v2, v1, v15

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3021

    aput v2, v1, v14

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->alphaSize:I

    aput v2, v1, v15

    .line 1059
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3026

    aput v2, v1, v14

    .line 1060
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->stencilSize:I

    aput v2, v1, v15

    .line 1061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3025

    aput v2, v1, v14

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    const/16 v2, 0x10

    aput v2, v1, v15

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    const/16 v2, 0x3038

    aput v2, v1, v14

    .line 1065
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 1067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1068
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglDisplay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1069
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v24, v0

    .line 1070
    .local v24, "version":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, v24

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v20

    .line 1071
    .local v20, "ret":Z
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EglInitialize returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1072
    if-nez v20, :cond_5

    .line 1074
    const/4 v1, 0x0

    move v14, v15

    .line 1140
    .end local v15    # "i":I
    .restart local v14    # "i":I
    :goto_3
    return v1

    .line 1076
    .end local v14    # "i":I
    .restart local v15    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v12

    .line 1077
    .local v12, "eglErr":I
    const/16 v1, 0x3000

    if-eq v12, v1, :cond_6

    .line 1078
    const/4 v1, 0x0

    move v14, v15

    .end local v15    # "i":I
    .restart local v14    # "i":I
    goto :goto_3

    .line 1079
    .end local v14    # "i":I
    .restart local v15    # "i":I
    :cond_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglInitialize err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1081
    const/16 v1, 0x14

    new-array v4, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1082
    .local v4, "config":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 1083
    .local v6, "num_configs":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    array-length v5, v4

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1084
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglChooseConfig err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1086
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_configs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1087
    const/high16 v22, 0x1000000

    .line 1088
    .local v22, "score":I
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v23, v0

    .line 1089
    .local v23, "val":[I
    const/4 v14, 0x0

    .end local v15    # "i":I
    .restart local v14    # "i":I
    :goto_4
    const/4 v1, 0x0

    aget v1, v6, v1

    if-ge v14, v1, :cond_c

    .line 1091
    const/4 v9, 0x1

    .line 1092
    .local v9, "cont":Z
    const/4 v10, 0x0

    .line 1094
    .local v10, "currScore":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_5
    move-object/from16 v0, v18

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_7

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    mul-int/lit8 v25, v16, 0x2

    aget v5, v5, v25

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1097
    const/4 v1, 0x0

    aget v1, v23, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    mul-int/lit8 v3, v16, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    mul-int/lit8 v3, v16, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    if-eq v1, v2, :cond_9

    .line 1099
    const/4 v9, 0x0

    .line 1103
    :cond_7
    if-nez v9, :cond_a

    .line 1089
    :cond_8
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1094
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1105
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    const/16 v5, 0x3024

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v19, v23, v1

    .line 1106
    .local v19, "r":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    const/16 v5, 0x3023

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v13, v23, v1

    .line 1107
    .local v13, "g":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    const/16 v5, 0x3022

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v8, v23, v1

    .line 1108
    .local v8, "b":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    const/16 v5, 0x3021

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v7, v23, v1

    .line 1109
    .local v7, "a":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    const/16 v5, 0x3025

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v11, v23, v1

    .line 1110
    .local v11, "d":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    const/16 v5, 0x3026

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v21, v23, v1

    .line 1114
    .local v21, "s":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->redSize:I

    sub-int v1, v19, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->greenSize:I

    sub-int v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->blueSize:I

    sub-int v2, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->alphaSize:I

    sub-int v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v10, v1, 0x10

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->GetDepthBits()I

    move-result v1

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v10, v1

    .line 1116
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->stencilSize:I

    sub-int v1, v21, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1118
    move/from16 v0, v22

    if-ge v10, v0, :cond_8

    .line 1122
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_b

    .line 1124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->configAttrs:[I

    mul-int/lit8 v25, v16, 0x2

    aget v5, v5, v25

    move-object/from16 v0, v23

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1122
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 1129
    :cond_b
    move/from16 v22, v10

    .line 1130
    aget-object v1, v4, v14

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    goto/16 :goto_6

    .line 1133
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v9    # "cont":Z
    .end local v10    # "currScore":I
    .end local v11    # "d":I
    .end local v13    # "g":I
    .end local v16    # "j":I
    .end local v19    # "r":I
    .end local v21    # "s":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_d

    .line 1134
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1136
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->contextAttrs:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglCreateContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 1140
    const/4 v1, 0x1

    goto/16 :goto_3
.end method

.method public native keyEvent(IIIILandroid/view/KeyEvent;)Z
.end method

.method public loadFile(Ljava/lang/String;)Lcom/nvidia/devtech/NvEventQueueActivity$RawData;
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;

    invoke-direct {v3, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    .line 261
    .local v3, "ret":Lcom/nvidia/devtech/NvEventQueueActivity$RawData;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object v1, v2

    .line 273
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 274
    .local v4, "size":I
    iput v4, v3, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;->length:I

    .line 275
    new-array v5, v4, [B

    iput-object v5, v3, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;->data:[B

    .line 276
    iget-object v5, v3, Lcom/nvidia/devtech/NvEventQueueActivity$RawData;->data:[B

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    if-eqz v1, :cond_0

    .line 285
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 288
    .end local v4    # "size":I
    :cond_0
    :goto_1
    return-object v3

    .line 263
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 283
    if-eqz v1, :cond_0

    .line 285
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_1

    .line 285
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_2
    throw v5

    .restart local v4    # "size":I
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v4    # "size":I
    :catch_4
    move-exception v6

    goto :goto_2

    .line 269
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    goto :goto_0
.end method

.method public loadTexture(Ljava/lang/String;)Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;
    .locals 24
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v19, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    .line 311
    .local v19, "ret":Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;
    const/4 v15, 0x0

    .line 314
    .local v15, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v15    # "is":Ljava/io/InputStream;
    .local v16, "is":Ljava/io/InputStream;
    move-object/from16 v15, v16

    .line 327
    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 328
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->width:I

    .line 329
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->height:I

    .line 330
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 331
    .local v3, "pixels":[I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 334
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 335
    .local v20, "tmp":[I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 336
    .local v21, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 337
    .local v13, "h":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    shr-int/lit8 v4, v13, 0x1

    if-ge v14, v4, :cond_0

    .line 339
    mul-int v4, v14, v21

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    add-int/lit8 v4, v13, -0x1

    sub-int/2addr v4, v14

    mul-int v4, v4, v21

    mul-int v5, v14, v21

    move/from16 v0, v21

    invoke-static {v3, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    const/4 v4, 0x0

    add-int/lit8 v5, v13, -0x1

    sub-int/2addr v5, v14

    mul-int v5, v5, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 316
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "pixels":[I
    .end local v13    # "h":I
    .end local v14    # "i":I
    .end local v20    # "tmp":[I
    .end local v21    # "w":I
    :catch_0
    move-exception v12

    .line 320
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    goto :goto_0

    .line 345
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v3    # "pixels":[I
    .restart local v13    # "h":I
    .restart local v14    # "i":I
    .restart local v20    # "tmp":[I
    .restart local v21    # "w":I
    :cond_0
    :try_start_3
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->length:I

    .line 346
    move-object/from16 v0, v19

    iget v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->length:I

    new-array v4, v4, [B

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    .line 347
    const/16 v18, 0x0

    .line 348
    .local v18, "pos":I
    const/4 v10, 0x0

    .line 349
    .local v10, "bpos":I
    const/16 v23, 0x0

    .local v23, "y":I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v13, :cond_2

    .line 351
    const/16 v22, 0x0

    .local v22, "x":I
    move v11, v10

    .end local v10    # "bpos":I
    .local v11, "bpos":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 353
    aget v17, v3, v18

    .line 354
    .local v17, "p":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "bpos":I
    .restart local v10    # "bpos":I
    shr-int/lit8 v5, v17, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 355
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "bpos":I
    .restart local v11    # "bpos":I
    shr-int/lit8 v5, v17, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v10

    .line 356
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "bpos":I
    .restart local v10    # "bpos":I
    shr-int/lit8 v5, v17, 0x0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 357
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/nvidia/devtech/NvEventQueueActivity$RawTexture;->data:[B

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "bpos":I
    .restart local v11    # "bpos":I
    shr-int/lit8 v5, v17, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 351
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 349
    .end local v17    # "p":I
    :cond_1
    add-int/lit8 v23, v23, 0x1

    move v10, v11

    .end local v11    # "bpos":I
    .restart local v10    # "bpos":I
    goto :goto_2

    .line 361
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "pixels":[I
    .end local v10    # "bpos":I
    .end local v13    # "h":I
    .end local v14    # "i":I
    .end local v18    # "pos":I
    .end local v20    # "tmp":[I
    .end local v21    # "w":I
    .end local v22    # "x":I
    .end local v23    # "y":I
    :catch_1
    move-exception v12

    .line 363
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v19

    .line 322
    .restart local v12    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method public native lowMemoryEvent()V
.end method

.method public mSleep(J)V
    .locals 1
    .param p1, "milis"    # J

    .prologue
    .line 744
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public makeCurrent()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1263
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_1

    .line 1265
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "eglContext is NULL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1281
    :cond_0
    :goto_0
    return v0

    .line 1268
    :cond_1
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_2

    .line 1270
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "eglSurface is NULL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1273
    :cond_2
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1275
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    :cond_3
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions()V

    .line 1281
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native multiTouchEvent(IIIIIILandroid/view/MotionEvent;)Z
.end method

.method public nativeCrashed()V
    .locals 5

    .prologue
    .line 210
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "nativeCrashed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved game was:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "savedGame"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "crashed here (native trace should follow after the Java trace)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 218
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 531
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 420
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "**** NvEventQueueActivity onCreate"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/nvidia/devtech/NvUtil;->getInstance()Lcom/nvidia/devtech/NvUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/devtech/NvUtil;->setActivity(Landroid/app/Activity;)V

    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 423
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->handler:Landroid/os/Handler;

    .line 424
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->isFailedError:Z

    if-eqz v1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsAccelerometer:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    .line 427
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 429
    :cond_1
    invoke-static {}, Lcom/nvidia/devtech/NvAPKFileHelper;->getInstance()Lcom/nvidia/devtech/NvAPKFileHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/devtech/NvAPKFileHelper;->setContext(Landroid/content/Context;)V

    .line 431
    new-instance v0, Lcom/nvidia/devtech/NvAPKFile;

    invoke-direct {v0}, Lcom/nvidia/devtech/NvAPKFile;-><init>()V

    .line 432
    .local v0, "file":Lcom/nvidia/devtech/NvAPKFile;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    .line 434
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->display:Landroid/view/Display;

    .line 435
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->systemInit()Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->quitAndWait()V

    .line 518
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->finish()V

    .line 520
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 521
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->systemCleanup()V

    .line 522
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 631
    const/4 v6, 0x0

    .line 632
    .local v6, "ret":Z
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 633
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 647
    :goto_0
    return v0

    .line 636
    :cond_1
    const/16 v0, 0x59

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    .line 637
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 640
    :cond_3
    const/16 v0, 0x52

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    .line 641
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 645
    :cond_4
    if-nez v6, :cond_5

    .line 646
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/devtech/NvEventQueueActivity;->keyEvent(IIIILandroid/view/KeyEvent;)Z

    move-result v6

    :cond_5
    move v0, v6

    .line 647
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x73

    const/4 v3, 0x0

    .line 658
    if-ne p1, v2, :cond_0

    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 660
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCapsLockOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->capsLockOn:Z

    .line 661
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->capsLockOn:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    :goto_0
    move-object v0, p0

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/devtech/NvEventQueueActivity;->keyEvent(IIIILandroid/view/KeyEvent;)Z

    .line 666
    :cond_0
    const/16 v0, 0x59

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_4

    :cond_1
    move v6, v3

    .line 673
    :cond_2
    :goto_1
    return v6

    .line 661
    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 670
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 671
    .local v6, "ret":Z
    if-nez v6, :cond_2

    .line 672
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/devtech/NvEventQueueActivity;->keyEvent(IIIILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 479
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 480
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ResumeEventDone:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->pauseEvent()V

    .line 482
    :cond_0
    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    .line 483
    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->inputPaused:Z

    .line 485
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 468
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->lastResumeTime:J

    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 449
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorDelay:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 454
    :cond_0
    iput-boolean v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->paused:Z

    .line 455
    iput-boolean v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->inputPaused:Z

    .line 456
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 540
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 541
    const/4 v1, 0x0

    .local v1, "roll":F
    const/4 v0, 0x0

    .line 542
    .local v0, "pitch":F
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 561
    :goto_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->accelerometerEvent(FFF)Z

    .line 563
    .end local v0    # "pitch":F
    .end local v1    # "roll":F
    :cond_0
    return-void

    .line 544
    .restart local v0    # "pitch":F
    .restart local v1    # "roll":F
    :pswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 545
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v3

    .line 546
    goto :goto_0

    .line 548
    :pswitch_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v4

    .line 549
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v3

    .line 550
    goto :goto_0

    .line 552
    :pswitch_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 553
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 554
    goto :goto_0

    .line 556
    :pswitch_3
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v1, v2

    .line 557
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 498
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 499
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 575
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 578
    .local v12, "ret":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->inputPaused:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->delayInputForStore:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->lastResumeTime:J

    cmp-long v2, v2, v14

    if-gez v2, :cond_1

    .line 580
    :cond_0
    const/4 v2, 0x0

    .line 620
    :goto_0
    return v2

    .line 582
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->delayInputForStore:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->lastResumeTime:J

    const-wide/16 v16, 0x1388

    add-long v14, v14, v16

    cmp-long v2, v2, v14

    if-lez v2, :cond_2

    .line 584
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->delayInputForStore:Z

    .line 588
    :cond_2
    if-nez v12, :cond_6

    .line 590
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsMultitouch:Z

    if-eqz v2, :cond_7

    .line 592
    const/4 v4, 0x0

    .line 593
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "x1":I
    const/4 v6, 0x0

    .local v6, "y1":I
    const/4 v7, 0x0

    .local v7, "x2":I
    const/4 v8, 0x0

    .line 595
    .local v8, "y2":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 596
    .local v11, "numEvents":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 599
    if-nez v4, :cond_4

    .line 601
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v5, v2

    .line 602
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v6, v2

    .line 603
    add-int/lit8 v4, v4, 0x1

    .line 596
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 605
    :cond_4
    const/4 v2, 0x1

    if-ne v4, v2, :cond_3

    .line 607
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v7, v2

    .line 608
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v8, v2

    .line 609
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 613
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/nvidia/devtech/NvEventQueueActivity;->multiTouchEvent(IIIIIILandroid/view/MotionEvent;)Z

    move-result v12

    .end local v4    # "count":I
    .end local v5    # "x1":I
    .end local v6    # "y1":I
    .end local v7    # "x2":I
    .end local v8    # "y2":I
    .end local v10    # "i":I
    .end local v11    # "numEvents":I
    :cond_6
    :goto_3
    move v2, v12

    .line 620
    goto :goto_0

    .line 617
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v9, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->touchEvent(IIILandroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_3
.end method

.method public native pauseEvent()V
.end method

.method public native quitAndWait()V
.end method

.method public native resumeEvent()V
.end method

.method public setGameWindowSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->IsPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt p1, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->IsPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    if-le p2, p1, :cond_2

    .line 411
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->setWindowSize(II)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/nvidia/devtech/NvEventQueueActivity;->setWindowSize(II)V

    goto :goto_0
.end method

.method public native setWindowSize(II)V
.end method

.method public showSystemUI()V
    .locals 2

    .prologue
    .line 985
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->warView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->warView:Landroid/view/SurfaceView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    .line 991
    :cond_0
    return-void
.end method

.method public swapBuffers()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1220
    iget v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    if-lez v2, :cond_1

    .line 1221
    iget v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->SwapBufferSkip:I

    .line 1222
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "swapBuffer wait"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1236
    :cond_0
    :goto_0
    return v0

    .line 1225
    :cond_1
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v2, :cond_2

    .line 1227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "eglSurface is NULL"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 1228
    goto :goto_0

    .line 1230
    :cond_2
    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBufferrr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 1233
    goto :goto_0
.end method

.method protected systemCleanup()V
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->ranInit:Z

    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->cleanup()V

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->cleanupEGL()V

    .line 1321
    return-void
.end method

.method protected systemInit()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, 0x1

    .line 768
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "In systemInit"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 771
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->supportPauseResume:Z

    if-eqz v1, :cond_0

    .line 772
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->GetGLExtensions:Z

    invoke-virtual {p0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->init(Z)Z

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->warView:Landroid/view/SurfaceView;

    if-nez v1, :cond_3

    .line 777
    new-instance v1, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;

    invoke-direct {v1, p0, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    .line 778
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    check-cast v1, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;

    iput-object p0, v1, Lcom/nvidia/devtech/NvEventQueueActivity$gSurfaceView;->myActivity:Lcom/nvidia/devtech/NvEventQueueActivity;

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    .line 784
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 785
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 786
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->holder:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/nvidia/devtech/NvEventQueueActivity$2;

    invoke-direct {v2, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$2;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 868
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 869
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "view.getParent() != null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->setContentView(Landroid/view/View;)V

    .line 874
    :goto_1
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 875
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 878
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->noVidSurface:Z

    if-nez v1, :cond_1

    .line 879
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidView:Landroid/view/SurfaceView;

    .line 880
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidHolder:Landroid/view/SurfaceHolder;

    .line 881
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/nvidia/devtech/NvEventQueueActivity$3;

    invoke-direct {v2, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$3;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 917
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 920
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v1, :cond_1

    .line 921
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    .line 922
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextHolder:Landroid/view/SurfaceHolder;

    .line 924
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/nvidia/devtech/NvEventQueueActivity$4;

    invoke-direct {v2, p0}, Lcom/nvidia/devtech/NvEventQueueActivity$4;-><init>(Lcom/nvidia/devtech/NvEventQueueActivity;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 951
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 955
    :cond_1
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->noVidSurface:Z

    if-nez v1, :cond_2

    .line 956
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 957
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 958
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 959
    .local v0, "myParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 960
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->vidView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/devtech/NvEventQueueActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iget-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->UseSubtitles:Z

    if-eqz v1, :cond_2

    .line 962
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 963
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->movieTextView:Landroid/view/SurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/nvidia/devtech/NvEventQueueActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    .end local v0    # "myParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return v3

    .line 780
    :cond_3
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->warView:Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    goto/16 :goto_0

    .line 873
    :cond_4
    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->view:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1}, Lcom/nvidia/devtech/NvEventQueueActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public native touchEvent(IIILandroid/view/MotionEvent;)Z
.end method

.method public unMakeCurrent()Z
    .locals 5

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "egl(Un)MakeCurrent err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1301
    const/4 v0, 0x0

    .line 1304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
