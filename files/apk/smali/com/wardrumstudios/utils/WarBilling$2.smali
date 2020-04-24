.class Lcom/wardrumstudios/utils/WarBilling$2;
.super Ljava/lang/Object;
.source "WarBilling.java"

# interfaces
.implements Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;


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
    .line 165
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/google/android/billing/IabResult;Lcom/google/android/billing/Inventory;)V
    .locals 10
    .param p1, "result"    # Lcom/google/android/billing/IabResult;
    .param p2, "inventory"    # Lcom/google/android/billing/Inventory;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 167
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v6, "Query inventory finished."

    invoke-static {v5, v6}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/google/android/billing/IabResult;->isFailure()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to query inventory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wardrumstudios/utils/WarBilling;->complain(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/google/android/billing/IabResult;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "prices"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v4, "toCheck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 175
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking sku without price "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$300(Lcom/wardrumstudios/utils/WarBilling;)Lcom/google/android/billing/IabHelper;

    move-result-object v5

    invoke-virtual {v5, v8, v4, p0}, Lcom/google/android/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 217
    .end local v3    # "i":I
    .end local v4    # "toCheck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 182
    :cond_1
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-virtual {v5, v8}, Lcom/wardrumstudios/utils/WarBilling;->changeConnection(Z)V

    goto :goto_1

    .line 187
    :cond_2
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query successful. Inventory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "foundDetails":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 191
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/google/android/billing/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v2

    .line 192
    .local v2, "hasPurchased":Z
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/google/android/billing/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/google/android/billing/SkuDetails;

    move-result-object v0

    .line 194
    .local v0, "details":Lcom/google/android/billing/SkuDetails;
    if-eqz v0, :cond_4

    .line 195
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SKU \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' : \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/billing/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/billing/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 196
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    invoke-virtual {v0}, Lcom/google/android/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->priceFormat:Ljava/lang/String;

    .line 197
    const/4 v1, 0x1

    .line 204
    :goto_3
    if-eqz v2, :cond_3

    .line 205
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iput-boolean v9, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    .line 206
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v6, v5, v7}, Lcom/wardrumstudios/utils/WarBilling;->notifyChange(Ljava/lang/String;I)V

    .line 190
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 199
    :cond_4
    iget-object v6, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SKU \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' : no details : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v5}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    const-string v6, ""

    iput-object v6, v5, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->priceFormat:Ljava/lang/String;

    goto :goto_3

    .line 210
    .end local v0    # "details":Lcom/google/android/billing/SkuDetails;
    .end local v2    # "hasPurchased":Z
    :cond_5
    if-nez v1, :cond_6

    .line 212
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-virtual {v5, v8}, Lcom/wardrumstudios/utils/WarBilling;->changeConnection(Z)V

    goto/16 :goto_1

    .line 215
    :cond_6
    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$2;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-virtual {v5, v9}, Lcom/wardrumstudios/utils/WarBilling;->changeConnection(Z)V

    goto/16 :goto_1
.end method
