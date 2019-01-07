.class public final Lafq;
.super Ljava/lang/Object;
.source "OAuthWebViewDelegate.java"


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

.field private c:Lafr;

.field private d:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lafq;->c:Lafr;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafq;->e:Z

    .line 26
    iput-object p1, p0, Lafq;->a:Landroid/webkit/WebView;

    .line 27
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lafq;->e:Z

    .line 130
    iget-object v0, p0, Lafq;->d:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lafq;->d:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-virtual {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lafq;->d:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alibaba/alimei/oauth/OAuthRequestClient;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V
    .locals 3
    .param p1, "requestClient"    # Lcom/alibaba/alimei/oauth/OAuthRequestClient;
    .param p2, "observer"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lafq;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 38
    :cond_1
    :try_start_1
    iput-object p1, p0, Lafq;->b:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    .line 39
    iget-object v0, p0, Lafq;->c:Lafr;

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Lafq$1;

    invoke-direct {v0, p0, p2}, Lafq$1;-><init>(Lafq;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V

    iput-object v0, p0, Lafq;->c:Lafr;

    .line 75
    :cond_2
    iget-boolean v0, p0, Lafq;->e:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lafq;->d:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    iget-object v1, p0, Lafq;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lafq;->c:Lafr;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;-><init>(Landroid/webkit/WebView;Lafr;)V

    iput-object v0, p0, Lafq;->d:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .line 82
    :cond_3
    iget-object v0, p0, Lafq;->d:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    iget-object v1, p0, Lafq;->b:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a(Lcom/alibaba/alimei/oauth/OAuthRequestClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/alibaba/alimei/oauth/OAuthResponseClient;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V
    .locals 4
    .param p1, "response"    # Lcom/alibaba/alimei/oauth/OAuthResponseClient;
    .param p2, "observer"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lafq;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 95
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 97
    if-eqz p2, :cond_1

    .line 98
    invoke-interface {p2}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;->d()V

    .line 101
    :cond_1
    new-instance v1, Lafq$2;

    invoke-direct {v1, p0, p2}, Lafq$2;-><init>(Lafq;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V

    .line 121
    .local v1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->loginAccount:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->code:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    .end local v1    # "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 124
    .restart local v0    # "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p2, v2}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
