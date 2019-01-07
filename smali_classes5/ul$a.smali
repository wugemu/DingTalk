.class final Lul$a;
.super Lcom/uc/webview/export/WebViewClient;
.source "PreviewWebViewRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lul;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lul;)V
    .locals 1
    .param p1, "request"    # Lul;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lul$a;->b:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lul$a;->a:Lul;

    .line 130
    return-void
.end method

.method static synthetic a(Lul$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lul$a;

    .prologue
    .line 125
    iget-object v0, p0, Lul$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 224
    invoke-virtual {p0}, Lul$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lul$a;->a:Lul;

    .line 3035
    iget-object v0, v1, Lul;->a:Lum;

    .line 226
    .local v0, "callback":Lum;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lum;->c()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lul$a;->a()V

    .line 232
    .end local v0    # "callback":Lum;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p0, Lul$a;->a:Lul;

    .line 1035
    iget-object v0, v1, Lul;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 154
    .local v0, "webview":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 156
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 159
    :cond_0
    iput-object v2, p0, Lul$a;->b:Ljava/lang/String;

    .line 160
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lul$a;->a:Lul;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lul$a;->a:Lul;

    .line 4035
    iget-boolean v0, v0, Lul;->c:Z

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 195
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

    invoke-static {v0}, Lul;->a([Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 182
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

    invoke-static {v1}, Lul;->a([Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Lul$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 184
    iget-object v1, p0, Lul$a;->a:Lul;

    .line 2035
    iget-object v0, v1, Lul;->a:Lum;

    .line 185
    .local v0, "callback":Lum;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Lum;->b()V

    .line 188
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 190
    .end local v0    # "callback":Lum;
    :cond_1
    return-void
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 174
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

    invoke-static {v0}, Lul;->a([Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lul$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 211
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

    invoke-static {v0}, Lul;->a([Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lul$a;->c()V

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 218
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

    invoke-static {v0}, Lul;->a([Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0}, Lul$a;->c()V

    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 221
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 165
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

    invoke-static {v1}, Lul;->a([Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lul$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :cond_0
    return v0
.end method
