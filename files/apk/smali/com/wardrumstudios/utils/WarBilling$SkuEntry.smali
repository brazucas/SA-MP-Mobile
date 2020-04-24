.class Lcom/wardrumstudios/utils/WarBilling$SkuEntry;
.super Ljava/lang/Object;
.source "WarBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkuEntry"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field priceFormat:Ljava/lang/String;

.field purchased:Z

.field final synthetic this$0:Lcom/wardrumstudios/utils/WarBilling;


# direct methods
.method private constructor <init>(Lcom/wardrumstudios/utils/WarBilling;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;->this$0:Lcom/wardrumstudios/utils/WarBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wardrumstudios/utils/WarBilling;Lcom/wardrumstudios/utils/WarBilling$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wardrumstudios/utils/WarBilling;
    .param p2, "x1"    # Lcom/wardrumstudios/utils/WarBilling$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/wardrumstudios/utils/WarBilling$SkuEntry;-><init>(Lcom/wardrumstudios/utils/WarBilling;)V

    return-void
.end method
