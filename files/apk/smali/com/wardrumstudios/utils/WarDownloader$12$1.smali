.class Lcom/wardrumstudios/utils/WarDownloader$12$1;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarDownloader$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarDownloader$12;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader$12;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$12$1;->this$1:Lcom/wardrumstudios/utils/WarDownloader$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "i"    # Landroid/content/DialogInterface;
    .param p2, "a"    # I

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$12$1;->this$1:Lcom/wardrumstudios/utils/WarDownloader$12;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$12$1;->this$1:Lcom/wardrumstudios/utils/WarDownloader$12;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader;->currentDownloadingFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1104
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$12$1;->this$1:Lcom/wardrumstudios/utils/WarDownloader$12;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader$12;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 1105
    return-void
.end method
