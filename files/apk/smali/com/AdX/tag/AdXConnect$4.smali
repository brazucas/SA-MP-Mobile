.class Lcom/AdX/tag/AdXConnect$4;
.super Ljava/lang/Object;
.source "AdXConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AdX/tag/AdXConnect;


# direct methods
.method constructor <init>(Lcom/AdX/tag/AdXConnect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$4;->this$0:Lcom/AdX/tag/AdXConnect;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect$4;->this$0:Lcom/AdX/tag/AdXConnect;

    new-instance v1, Lcom/AdX/tag/AdXConnect$ConnectTask;

    iget-object v2, p0, Lcom/AdX/tag/AdXConnect$4;->this$0:Lcom/AdX/tag/AdXConnect;

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect$4;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v3}, Lcom/AdX/tag/AdXConnect;->access$20(Lcom/AdX/tag/AdXConnect;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/AdX/tag/AdXConnect$ConnectTask;-><init>(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/AdX/tag/AdXConnect;->access$23(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$ConnectTask;)V

    .line 539
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect$4;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->access$24(Lcom/AdX/tag/AdXConnect;)Lcom/AdX/tag/AdXConnect$ConnectTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/AdX/tag/AdXConnect$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 540
    return-void
.end method
