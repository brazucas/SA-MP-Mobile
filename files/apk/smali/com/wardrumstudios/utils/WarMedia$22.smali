.class Lcom/wardrumstudios/utils/WarMedia$22;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->MovieSetText(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 2562
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$22;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2564
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MovieSetText create surface"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2565
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$22;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->movieTextSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2566
    return-void
.end method
