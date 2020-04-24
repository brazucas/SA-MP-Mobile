.class Lcom/rockstargames/hal/andColourPicker$2;
.super Ljava/lang/Object;
.source "andColourPicker.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andColourPicker;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andColourPicker;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andColourPicker;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/rockstargames/hal/andColourPicker$2;->this$0:Lcom/rockstargames/hal/andColourPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 92
    check-cast p1, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    .end local p1    # "parent":Landroid/widget/ExpandableListView;
    invoke-virtual {p1, p3, p4}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->onChildClick(II)V

    .line 94
    const/4 v0, 0x0

    return v0
.end method
