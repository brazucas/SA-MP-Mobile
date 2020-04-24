.class Lcom/wardrumstudios/utils/WarMedia$19;
.super Landroid/os/AsyncTask;
.source "WarMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->validateXAPKZipFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;)V
    .locals 0

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 2308
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v5, Lcom/wardrumstudios/utils/WarMedia;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .local v0, "arr$":[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 2309
    .local v4, "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-boolean v6, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    iget v7, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileVersion:I

    invoke-static {v5, v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v1

    .line 2310
    .local v1, "fileName":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Verify "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2311
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-wide v6, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileSize:J

    invoke-static {v5, v1, v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2313
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2321
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :goto_1
    return-object v5

    .line 2314
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v4    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :cond_0
    iget-boolean v5, v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    if-eqz v5, :cond_1

    .line 2315
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v6, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wardrumstudios/utils/WarMedia;->expansionFileName:Ljava/lang/String;

    .line 2308
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2317
    :cond_1
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v6, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v6, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wardrumstudios/utils/WarMedia;->patchFileName:Ljava/lang/String;

    goto :goto_2

    .line 2321
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "xf":Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
    :cond_2
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2288
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia$19;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/16 v3, 0x8

    .line 2332
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2334
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1600(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2335
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$300(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2336
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->downloadView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2337
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$2000(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2339
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$2100(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/wardrumstudios/utils/WarMedia;->setContentView(Landroid/view/View;)V

    .line 2345
    :goto_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->AfterDownloadFunction()V

    .line 2369
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2370
    return-void

    .line 2342
    :cond_0
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v1}, Lcom/wardrumstudios/utils/WarMedia;->access$2200(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 2358
    :cond_1
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1600(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2359
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$300(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2360
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1700(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "text_validation_failed"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2361
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1900(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$19$2;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarMedia$19$2;-><init>(Lcom/wardrumstudios/utils/WarMedia$19;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2367
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1900(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2288
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia$19;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1600(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$300(Lcom/wardrumstudios/utils/WarMedia;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1700(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "text_verifying_download"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2296
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1900(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/wardrumstudios/utils/WarMedia$19$1;

    invoke-direct {v1, p0}, Lcom/wardrumstudios/utils/WarMedia$19$1;-><init>(Lcom/wardrumstudios/utils/WarMedia$19;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2302
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-static {v0}, Lcom/wardrumstudios/utils/WarMedia;->access$1900(Lcom/wardrumstudios/utils/WarMedia;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v1}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "text_button_cancel_verify"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2303
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2304
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 2
    .param p1, "values"    # [Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$19;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/wardrumstudios/utils/WarMedia;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 2327
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2328
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2288
    check-cast p1, [Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarMedia$19;->onProgressUpdate([Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    return-void
.end method
