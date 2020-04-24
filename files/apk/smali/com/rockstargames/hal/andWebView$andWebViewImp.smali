.class public Lcom/rockstargames/hal/andWebView$andWebViewImp;
.super Landroid/webkit/WebView;
.source "andWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andWebViewImp"
.end annotation


# instance fields
.field parent:Lcom/rockstargames/hal/andWebView;

.field final synthetic this$0:Lcom/rockstargames/hal/andWebView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andWebView;Lcom/rockstargames/hal/andWebView;)V
    .locals 2
    .param p2, "p"    # Lcom/rockstargames/hal/andWebView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 70
    iput-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->this$0:Lcom/rockstargames/hal/andWebView;

    .line 71
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    .line 72
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setId(I)V

    .line 73
    iput-object p2, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    .line 75
    new-instance v0, Lcom/rockstargames/hal/andWebView$andWebViewImp$1;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andWebView$andWebViewImp$1;-><init>(Lcom/rockstargames/hal/andWebView$andWebViewImp;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 110
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setInitialScale(I)V

    .line 111
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 112
    return-void
.end method


# virtual methods
.method public canNavigateBack()Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canNavigateForward()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public navigateBack()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goBack()V

    .line 132
    return-void
.end method

.method public navigateForward()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goForward()V

    .line 142
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->loadUrl(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->reload()V

    .line 152
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->url:Ljava/lang/String;

    .line 117
    return-void
.end method
