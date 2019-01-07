.class final Lafq$1;
.super Ljava/lang/Object;
.source "OAuthWebViewDelegate.java"

# interfaces
.implements Lafr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafq;->a(Lcom/alibaba/alimei/oauth/OAuthRequestClient;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

.field final synthetic b:Lafq;


# direct methods
.method constructor <init>(Lafq;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V
    .locals 0
    .param p1, "this$0"    # Lafq;

    .prologue
    .line 40
    iput-object p1, p0, Lafq$1;->b:Lafq;

    iput-object p2, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-interface {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;->a()V

    .line 47
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "OAuthWebView onWebViewStartLoading"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Lcom/alibaba/alimei/oauth/OAuthResponseClient;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "authResult"    # Lcom/alibaba/alimei/oauth/OAuthResponseClient;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lafq$1;->b:Lafq;

    .line 1017
    iget-object v0, v0, Lafq;->a:Landroid/webkit/WebView;

    .line 69
    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lafq$1;->b:Lafq;

    iget-object v1, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    .line 2017
    invoke-virtual {v0, p2, v1}, Lafq;->a(Lcom/alibaba/alimei/oauth/OAuthResponseClient;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-interface {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;->b()V

    .line 55
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "OAuthWebView onWebViewStopLoading"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public final c(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lafq$1;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-interface {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;->c()V

    .line 63
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "OAuthWebView onWebViewLoadError"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 64
    return-void
.end method
