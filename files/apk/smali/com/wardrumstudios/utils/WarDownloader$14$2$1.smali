.class Lcom/wardrumstudios/utils/WarDownloader$14$2$1;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader$14$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/wardrumstudios/utils/WarDownloader$14$2;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader$14$2;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$14$2$1;->this$2:Lcom/wardrumstudios/utils/WarDownloader$14$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$14$2$1;->this$2:Lcom/wardrumstudios/utils/WarDownloader$14$2;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$14$2;->this$1:Lcom/wardrumstudios/utils/WarDownloader$14;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarDownloader;->ClearSplash()V

    .line 1300
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarDownloader$14$2$1;->this$2:Lcom/wardrumstudios/utils/WarDownloader$14$2;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$14$2;->this$1:Lcom/wardrumstudios/utils/WarDownloader$14;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader$14;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->DoResumeEvent()V

    .line 1301
    return-void
.end method
