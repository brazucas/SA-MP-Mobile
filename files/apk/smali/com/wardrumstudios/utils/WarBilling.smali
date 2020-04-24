.class public Lcom/wardrumstudios/utils/WarBilling;
.super Lcom/wardrumstudios/utils/WarBase;
.source "WarBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wardrumstudios/utils/WarBilling$SkuEntry;
    }
.end annotation


# static fields
.field private static final OS_Cached:I = 0x4

.field private static final OS_Cancelled:I = 0x2

.field private static final OS_Error:I = 0x5

.field private static final OS_Purchased:I = 0x0

.field private static final OS_Refunded:I = 0x3

.field private static final OS_Restored:I = 0x1

.field private static final REQUEST_CODE:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "OSWrapper"

.field private static final billLogging:Z


# instance fields
.field private mBillingKey:Ljava/lang/String;

.field mGotInventoryListener:Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;

.field private mHelper:Lcom/google/android/billing/IabHelper;

.field mPurchaseFinishedListener:Lcom/google/android/billing/IabHelper$OnIabPurchaseFinishedListener;

.field private mPurchasingIndex:I

.field private skus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wardrumstudios/utils/WarBilling$SkuEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarBase;-><init>()V

    .line 24
    const-string v0, "UNUSED"

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mBillingKey:Ljava/lang/String;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mPurchasingIndex:I

    .line 165
    new-instance v0, Lcom/wardrumstudios/utils/WarBilling$2;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarBilling$2;-><init>(Lcom/wardrumstudios/utils/WarBilling;)V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mGotInventoryListener:Lcom/google/android/billing/IabHelper$QueryInventoryFinishedListener;

    .line 241
    new-instance v0, Lcom/wardrumstudios/utils/WarBilling$3;

    invoke-direct {v0, p0}, Lcom/wardrumstudios/utils/WarBilling$3;-><init>(Lcom/wardrumstudios/utils/WarBilling;)V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mPurchaseFinishedListener:Lcom/google/android/billing/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method private GetSKU(Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 97
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private OutputLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "toLog"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarBilling;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wardrumstudios/utils/WarBilling;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarBilling;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wardrumstudios/utils/WarBilling;)Lcom/google/android/billing/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarBilling;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wardrumstudios/utils/WarBilling;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarBilling;

    .prologue
    .line 19
    iget v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mPurchasingIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/wardrumstudios/utils/WarBilling;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/wardrumstudios/utils/WarBilling;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->GetSKU(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public AddSKU(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;-><init>(Lcom/wardrumstudios/utils/WarBilling;Lcom/wardrumstudios/utils/WarBilling$1;)V

    .line 88
    .local v0, "newEntry":Lcom/wardrumstudios/utils/WarBilling$SkuEntry;
    iput-object p1, v0, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->id:Ljava/lang/String;

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    .line 90
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public InitBilling()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/wardrumstudios/utils/WarBilling;->getBillingKey()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarBilling;->changeConnection(Z)V

    .line 120
    const-string v2, "UNUSED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "No key provided by app."

    invoke-direct {p0, v2}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    .line 122
    const-string v2, "No key provided by app.********************************************"

    invoke-virtual {p0, v2}, Lcom/wardrumstudios/utils/WarBilling;->complain(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/wardrumstudios/utils/WarBilling;->changeConnection(Z)V

    .line 161
    :goto_0
    return v1

    .line 127
    :cond_0
    const-string v2, "Creating IAB helper"

    invoke-direct {p0, v2}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcom/google/android/billing/IabHelper;

    invoke-direct {v2, p0, v0}, Lcom/google/android/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    .line 129
    iget-object v2, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    const-string v3, "OSWrapper"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/billing/IabHelper;->enableDebugLogging(ZLjava/lang/String;)V

    .line 133
    const-string v1, "Starting setup."

    invoke-direct {p0, v1}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    new-instance v2, Lcom/wardrumstudios/utils/WarBilling$1;

    invoke-direct {v2, p0}, Lcom/wardrumstudios/utils/WarBilling$1;-><init>(Lcom/wardrumstudios/utils/WarBilling;)V

    invoke-virtual {v1, v2}, Lcom/google/android/billing/IabHelper;->startSetup(Lcom/google/android/billing/IabHelper$OnIabSetupFinishedListener;)V

    .line 161
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public LocalizedPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->GetSKU(Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-object v1, v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->priceFormat:Ljava/lang/String;

    .line 349
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public RequestPurchase(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 225
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarBilling;->GetSKU(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, "index":I
    iput v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mPurchasingIndex:I

    .line 229
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting purchase "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;

    iget-boolean v1, v1, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->purchased:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    .line 231
    iput-boolean v2, p0, Lcom/wardrumstudios/utils/WarBilling;->delayInputForStore:Z

    .line 232
    iget-object v1, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    const/16 v3, 0x2712

    iget-object v4, p0, Lcom/wardrumstudios/utils/WarBilling;->mPurchaseFinishedListener:Lcom/google/android/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v1, p0, p1, v3, v4}, Lcom/google/android/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/android/billing/IabHelper$OnIabPurchaseFinishedListener;)V

    move v1, v2

    .line 237
    :goto_0
    return v1

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not requesting purchase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public SetBillingKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarBilling;->mBillingKey:Ljava/lang/String;

    .line 357
    return-void
.end method

.method alert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v0, "OSWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public native changeConnection(Z)V
.end method

.method complain(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 372
    const-string v0, "OSWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarBilling;->alert(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method protected getBillingKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mBillingKey:Ljava/lang/String;

    return-object v0
.end method

.method public native notifyChange(Ljava/lang/String;I)V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/billing/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wardrumstudios/utils/WarBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "onActivityResult handled by IABUtil."

    invoke-direct {p0, v0}, Lcom/wardrumstudios/utils/WarBilling;->OutputLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->skus:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    invoke-virtual {v0}, Lcom/google/android/billing/IabHelper;->dispose()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wardrumstudios/utils/WarBilling;->mHelper:Lcom/google/android/billing/IabHelper;

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/wardrumstudios/utils/WarBase;->onDestroy()V

    .line 38
    return-void
.end method
