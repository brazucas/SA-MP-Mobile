.class Lcom/AdX/tag/AdXConnect$RetargetEventTask;
.super Landroid/os/AsyncTask;
.source "AdXConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AdX/tag/AdXConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetargetEventTask"
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

.field event:Ljava/lang/String;

.field postData:Ljava/lang/String;

.field final synthetic this$0:Lcom/AdX/tag/AdXConnect;


# direct methods
.method public constructor <init>(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "json_payload"    # Ljava/lang/String;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1038
    const-string v0, "adx_v3"

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->event:Ljava/lang/String;

    .line 1041
    iput-object p2, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->context:Landroid/content/Context;

    .line 1042
    iput-object p3, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->postData:Ljava/lang/String;

    .line 1044
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1049
    const/4 v5, 0x0

    .line 1050
    .local v5, "returnValue":Z
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$14(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    .local v1, "deviceID":Ljava/lang/String;
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/AdX/tag/AdXConnect;->access$0(Lcom/AdX/tag/AdXConnect;Landroid/content/Context;)Z

    .line 1053
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&idfa="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v8}, Lcom/AdX/tag/AdXConnect;->access$2(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&isLAT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v8}, Lcom/AdX/tag/AdXConnect;->access$3(Lcom/AdX/tag/AdXConnect;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/AdX/tag/AdXConnect;->access$4(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V

    .line 1055
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$5(Lcom/AdX/tag/AdXConnect;)V

    .line 1057
    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$6()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1059
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, "nonce":Ljava/lang/String;
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&signature="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v10}, Lcom/AdX/tag/AdXConnect;->access$7(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v10}, Lcom/AdX/tag/AdXConnect;->access$2(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->event:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v10}, Lcom/AdX/tag/AdXConnect;->access$8(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$6()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/AdX/tag/AdXConnect;->access$9(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/AdX/tag/AdXConnect;->access$4(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V

    .line 1061
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&nonce="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/AdX/tag/AdXConnect;->access$4(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)V

    .line 1062
    sget-boolean v6, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "AdXAppTracker"

    const-string v7, "Signature sent with connection"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1070
    .end local v3    # "nonce":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$1(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "connectURLParams":Ljava/lang/String;
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$14(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6}, Lcom/AdX/tag/AdXConnect;->access$14(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    const-string v1, "none"

    .line 1075
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v7}, Lcom/AdX/tag/AdXConnect;->access$11(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v7}, Lcom/AdX/tag/AdXConnect;->access$12(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/API/RetargetEvent/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v7}, Lcom/AdX/tag/AdXConnect;->access$8(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v7}, Lcom/AdX/tag/AdXConnect;->access$7(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->event:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&platform=Android&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "payload"

    iget-object v8, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->postData:Ljava/lang/String;

    invoke-static {v6, v0, v7, v8}, Lcom/AdX/tag/AdXURLConnection;->postToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1078
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1079
    iget-object v6, p0, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-static {v6, v4}, Lcom/AdX/tag/AdXConnect;->access$13(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)Z

    move-result v5

    .line 1081
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 1063
    .end local v0    # "connectURLParams":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1064
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 1065
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 1066
    .local v2, "e":Ljava/security/SignatureException;
    invoke-virtual {v2}, Ljava/security/SignatureException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/AdX/tag/AdXConnect$RetargetEventTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
