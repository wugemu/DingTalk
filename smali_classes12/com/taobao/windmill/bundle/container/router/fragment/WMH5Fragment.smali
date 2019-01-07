.class public Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;
.super Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
.source "WMH5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$c;,
        Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$a;,
        Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$b;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

.field private e:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field private f:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 49
    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->e:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 50
    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 51
    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->g:Ljava/lang/String;

    .line 369
    return-void
.end method

.method private a(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V
    .locals 2
    .param p1, "client"    # Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 127
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 132
    :cond_0
    return-void
.end method

.method private a(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V
    .locals 2
    .param p1, "webClient"    # Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->e:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 117
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->e:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 122
    :cond_0
    return-void
.end method

.method private f()Landroid/taobao/windvane/extra/uc/WVUCWebView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 150
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v2, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 152
    .local v0, "lActivity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_0

    .line 153
    const/4 v2, 0x0

    .line 170
    .end local v0    # "lActivity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    return-object v2

    .line 156
    .restart local v0    # "lActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_0
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    check-cast v0, Landroid/content/Context;

    .end local v0    # "lActivity":Landroid/support/v4/app/FragmentActivity;
    invoke-direct {v2, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 157
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->e:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-direct {p0, v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V

    .line 158
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-direct {p0, v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V

    .line 159
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 160
    .local v1, "param":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v2, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 164
    :cond_1
    new-instance v2, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$c;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$c;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;Landroid/content/Context;)V

    new-instance v3, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;-><init>()V

    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 170
    .end local v1    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljqe;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->b()V

    .line 146
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reload()V

    .line 147
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->goBack()V

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Ljqy;->a()I

    move-result v0

    iput v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->i:I

    .line 60
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->g:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    iget-boolean v0, v0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    iput-boolean v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->j:Z

    .line 64
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 198
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->h:Landroid/view/View;

    .line 202
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->h:Landroid/view/View;

    const-string/jumbo v4, "#FE5A00"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->h:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 204
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    .line 205
    invoke-static {v5}, Ljqy;->a(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 206
    .local v0, "lineParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->h:Landroid/view/View;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->f()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v2

    .line 209
    .local v2, "webView":Landroid/view/View;
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->g:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d()Ljqd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d()Ljqd;

    move-result-object v3

    invoke-interface {v3}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d()Ljqd;

    move-result-object v3

    invoke-interface {v3}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->onRenderSuccess()V

    .line 221
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    return-object v1

    .line 218
    :cond_1
    sget-object v3, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->c:Ljava/lang/String;

    const-string/jumbo v4, "image urls is null"

    invoke-static {v3, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->removeAllViews()V

    .line 70
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroy()V

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 79
    :cond_1
    :try_start_0
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "var2":Ljava/lang/Exception;
    sget-object v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onDetach()V

    .line 88
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onHiddenChanged(Z)V

    .line 234
    if-nez p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a:Ljqd;

    invoke-static {p0, v0}, Ljre;->a(Landroid/support/v4/app/Fragment;Ljqd;)V

    .line 237
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a:Ljqd;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->j:Z

    invoke-static {v0, v1, v2, v3}, Ljre;->a(Landroid/app/Activity;Ljqd;Ljava/lang/String;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onLowMemory()V

    .line 92
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onPause()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onPause()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->d:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onResume()V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a:Ljqd;

    invoke-static {p0, v0}, Ljre;->a(Landroid/support/v4/app/Fragment;Ljqd;)V

    .line 110
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a:Ljqd;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->j:Z

    invoke-static {v0, v1, v2, v3}, Ljre;->a(Landroid/app/Activity;Ljqd;Ljava/lang/String;Z)V

    .line 112
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 192
    new-instance v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$a;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;B)V

    invoke-direct {p0, v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V

    .line 193
    new-instance v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$b;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$b;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;->a(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V

    .line 194
    return-void
.end method
