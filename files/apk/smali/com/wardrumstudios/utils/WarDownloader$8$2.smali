.class Lcom/wardrumstudios/utils/WarDownloader$8$2;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarDownloader$8;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader$8;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$8$2;->this$1:Lcom/wardrumstudios/utils/WarDownloader$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "i"    # Landroid/content/DialogInterface;
    .param p2, "a"    # I

    .prologue
    .line 378
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 379
    new-instance v0, Lcom/wardrumstudios/utils/WarDownloader$8$2$1;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarDownloader$8$2$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader$8$2;)V

    .line 384
    .local v0, "me":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method
