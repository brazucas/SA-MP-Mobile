.class public Lcom/rockstargames/hal/andThread;
.super Ljava/lang/Object;
.source "andThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;
    }
.end annotation


# static fields
.field private static pausedCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static threadsRunning:Z

.field private static tid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    .line 126
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 10
    invoke-static {p0}, Lcom/rockstargames/hal/andThread;->runNativeRunnable(I)V

    return-void
.end method

.method public static currentThreadId()I
    .locals 2

    .prologue
    .line 129
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    .line 130
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Thread IDs overflowed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    .line 135
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    .line 138
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    goto :goto_0
.end method

.method private static native runNativeRunnable(I)V
.end method

.method public static runOnBackgroundThread(II)V
    .locals 3
    .param p0, "runnableId"    # I
    .param p1, "delay"    # I

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/andThread$1;

    invoke-direct {v1, p1, p0}, Lcom/rockstargames/hal/andThread$1;-><init>(II)V

    const-string v2, "Native background thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public static runOnMainThread(II)V
    .locals 3
    .param p0, "runnableId"    # I
    .param p1, "delay"    # I

    .prologue
    .line 68
    if-gtz p1, :cond_0

    .line 70
    const/4 p1, 0x1

    .line 74
    :cond_0
    new-instance v0, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;-><init>(II)V

    .line 76
    .local v0, "dnr":Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;
    sget-boolean v1, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->post()Z

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_1
    sget-object v2, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    monitor-enter v2

    .line 84
    :try_start_0
    sget-object v1, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setRunning(Z)V
    .locals 4
    .param p0, "running"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    .line 50
    if-eqz p0, :cond_1

    .line 52
    sget-object v3, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    monitor-enter v3

    .line 54
    :try_start_0
    sget-object v2, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;

    .line 56
    .local v0, "dnr":Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;
    invoke-virtual {v0}, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->post()Z

    goto :goto_0

    .line 60
    .end local v0    # "dnr":Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 59
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 60
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 119
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method
