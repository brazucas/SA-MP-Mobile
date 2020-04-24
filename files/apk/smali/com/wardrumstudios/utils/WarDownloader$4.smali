.class Lcom/wardrumstudios/utils/WarDownloader$4;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader;->ShowEULA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarDownloader;

.field final synthetic val$alert:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$4;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iput-object p2, p0, Lcom/wardrumstudios/utils/WarDownloader$4;->val$alert:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$4;->val$alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 227
    .local v0, "al":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 228
    return-void
.end method
