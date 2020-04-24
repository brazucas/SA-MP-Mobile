.class Lcom/rockstargames/hal/PresenceConnection$2;
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

.field final synthetic val$finalBuffer:[B

.field final synthetic val$finalReadAmount:I


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/PresenceConnection;[BI)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/rockstargames/hal/PresenceConnection$2;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    iput-object p2, p0, Lcom/rockstargames/hal/PresenceConnection$2;->val$finalBuffer:[B

    iput p3, p0, Lcom/rockstargames/hal/PresenceConnection$2;->val$finalReadAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection$2;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v0}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection$2;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v1}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/PresenceConnection$2;->val$finalBuffer:[B

    iget v3, p0, Lcom/rockstargames/hal/PresenceConnection$2;->val$finalReadAmount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/rockstargames/hal/andHttp;->onReceivedData(I[BI)V

    .line 140
    return-void
.end method
