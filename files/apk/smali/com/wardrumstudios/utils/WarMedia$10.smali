.class Lcom/wardrumstudios/utils/WarMedia$10;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$bfPause:Z


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;Z)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$10;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput-boolean p2, p0, Lcom/wardrumstudios/utils/WarMedia$10;->val$bfPause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$10;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v1, p0, Lcom/wardrumstudios/utils/WarMedia$10;->val$bfPause:Z

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->PauseMoviePlayerThread(Z)V

    .line 846
    return-void
.end method