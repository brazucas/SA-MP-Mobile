.class public Lcom/rockstargames/hal/andColourPicker;
.super Lcom/rockstargames/hal/andView;
.source "andColourPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;,
        Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;,
        Lcom/rockstargames/hal/andColourPicker$SelectorGroup;,
        Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field private FittedString:Ljava/lang/String;

.field private LockedString:Ljava/lang/String;

.field private NoneString:Ljava/lang/String;

.field private colourIndex:I

.field private dataSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/andColourPicker$SelectorGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isMultiplayer:Z

.field private picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

.field private priceMod:F

.field private selectedPlatform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andColourPicker;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/rockstargames/hal/andColourPicker;->selectedPlatform:I

    .line 35
    iput-boolean v2, p0, Lcom/rockstargames/hal/andColourPicker;->isMultiplayer:Z

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/rockstargames/hal/andColourPicker;->priceMod:F

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    .line 58
    iput v2, p0, Lcom/rockstargames/hal/andColourPicker;->colourIndex:I

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    .line 60
    const-string v1, "LOCKED"

    iput-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->LockedString:Ljava/lang/String;

    .line 61
    const-string v1, "FITTED"

    iput-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->FittedString:Ljava/lang/String;

    .line 62
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->NoneString:Ljava/lang/String;

    .line 67
    new-instance v1, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    iget-object v2, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;-><init>(Lcom/rockstargames/hal/andColourPicker;Lcom/rockstargames/hal/andColourPicker;Ljava/util/List;)V

    iput-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    .line 69
    new-instance v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;-><init>(Lcom/rockstargames/hal/andColourPicker;Landroid/app/Activity;Ljava/util/List;)V

    .line 70
    .local v0, "adapter":Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;
    iget-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    invoke-virtual {v1, v0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 73
    iget-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    new-instance v2, Lcom/rockstargames/hal/andColourPicker$1;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/andColourPicker$1;-><init>(Lcom/rockstargames/hal/andColourPicker;)V

    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    new-instance v2, Lcom/rockstargames/hal/andColourPicker$2;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/andColourPicker$2;-><init>(Lcom/rockstargames/hal/andColourPicker;)V

    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/andColourPicker;->setView(Landroid/view/View;)V

    .line 99
    sget v1, Lcom/rockstargames/hal/andColourPicker;->staticCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/rockstargames/hal/andColourPicker;->staticCount:I

    .line 100
    return-void
.end method

.method static synthetic access$200(Lcom/rockstargames/hal/andColourPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andColourPicker;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/rockstargames/hal/andColourPicker;->isMultiplayer:Z

    return v0
.end method

.method static synthetic access$300(Lcom/rockstargames/hal/andColourPicker;)F
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andColourPicker;

    .prologue
    .line 31
    iget v0, p0, Lcom/rockstargames/hal/andColourPicker;->priceMod:F

    return v0
.end method

.method static synthetic access$400(Lcom/rockstargames/hal/andColourPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andColourPicker;

    .prologue
    .line 31
    iget v0, p0, Lcom/rockstargames/hal/andColourPicker;->selectedPlatform:I

    return v0
.end method

.method static synthetic access$500(Lcom/rockstargames/hal/andColourPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andColourPicker;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker;->FittedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/rockstargames/hal/andColourPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andColourPicker;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker;->LockedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/rockstargames/hal/andColourPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andColourPicker;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker;->NoneString:Ljava/lang/String;

    return-object v0
.end method

.method public static createView(I)Lcom/rockstargames/hal/andColourPicker;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/rockstargames/hal/andColourPicker;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andColourPicker;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public AddGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayString"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;-><init>(Lcom/rockstargames/hal/andColourPicker;Lcom/rockstargames/hal/andColourPicker$1;)V

    .line 124
    .local v0, "newGroup":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    iput-object p1, v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->GroupName:Ljava/lang/String;

    .line 125
    iput-object p2, v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->DisplayName:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public AddItem(Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "cost"    # I
    .param p4, "costMP"    # I
    .param p5, "r"    # I
    .param p6, "g"    # I
    .param p7, "b"    # I
    .param p8, "a"    # I

    .prologue
    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 135
    .local v0, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    iget-object v3, v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->GroupName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    new-instance v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/rockstargames/hal/andColourPicker$SelectorItem;-><init>(Lcom/rockstargames/hal/andColourPicker;Lcom/rockstargames/hal/andColourPicker$1;)V

    .line 138
    .local v2, "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    iput-object p2, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Name:Ljava/lang/String;

    .line 139
    iput p3, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Cost:I

    .line 140
    iput p4, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->CostMP:I

    .line 141
    invoke-static {p8, p5, p6, p7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Colour:I

    .line 142
    iget v3, p0, Lcom/rockstargames/hal/andColourPicker;->colourIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/rockstargames/hal/andColourPicker;->colourIndex:I

    iput v3, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Index:I

    .line 143
    invoke-virtual {v0, v2}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v0    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    .end local v2    # "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :cond_0
    return-void

    .line 132
    .restart local v0    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public ResetAllToUnLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 168
    .local v0, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    iput-boolean v5, v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->Locked:Z

    .line 169
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v0}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 171
    invoke-virtual {v0, v3}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 172
    .local v2, "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    iput-boolean v5, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Locked:Z

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    .end local v2    # "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method public SetFittedItem(II)V
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "colourIndex"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->SetFittedItem(II)V

    .line 153
    return-void
.end method

.method public SetItemToLocked(I)V
    .locals 5
    .param p1, "itemIndex"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "g":I
    move v2, p1

    .line 181
    .local v2, "i":I
    iget-object v4, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 182
    .local v1, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    :goto_0
    invoke-virtual {v1}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 184
    invoke-virtual {v1}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->size()I

    move-result v4

    sub-int/2addr v2, v4

    .line 185
    iget-object v4, p0, Lcom/rockstargames/hal/andColourPicker;->dataSource:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    check-cast v1, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .restart local v1    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 188
    .local v3, "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Locked:Z

    .line 189
    return-void
.end method

.method public SetLocalisedStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ls"    # Ljava/lang/String;
    .param p2, "fs"    # Ljava/lang/String;
    .param p3, "ns"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/rockstargames/hal/andColourPicker;->LockedString:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/rockstargames/hal/andColourPicker;->FittedString:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/rockstargames/hal/andColourPicker;->NoneString:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public SetSelectedItem(IIZIF)V
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "colourIndex"    # I
    .param p3, "isMP"    # Z
    .param p4, "platform"    # I
    .param p5, "priceMultiplier"    # F

    .prologue
    .line 156
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker;->picker:Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->SetSelectedItem(II)V

    .line 158
    iput-boolean p3, p0, Lcom/rockstargames/hal/andColourPicker;->isMultiplayer:Z

    .line 159
    iput p4, p0, Lcom/rockstargames/hal/andColourPicker;->selectedPlatform:I

    .line 160
    iput p5, p0, Lcom/rockstargames/hal/andColourPicker;->priceMod:F

    .line 161
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    sget v0, Lcom/rockstargames/hal/andColourPicker;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andColourPicker;->staticCount:I

    .line 105
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 106
    return-void
.end method

.method public native onChildClick(IIIIII)V
.end method

.method public native onTryLocked(I)V
.end method
