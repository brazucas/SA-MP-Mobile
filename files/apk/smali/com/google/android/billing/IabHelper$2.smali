.class Lcom/google/android/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/google/android/billing/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/google/android/billing/IabHelper$2;->this$0:Lcom/google/android/billing/IabHelper;

    iput-boolean p2, p0, Lcom/google/android/billing/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/google/android/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/billing/IabHelper$2;->val$listener:Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 523
    new-instance v3, Lcom/google/android/billing/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/google/android/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 524
    .local v3, "result":Lcom/google/android/billing/IabResult;
    const/4 v1, 0x0

    .line 526
    .local v1, "inv":Lcom/google/android/billing/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/billing/IabHelper$2;->this$0:Lcom/google/android/billing/IabHelper;

    iget-boolean v6, p0, Lcom/google/android/billing/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/google/android/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/google/android/billing/Inventory;
    :try_end_0
    .catch Lcom/google/android/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 532
    :goto_0
    iget-object v5, p0, Lcom/google/android/billing/IabHelper$2;->this$0:Lcom/google/android/billing/IabHelper;

    invoke-virtual {v5}, Lcom/google/android/billing/IabHelper;->flagEndAsync()V

    .line 534
    move-object v4, v3

    .line 535
    .local v4, "result_f":Lcom/google/android/billing/IabResult;
    move-object v2, v1

    .line 536
    .local v2, "inv_f":Lcom/google/android/billing/Inventory;
    iget-object v5, p0, Lcom/google/android/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/billing/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/google/android/billing/IabHelper$2$1;-><init>(Lcom/google/android/billing/IabHelper$2;Lcom/google/android/billing/IabResult;Lcom/google/android/billing/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void

    .line 528
    .end local v2    # "inv_f":Lcom/google/android/billing/Inventory;
    .end local v4    # "result_f":Lcom/google/android/billing/IabResult;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ex":Lcom/google/android/billing/IabException;
    invoke-virtual {v0}, Lcom/google/android/billing/IabException;->getResult()Lcom/google/android/billing/IabResult;

    move-result-object v3

    goto :goto_0
.end method
