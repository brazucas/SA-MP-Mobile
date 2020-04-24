.class Lcom/AdX/tag/AdXConnect$5;
.super Ljava/lang/Object;
.source "AdXConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AdX/tag/AdXConnect;

.field private final synthetic val$passData:Ljava/lang/String;

.field private final synthetic val$passEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$5;->this$0:Lcom/AdX/tag/AdXConnect;

    iput-object p2, p0, Lcom/AdX/tag/AdXConnect$5;->val$passEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/AdX/tag/AdXConnect$5;->val$passData:Ljava/lang/String;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 600
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect$5;->this$0:Lcom/AdX/tag/AdXConnect;

    new-instance v1, Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    iget-object v2, p0, Lcom/AdX/tag/AdXConnect$5;->this$0:Lcom/AdX/tag/AdXConnect;

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect$5;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v3}, Lcom/AdX/tag/AdXConnect;->access$20(Lcom/AdX/tag/AdXConnect;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/AdX/tag/AdXConnect$5;->val$passEvent:Ljava/lang/String;

    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$5;->val$passData:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/AdX/tag/AdXConnect$ConnectEventTask;-><init>(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/AdX/tag/AdXConnect;->access$25(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$ConnectEventTask;)V

    .line 601
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect$5;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->access$26(Lcom/AdX/tag/AdXConnect;)Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 602
    return-void
.end method
