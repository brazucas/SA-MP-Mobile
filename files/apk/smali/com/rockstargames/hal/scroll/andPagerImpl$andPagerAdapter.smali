.class Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "andPagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/scroll/andPagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "andPagerAdapter"
.end annotation


# instance fields
.field private addedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;


# direct methods
.method private constructor <init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->addedViews:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/scroll/andPagerImpl;Lcom/rockstargames/hal/scroll/andPagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockstargames/hal/scroll/andPagerImpl;
    .param p2, "x1"    # Lcom/rockstargames/hal/scroll/andPagerImpl$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 119
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$100(Lcom/rockstargames/hal/scroll/andPagerImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget v2, v2, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    if-eq v1, v2, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget v2, v2, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    invoke-static {v1, v2}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I

    .line 145
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 146
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 125
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 89
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 90
    .local v0, "index":I
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v2}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 98
    :goto_0
    return v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v2}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 98
    .local v1, "ret":Z
    :cond_1
    goto :goto_0
.end method
