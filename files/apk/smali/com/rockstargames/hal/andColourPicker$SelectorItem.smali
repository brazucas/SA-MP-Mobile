.class Lcom/rockstargames/hal/andColourPicker$SelectorItem;
.super Ljava/lang/Object;
.source "andColourPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andColourPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectorItem"
.end annotation


# instance fields
.field public Colour:I

.field public Cost:I

.field public CostMP:I

.field public Fitted:Z

.field public Index:I

.field public Locked:Z

.field public Name:Ljava/lang/String;

.field public Selected:Z

.field final synthetic this$0:Lcom/rockstargames/hal/andColourPicker;


# direct methods
.method private constructor <init>(Lcom/rockstargames/hal/andColourPicker;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object p1, p0, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->this$0:Lcom/rockstargames/hal/andColourPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Locked:Z

    .line 46
    iput-boolean v0, p0, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Selected:Z

    .line 47
    iput-boolean v0, p0, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Fitted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/andColourPicker;Lcom/rockstargames/hal/andColourPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockstargames/hal/andColourPicker;
    .param p2, "x1"    # Lcom/rockstargames/hal/andColourPicker$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andColourPicker$SelectorItem;-><init>(Lcom/rockstargames/hal/andColourPicker;)V

    return-void
.end method