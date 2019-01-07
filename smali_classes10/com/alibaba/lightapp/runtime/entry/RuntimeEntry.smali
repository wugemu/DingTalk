.class public Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;
.super Ljava/lang/Object;
.source "RuntimeEntry.java"

# interfaces
.implements Lhdf;


# instance fields
.field public a:Lhdf;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

.field private e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

.field private f:Lhdf$a;

.field private g:Lhdf$b;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v1, 0x5

    iput v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->i:I

    .line 48
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b:Landroid/content/Context;

    .line 50
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->c:Landroid/widget/FrameLayout;

    .line 51
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    if-nez v0, :cond_2

    .line 165
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    .line 167
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->f:Lhdf$a;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->f:Lhdf$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->setClient(Lhdf$a;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->g:Lhdf$b;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->g:Lhdf$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->setOnPageStatusCheckListener(Lhdf$b;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    new-instance v1, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$1;-><init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    new-instance v1, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;-><init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)V

    sget-object v2, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a:Ljava/lang/String;

    .line 4063
    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v3, :cond_2

    .line 4065
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;Ljava/lang/String;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Lhdf;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "forceWebView"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    .line 140
    .local v0, "previous":Lhdf;
    if-nez p2, :cond_7

    invoke-static {p1}, Lhgy;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    if-eqz v1, :cond_0

    .line 3158
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->handleDestroy()V

    .line 3159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    .line 3237
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->i:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->i:I

    if-nez v1, :cond_4

    .line 3239
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v1, :cond_3

    .line 3240
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->destroy()V

    .line 3242
    :cond_3
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .line 3243
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    new-instance v2, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$3;-><init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setCallback(Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;)V

    .line 3250
    const/4 v1, 0x5

    iput v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->i:I

    .line 3253
    :cond_4
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-nez v1, :cond_5

    .line 3254
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .line 3255
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    new-instance v2, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$4;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$4;-><init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setCallback(Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;)V

    .line 3263
    :cond_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->e:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .line 142
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eq v0, v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 150
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->c:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v2}, Lhdf;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    return-object v1

    .line 145
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a()Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 31
    const/4 v0, 0x1

    .line 4124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4125
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    .line 4127
    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a(Ljava/lang/String;Z)Lhdf;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    .line 4128
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0, p1}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    return-object v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getWebViewWrapper()Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a()Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->goBack()V

    .line 319
    :cond_0
    return-void
.end method

.method public handleCreate()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleCreate()V

    .line 117
    :cond_0
    return-void
.end method

.method public handleDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhhy;->e(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleDestroy()V

    .line 273
    :cond_0
    return-void
.end method

.method public handlePause()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handlePause()V

    .line 305
    :cond_0
    return-void
.end method

.method public handleResume()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 297
    :cond_0
    return-void
.end method

.method public handleStart()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleStart()V

    .line 281
    :cond_0
    return-void
.end method

.method public handleStop()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->handleStop()V

    .line 289
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 77
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhhy;->e(Ljava/lang/String;)V

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    .line 80
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhhy;->d(Ljava/lang/String;)V

    .line 1134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a(Ljava/lang/String;Z)Lhdf;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0, p1}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 84
    :cond_1
    return-void
.end method

.method public loadUrl(Ljava/lang/String;II)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 91
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhhy;->e(Ljava/lang/String;)V

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->h:Ljava/lang/String;

    .line 94
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhhy;->d(Ljava/lang/String;)V

    .line 2134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a(Ljava/lang/String;Z)Lhdf;

    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    .line 96
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0, p1, p2, p3}, Lhdf;->loadUrl(Ljava/lang/String;II)V

    .line 98
    :cond_1
    return-void
.end method

.method public reloadEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {p1}, Lhgy;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    if-eqz v1, :cond_0

    .line 3134
    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a(Ljava/lang/String;Z)Lhdf;

    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    .line 105
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    invoke-interface {v0, p1}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    .line 109
    :cond_0
    return v0
.end method

.method public setClient(Lhdf$a;)V
    .locals 0
    .param p1, "entryClient"    # Lhdf$a;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->f:Lhdf$a;

    .line 324
    return-void
.end method

.method public setOnPageStatusCheckListener(Lhdf$b;)V
    .locals 0
    .param p1, "onPageStatusCheckListener"    # Lhdf$b;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->g:Lhdf$b;

    .line 329
    return-void
.end method
