.class Lcom/wardrumstudios/utils/WarMedia$24;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->ClearSplashScreen()V
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
    .line 2633
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$24;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$24;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$24;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2637
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$24;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    .line 2638
    return-void
.end method
