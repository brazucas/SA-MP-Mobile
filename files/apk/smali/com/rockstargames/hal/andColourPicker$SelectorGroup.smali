.class Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
.super Ljava/util/ArrayList;
.source "andColourPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andColourPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectorGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/rockstargames/hal/andColourPicker$SelectorItem;",
        ">;"
    }
.end annotation


# instance fields
.field public DisplayName:Ljava/lang/String;

.field public GroupName:Ljava/lang/String;

.field public Locked:Z

.field final synthetic this$0:Lcom/rockstargames/hal/andColourPicker;


# direct methods
.method private constructor <init>(Lcom/rockstargames/hal/andColourPicker;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->this$0:Lcom/rockstargames/hal/andColourPicker;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->Locked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/andColourPicker;Lcom/rockstargames/hal/andColourPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockstargames/hal/andColourPicker;
    .param p2, "x1"    # Lcom/rockstargames/hal/andColourPicker$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;-><init>(Lcom/rockstargames/hal/andColourPicker;)V

    return-void
.end method
