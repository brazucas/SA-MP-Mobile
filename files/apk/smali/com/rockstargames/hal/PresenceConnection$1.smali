.class Lcom/rockstargames/hal/PresenceConnection$1;
.super Ljava/lang/Object;
.source "PresenceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/PresenceConnection;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/PresenceConnection;

.field final synthetic val$huc:Ljava/net/HttpURLConnection;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/PresenceConnection;Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/rockstargames/hal/PresenceConnection$1;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    iput-object p2, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$huc:Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection$1;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v1}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v1

    iget-object v2, p0, Lcom/rockstargames/hal/PresenceConnection$1;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v2}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$huc:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iget-object v4, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$huc:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
