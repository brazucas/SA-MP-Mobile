.class Lcom/wardrumstudios/utils/WarDownloader$3;
.super Ljava/lang/Object;
.source "WarDownloader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarDownloader;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarDownloader$3;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "i"    # Landroid/content/DialogInterface;
    .param p2, "a"    # I

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$3;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    const-string v2, "VerifyCheckVersion"

    const-string v3, "Yes"

    invoke-virtual {v1, v2, v3}, Lcom/wardrumstudios/utils/WarMedia;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/wardrumstudios/utils/WarDownloader$3$1;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarDownloader$3$1;-><init>(Lcom/wardrumstudios/utils/WarDownloader$3;)V

    .line 212
    .local v0, "me":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarDownloader$3;->this$0:Lcom/wardrumstudios/utils/WarDownloader;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarDownloader;->myWarMedia:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v1, v0}, Lcom/wardrumstudios/utils/WarMedia;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method
