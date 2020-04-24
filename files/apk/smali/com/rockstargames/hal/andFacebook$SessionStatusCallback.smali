.class Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;
.super Ljava/lang/Object;
.source "andFacebook.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andFacebook;


# direct methods
.method private constructor <init>(Lcom/rockstargames/hal/andFacebook;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;->this$0:Lcom/rockstargames/hal/andFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/andFacebook;Lcom/rockstargames/hal/andFacebook$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockstargames/hal/andFacebook;
    .param p2, "x1"    # Lcom/rockstargames/hal/andFacebook$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;-><init>(Lcom/rockstargames/hal/andFacebook;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 244
    if-eqz p3, :cond_0

    .line 246
    const-string v0, "Facebook"

    const-string v1, "Facebook error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/andFacebook$2;->$SwitchMap$com$facebook$SessionState:[I

    invoke-virtual {p2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 253
    :pswitch_0
    new-instance v0, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback$1;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback$1;-><init>(Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;)V

    invoke-static {p1, v0}, Lcom/facebook/Request;->executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/rockstargames/hal/andFacebook$SessionStatusCallback;->this$0:Lcom/rockstargames/hal/andFacebook;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andFacebook;->facebookClosed()V

    .line 267
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andFacebook;->access$100(Lcom/rockstargames/hal/andFacebook;)Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->closeSession()V

    .line 273
    invoke-static {}, Lcom/rockstargames/hal/andFacebook;->getInstance()Lcom/rockstargames/hal/andFacebook;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andFacebook;->access$100(Lcom/rockstargames/hal/andFacebook;)Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
