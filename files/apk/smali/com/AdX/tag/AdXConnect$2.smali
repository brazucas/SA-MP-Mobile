.class Lcom/AdX/tag/AdXConnect$2;
.super Ljava/lang/Object;
.source "AdXConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZILjava/lang/String;)Lcom/AdX/tag/AdXConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$extraInstallData:Ljava/lang/String;

.field private final synthetic val$isUpdate:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$2;->val$ctx:Landroid/content/Context;

    iput p2, p0, Lcom/AdX/tag/AdXConnect$2;->val$isUpdate:I

    iput-object p3, p0, Lcom/AdX/tag/AdXConnect$2;->val$extraInstallData:Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 236
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AdXAppTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/AdX/tag/AdXConnect;->sendDelay:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " seconds is up sending to AdX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$15()Lcom/AdX/tag/AdXURLConnection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->access$16(Lcom/AdX/tag/AdXURLConnection;)V

    .line 240
    :cond_1
    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$17()Lcom/AdX/tag/AdXConnect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 241
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect$2;->val$ctx:Landroid/content/Context;

    iget v2, p0, Lcom/AdX/tag/AdXConnect$2;->val$isUpdate:I

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect$2;->val$extraInstallData:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/AdX/tag/AdXConnect;)V

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->access$19(Lcom/AdX/tag/AdXConnect;)V

    .line 242
    :cond_2
    return-void
.end method
