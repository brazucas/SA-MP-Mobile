.class Lcom/rockstargames/hal/andFacebook$SessionStatusCallback$1;
.super Ljava/lang/Object;
.source "andFacebook.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback$1;->this$1:Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 2
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback$1;->this$1:Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;

    iget-object v1, v1, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;->this$0:Lcom/rockstargames/hal/andFacebook;

    invoke-virtual {v1, v0}, Lcom/rockstargames/hal/andFacebook;->facebookOpenedSucessfully(Ljava/lang/String;)V

    .line 261
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method
