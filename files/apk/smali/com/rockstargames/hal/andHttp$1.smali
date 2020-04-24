.class Lcom/rockstargames/hal/andHttp$1;
.super Ljava/lang/Object;
.source "andHttp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andHttp;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andHttp;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andHttp;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/rockstargames/hal/andHttp$1;->this$0:Lcom/rockstargames/hal/andHttp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/rockstargames/hal/andHttp$1;->this$0:Lcom/rockstargames/hal/andHttp;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andHttp;->doInBackground()Landroid/util/Pair;

    move-result-object v0

    .line 196
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/apache/http/HttpResponse;[B>;"
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/andHttp$1$1;

    invoke-direct {v2, p0, v0}, Lcom/rockstargames/hal/andHttp$1$1;-><init>(Lcom/rockstargames/hal/andHttp$1;Landroid/util/Pair;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method
