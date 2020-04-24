.class Lcom/wardrumstudios/utils/WarMedia$16$2;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$16;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$16;)V
    .locals 0

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1678
    :goto_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v0, v0, Lcom/wardrumstudios/utils/WarMedia;->movieViewIsActive:Z

    if-nez v0, :cond_0

    .line 1679
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wait for create"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->mSleep(J)V

    goto :goto_0

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->val$length:I

    if-lez v0, :cond_1

    .line 1683
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia$16;->val$filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v2, v2, Lcom/wardrumstudios/utils/WarMedia$16;->val$volume:F

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v3, v3, Lcom/wardrumstudios/utils/WarMedia$16;->val$offset:I

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v4, v4, Lcom/wardrumstudios/utils/WarMedia$16;->val$length:I

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    invoke-virtual/range {v0 .. v5}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovieInFile(Ljava/lang/String;FIILandroid/view/SurfaceHolder;)V

    .line 1687
    :goto_1
    return-void

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarMedia$16;->val$filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget v2, v2, Lcom/wardrumstudios/utils/WarMedia$16;->val$volume:F

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarMedia$16$2;->this$1:Lcom/wardrumstudios/utils/WarMedia$16;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia$16;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarMedia;->movieWindowHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->PlayMovie(Ljava/lang/String;FLandroid/view/SurfaceHolder;)V

    goto :goto_1
.end method
