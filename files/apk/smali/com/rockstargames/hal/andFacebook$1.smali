.class final Lcom/rockstargames/hal/andFacebook$1;
.super Ljava/lang/Object;
.source "andFacebook.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andFacebook;->postMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 8
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 204
    .local v3, "graphResponse":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 208
    .local v4, "postId":Ljava/lang/String;
    :try_start_1
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 215
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 216
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-nez v1, :cond_0

    .line 218
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rockstargames/hal/andFacebook;->facebookPostSuccess()V

    .line 229
    .end local v1    # "error":Lcom/facebook/FacebookRequestError;
    .end local v3    # "graphResponse":Lorg/json/JSONObject;
    .end local v4    # "postId":Ljava/lang/String;
    :goto_1
    return-void

    .line 210
    .restart local v3    # "graphResponse":Lorg/json/JSONObject;
    .restart local v4    # "postId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "Facebook"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 222
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "graphResponse":Lorg/json/JSONObject;
    .end local v4    # "postId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 224
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "andFacebook"

    const-string v6, "Error receiving Facebook response."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rockstargames/hal/andFacebook;->facebookPostFailed()V

    goto :goto_1
.end method
