.class Lcom/rockstargames/hal/andHttp$1$1;
.super Ljava/lang/Object;
.source "andHttp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andHttp$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockstargames/hal/andHttp$1;

.field final synthetic val$result:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andHttp$1;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/rockstargames/hal/andHttp$1$1;->this$1:Lcom/rockstargames/hal/andHttp$1;

    iput-object p2, p0, Lcom/rockstargames/hal/andHttp$1$1;->val$result:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/rockstargames/hal/andHttp$1$1;->this$1:Lcom/rockstargames/hal/andHttp$1;

    iget-object v0, v0, Lcom/rockstargames/hal/andHttp$1;->this$0:Lcom/rockstargames/hal/andHttp;

    iget-object v1, p0, Lcom/rockstargames/hal/andHttp$1$1;->val$result:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andHttp;->onPostExecute(Landroid/util/Pair;)V

    .line 202
    return-void
.end method
