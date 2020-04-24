.class public Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;
.super Lcom/rockstargames/hal/ContainerLayout;
.source "andPagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/scroll/andPagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FakeContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V
    .locals 1

    .prologue
    .line 30
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    .line 31
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I

    .line 43
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-virtual {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v1, v1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    if-eq v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v1, v1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I

    .line 57
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-virtual {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v1, v1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    if-eq v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v1, v1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
