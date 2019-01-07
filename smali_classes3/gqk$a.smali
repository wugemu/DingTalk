.class final Lgqk$a;
.super Lcom/uc/webview/export/WebViewClient;
.source "PreviewWebViewRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lgqk;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgqk;)V
    .locals 1
    .param p1, "request"    # Lgqk;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lgqk$a;->b:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lgqk$a;->a:Lgqk;

    .line 132
    return-void
.end method

.method static synthetic a(Lgqk$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgqk$a;

    .prologue
    .line 126
    iget-object v0, p0, Lgqk$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 157
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "destroyPreviewRequest------>>"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", previewUrl:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lgqk$a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1034
    invoke-static {v1}, Lgqk;->a([Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lgqk$a;->a:Lgqk;

    .line 2034
    iget-object v0, v1, Lgqk;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 160
    .local v0, "webview":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 162
    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 165
    :cond_0
    iput-object v4, p0, Lgqk$a;->b:Ljava/lang/String;

    .line 166
    return-void
.end method

.method static synthetic a(Lgqk$a;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lgqk$a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    .line 11138
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "executeRequestUrl"

    aput-object v1, v0, v3

    const-string/jumbo v1, ", previewUrl:"

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    .line 12034
    invoke-static {v0}, Lgqk;->a([Ljava/lang/Object;)V

    .line 11140
    if-eqz p1, :cond_2

    .line 11143
    iput-object p1, p0, Lgqk$a;->b:Ljava/lang/String;

    .line 11144
    iget-object v0, p0, Lgqk$a;->a:Lgqk;

    .line 13034
    iget-object v0, v0, Lgqk;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 11145
    invoke-direct {p0}, Lgqk$a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 11146
    iget-object v1, p0, Lgqk$a;->a:Lgqk;

    .line 14034
    iget-object v1, v1, Lgqk;->a:Lgql;

    .line 11147
    if-eqz v1, :cond_0

    .line 11148
    iget-object v2, p0, Lgqk$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lgql;->a(Ljava/lang/String;)V

    .line 11150
    :cond_0
    iget-object v1, p0, Lgqk$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 11153
    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "executeRequestUrl end----->>"

    aput-object v1, v0, v3

    const-string/jumbo v1, ", previewUrl:"

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    .line 15034
    invoke-static {v0}, Lgqk;->a([Ljava/lang/Object;)V

    .line 126
    :cond_2
    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 227
    invoke-direct {p0}, Lgqk$a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    iget-object v1, p0, Lgqk$a;->a:Lgqk;

    .line 10034
    iget-object v0, v1, Lgqk;->a:Lgql;

    .line 229
    .local v0, "callback":Lgql;
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lgqk$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgql;->c(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-direct {p0}, Lgqk$a;->a()V

    .line 235
    .end local v0    # "callback":Lgql;
    :cond_1
    return-void
.end method

.method static synthetic b(Lgqk$a;)V
    .locals 0
    .param p0, "x0"    # Lgqk$a;

    .prologue
    .line 126
    invoke-direct {p0}, Lgqk$a;->a()V

    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lgqk$a;->a:Lgqk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgqk$a;->a:Lgqk;

    .line 11034
    iget-boolean v0, v0, Lgqk;->c:Z

    .line 238
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onLoadResource---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 7034
    invoke-static {v0}, Lgqk;->a([Ljava/lang/Object;)V

    .line 207
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 192
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPageFinished---->>"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "url: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 5034
    invoke-static {v1}, Lgqk;->a([Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lgqk$a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 195
    iget-object v1, p0, Lgqk$a;->a:Lgqk;

    .line 6034
    iget-object v0, v1, Lgqk;->a:Lgql;

    .line 196
    .local v0, "callback":Lgql;
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lgqk$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgql;->b(Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 201
    .end local v0    # "callback":Lgql;
    :cond_1
    return-void
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 183
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onPageStarted---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 4034
    invoke-static {v0}, Lgqk;->a([Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0}, Lgqk$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 188
    :cond_0
    return-void
.end method

.method public final onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 212
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onReceivedError---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "errorCode: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " ,description:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, " ,failingUrl:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    .line 8034
    invoke-static {v0}, Lgqk;->a([Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lgqk$a;->b()V

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public final onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 220
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onReceivedSslError---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SslErrorHandler: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " ,error:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    .line 9034
    invoke-static {v0}, Lgqk;->a([Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lgqk$a;->b()V

    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 224
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 172
    .local v0, "result":Z
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "shouldOverrideUrlLoading---->>"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "url: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 3034
    invoke-static {v1}, Lgqk;->a([Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lgqk$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :cond_0
    return v0
.end method
