.class public Lcom/rockstargames/hal/andWebView;
.super Lcom/rockstargames/hal/andView;
.source "andWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andWebView$andWebViewImp;
    }
.end annotation


# static fields
.field static staticCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 15
    new-instance v0, Lcom/rockstargames/hal/andWebView$andWebViewImp;

    invoke-direct {v0, p0, p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;-><init>(Lcom/rockstargames/hal/andWebView;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andWebView;->setView(Landroid/view/View;)V

    .line 16
    sget v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    .line 17
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andWebView;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 57
    new-instance v0, Lcom/rockstargames/hal/andWebView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andWebView;-><init>(I)V

    return-object v0
.end method

.method private getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andWebView$andWebViewImp;

    return-object v0
.end method


# virtual methods
.method public canNavigateBack()Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canNavigateForward()Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoForward()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    sget v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    .line 22
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 23
    return-void
.end method

.method public navigateBack()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goBack()V

    .line 32
    return-void
.end method

.method public navigateForward()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goForward()V

    .line 42
    return-void
.end method

.method public native onLoaded(I)V
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->reload()V

    .line 52
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setUrl(Ljava/lang/String;)V

    .line 28
    return-void
.end method
