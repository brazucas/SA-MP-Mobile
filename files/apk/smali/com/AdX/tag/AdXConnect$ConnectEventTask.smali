.class Lcom/AdX/tag/AdXConnect$ConnectEventTask;
.super Landroid/os/AsyncTask;
.source "AdXConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AdX/tag/AdXConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field data:Ljava/lang/String;

.field event:Ljava/lang/String;

.field final synthetic this$0:Lcom/AdX/tag/AdXConnect;


# direct methods
.method public constructor <init>(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 991
    iput-object p2, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->context:Landroid/content/Context;

    .line 992
    iput-object p3, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->event:Ljava/lang/String;

    .line 993
    iput-object p4, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->data:Ljava/lang/String;

    .line 994
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 999
    const/4 v4, 0x0

    .line 1001
    .local v4, "returnValue":Z
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/AdX/tag/AdXConnect;->access$0(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;)Z

    .line 1002
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v5}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&idfa="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v7}, Lcom/AdX/tag/AdXConnect;->access$2(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&isLAT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v7}, Lcom/AdX/tag/AdXConnect;->access$3(Lcom/AdX/tag/AdXConnect;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/AdX/tag/AdXConnect;->access$4(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V

    .line 1003
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v5}, Lcom/AdX/tag/AdXConnect;->access$5(Lcom/AdX/tag/AdXConnect;)V

    .line 1005
    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$6()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1007
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "nonce":Ljava/lang/String;
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v5}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&signature="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v9}, Lcom/AdX/tag/AdXConnect;->access$7(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v9}, Lcom/AdX/tag/AdXConnect;->access$2(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->event:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->data:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v9}, Lcom/AdX/tag/AdXConnect;->access$8(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$6()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/AdX/tag/AdXConnect;->access$9(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/AdX/tag/AdXConnect;->access$4(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V

    .line 1009
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v5}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&nonce="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/AdX/tag/AdXConnect;->access$4(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V

    .line 1010
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "AdXAppTracker"

    const-string v6, "Signature sent with connection"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1018
    .end local v2    # "nonce":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v5}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "connectURLParams":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$11(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$12(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/API/androidevent.php?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/AdX/tag/AdXURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1025
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v5, v3}, Lcom/AdX/tag/AdXConnect;->access$13(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)Z

    move-result v4

    .line 1027
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 1011
    .end local v0    # "connectURLParams":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1013
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 1014
    .local v1, "e":Ljava/security/SignatureException;
    invoke-virtual {v1}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
