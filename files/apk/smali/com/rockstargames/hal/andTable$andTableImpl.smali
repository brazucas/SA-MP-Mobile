.class public Lcom/rockstargames/hal/andTable$andTableImpl;
.super Landroid/widget/ListView;
.source "andTable.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andTableImpl"
.end annotation


# instance fields
.field private nativeToHalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/rockstargames/hal/andView;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rockstargames/hal/andTable;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andTable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 57
    iput-object p1, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->this$0:Lcom/rockstargames/hal/andTable;

    .line 58
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTable$andTableImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/rockstargames/hal/andTable$andTableImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->this$0:Lcom/rockstargames/hal/andTable;

    iget v0, v0, Lcom/rockstargames/hal/andTable;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "recycle":Lcom/rockstargames/hal/andView;
    if-eqz p2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "recycle":Lcom/rockstargames/hal/andView;
    check-cast v0, Lcom/rockstargames/hal/andView;

    .line 118
    .restart local v0    # "recycle":Lcom/rockstargames/hal/andView;
    :cond_0
    iget-object v3, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->this$0:Lcom/rockstargames/hal/andTable;

    iget-object v2, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->this$0:Lcom/rockstargames/hal/andTable;

    iget v4, v2, Lcom/rockstargames/hal/andTable;->handle:I

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-static {v3, v4, p1, v2}, Lcom/rockstargames/hal/andTable;->access$000(Lcom/rockstargames/hal/andTable;III)Lcom/rockstargames/hal/andView;

    move-result-object v1

    .line 120
    .local v1, "returnedCell":Lcom/rockstargames/hal/andView;
    if-nez v1, :cond_1

    .line 122
    const-string v2, "andTable"

    const-string v3, "*** *** Returned cell was null! *** ***"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    if-eqz v0, :cond_3

    if-eq v1, v0, :cond_3

    .line 127
    iget-object v2, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_1
    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 118
    .end local v1    # "returnedCell":Lcom/rockstargames/hal/andView;
    :cond_2
    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v2

    goto :goto_0

    .line 129
    .restart local v1    # "returnedCell":Lcom/rockstargames/hal/andView;
    :cond_3
    iget-object v2, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTable$andTableImpl;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public notifyObservers()V
    .locals 4

    .prologue
    .line 170
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 171
    .local v0, "dso":Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 172
    .end local v0    # "dso":Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method
