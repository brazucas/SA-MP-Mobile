.class public Lcom/rockstargames/hal/andDropDownList;
.super Lcom/rockstargames/hal/andView;
.source "andDropDownList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;,
        Lcom/rockstargames/hal/andDropDownList$listData;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field listElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/andDropDownList$listData;",
            ">;"
        }
    .end annotation
.end field

.field selectedItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 33
    const/4 v1, -0x1

    iput v1, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    .line 38
    new-instance v0, Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    .line 39
    .local v0, "l":Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andDropDownList;->setView(Landroid/view/View;)V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    .line 43
    sget v1, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    .line 44
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andDropDownList;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/rockstargames/hal/andDropDownList;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDropDownList;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public AddListItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/rockstargames/hal/andDropDownList$listData;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDropDownList$listData;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    .line 81
    .local v0, "element":Lcom/rockstargames/hal/andDropDownList$listData;
    iput-object p1, v0, Lcom/rockstargames/hal/andDropDownList$listData;->label:Ljava/lang/String;

    .line 82
    iput-object p2, v0, Lcom/rockstargames/hal/andDropDownList$listData;->data:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public BuildList()V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->GetSpinner()Landroid/widget/Spinner;

    move-result-object v1

    .line 90
    .local v1, "dropDown":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    iget-object v4, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    .local v0, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/rockstargames/hal/andDropDownList$listData;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    new-instance v2, Lcom/rockstargames/hal/andDropDownList$1;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/andDropDownList$1;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 108
    return-void
.end method

.method public GetSelectedItemData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    iget v1, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    iget v2, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andDropDownList$listData;

    iget-object v0, v1, Lcom/rockstargames/hal/andDropDownList$listData;->data:Ljava/lang/String;

    .line 115
    .local v0, "data":Ljava/lang/String;
    const-string v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected GetSpinner()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/rockstargames/hal/andDropDownList;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    sget v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    .line 49
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 50
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public setBounds(FFFFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "rightPadding"    # F
    .param p6, "bottomPadding"    # F

    .prologue
    .line 70
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 71
    return-void
.end method
