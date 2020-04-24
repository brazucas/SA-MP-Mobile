.class Lcom/wardrumstudios/utils/WarBilling$1;
.super Ljava/lang/Object;
.source "WarBilling.java"

# interfaces
.implements Lcom/google/android/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarBilling;->InitBilling()Z
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
    .line 134
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/google/android/billing/IabResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/billing/IabResult;

    .prologue
    .line 136
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v4, "Setup finished."

    invoke-static {v3, v4}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/google/android/billing/IabResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem setting up in-app billing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wardrumstudios/utils/WarBilling;->complain(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v2, "toCheck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 147
    iget-object v4, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking sku "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarBilling;->access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v3, v3, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    const-string v4, "Setup successful. Querying inventory."

    invoke-static {v3, v4}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-static {v3}, Lcom/wardrumstudios/utils/WarBilling;->access$300(Lcom/wardrumstudios/utils/WarBilling;)Lcom/google/android/billing/IabHelper;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    iget-object v5, v5, Lcom/wardrumstudios/utils/WarBilling;->mGotInventoryListener:Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/wardrumstudios/utils/WarBilling$1;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inventory error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wardrumstudios/utils/WarBilling;->access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V

    goto :goto_0
.end method
