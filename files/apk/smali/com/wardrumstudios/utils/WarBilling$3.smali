.class Lcom/wardrumstudios/utils/WarBilling$3;
.super Ljava/lang/Object;
.source "WarBilling.java"

# interfaces
.implements Lcom/google/android/billing/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarBilling;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarBilling;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/google/android/billing/IabResult;Lcom/google/android/billing/Purchase;)V
    .locals 10
    .param p1, "result"    # Lcom/google/android/billing/IabResult;
    .param p2, "purchase"    # Lcom/google/android/billing/Purchase;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, -0x1

    .line 243
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purchase finished: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$400(Lcom/wardrumstudios/utils/WarBilling;)I

    move-result v1

    .line 248
    .local v1, "skuIndex":I
    if-eqz p2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-virtual {p2}, Lcom/google/android/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$500(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)I

    move-result v1

    .line 250
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 251
    :cond_0
    const-string v2, "OSWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error skuIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/billing/IabResult;->getResponse()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 325
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Unknown response"

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 329
    if-eq v1, v5, :cond_1

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    .line 331
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-virtual {p2}, Lcom/google/android/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown response Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/billing/IabResult;->getResponse()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v0    # "ex":Ljava/lang/Exception;
    :sswitch_0
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Purchase successful."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 260
    if-eq v1, v5, :cond_1

    .line 261
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iput-boolean v9, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    .line 262
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v7}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto :goto_0

    .line 267
    :sswitch_1
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Purchase cancelled."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 269
    if-eq v1, v5, :cond_1

    .line 270
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iput-boolean v7, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    .line 271
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 275
    :sswitch_2
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Billing not available."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 279
    if-eq v1, v5, :cond_1

    .line 280
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 284
    :sswitch_3
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Item not available."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 288
    if-eq v1, v5, :cond_1

    .line 289
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 294
    :sswitch_4
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Dev error."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 296
    if-eq v1, v5, :cond_1

    .line 297
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 301
    :sswitch_5
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "IAP Error."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 303
    if-eq v1, v5, :cond_1

    .line 304
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 308
    :sswitch_6
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Already owned."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 310
    if-eq v1, v5, :cond_1

    .line 311
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iput-boolean v9, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    .line 312
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 316
    :sswitch_7
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v3, "Not wtf."

    invoke-static {v2, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 318
    if-eq v1, v5, :cond_1

    .line 319
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iput-boolean v7, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    .line 320
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling$3;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v2}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v2, v2, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ee -> :sswitch_4
        -0x3ed -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
    .end sparse-switch
.end method
