.class Lcom/AdX/tag/AdXConnect$3;
.super Ljava/lang/Object;
.source "AdXConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AdX/tag/AdXConnect;->_sendExtendedEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AdX/tag/AdXConnect;

.field private final synthetic val$jsonstring:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$3;->this$0:Lcom/AdX/tag/AdXConnect;

    iput-object p2, p0, Lcom/AdX/tag/AdXConnect$3;->val$jsonstring:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect$3;->this$0:Lcom/AdX/tag/AdXConnect;

    new-instance v1, Lcom/AdX/tag/AdXConnect$RetargetEventTask;

    iget-object v2, p0, Lcom/AdX/tag/AdXConnect$3;->this$0:Lcom/AdX/tag/AdXConnect;

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect$3;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v3}, Lcom/AdX/tag/AdXConnect;->access$20(Lcom/AdX/tag/AdXConnect;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/AdX/tag/AdXConnect$3;->val$jsonstring:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/AdX/tag/AdXConnect$RetargetEventTask;-><init>(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/AdX/tag/AdXConnect;->access$21(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$RetargetEventTask;)V

    .line 342
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect$3;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->access$22(Lcom/AdX/tag/AdXConnect;)Lcom/AdX/tag/AdXConnect$RetargetEventTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    return-void
.end method
