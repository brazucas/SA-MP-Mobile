.class Lcom/wardrumstudios/utils/WarMedia$13;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->SetVidView()V
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
    .line 1417
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$13;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1419
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$13;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$13;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$700(Lcom/wardrumstudios/utils/WarMedia;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$13;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$800(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$13;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->customMovieSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method
