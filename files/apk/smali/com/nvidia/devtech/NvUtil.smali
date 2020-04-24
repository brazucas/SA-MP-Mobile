.class public Lcom/nvidia/devtech/NvUtil;
.super Ljava/lang/Object;
.source "NvUtil.java"


# static fields
.field private static instance:Lcom/nvidia/devtech/NvUtil;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appLocalValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/nvidia/devtech/NvUtil;

    invoke-direct {v0}, Lcom/nvidia/devtech/NvUtil;-><init>()V

    sput-object v0, Lcom/nvidia/devtech/NvUtil;->instance:Lcom/nvidia/devtech/NvUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/devtech/NvUtil;->activity:Landroid/app/Activity;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/nvidia/devtech/NvUtil;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/nvidia/devtech/NvUtil;->instance:Lcom/nvidia/devtech/NvUtil;

    return-object v0
.end method


# virtual methods
.method public getAppLocalValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAppLocalValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nvidia/devtech/NvUtil;->activity:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method public setAppLocalValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nvidia/devtech/NvUtil;->appLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
