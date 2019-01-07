.class Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OAuthWebViewRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthWebViewClient"
.end annotation


# instance fields
.field private a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .line 106
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 109
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Landroid/webkit/WebView;

    move-result-object v0

    .line 110
    .local v0, "webview":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Lafr;

    move-result-object v0

    .line 203
    .local v0, "callback":Lafr;
    if-eqz v0, :cond_1

    .line 204
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lafr;->c(Landroid/webkit/WebView;)V

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a()V

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->f(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 162
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

    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Lafr;

    move-result-object v0

    .line 167
    .local v0, "callback":Lafr;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lafr;->b(Landroid/webkit/WebView;)V

    .line 170
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 153
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

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 185
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

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->b()V

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 193
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

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->b()V

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 196
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 177
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onTooManyRedirects---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "cancelMsg: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " ,continueMsg:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->b()V

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 180
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    .line 119
    .local v3, "result":Z
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "shouldOverrideUrlLoading---->>"

    aput-object v5, v4, v6

    const-string/jumbo v5, "url: "

    aput-object v5, v4, v7

    aput-object p2, v4, v8

    invoke-static {v4}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v3

    .line 123
    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v4}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->b(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "code"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-static {p2}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 125
    .local v1, "paramsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 126
    invoke-static {v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a(Ljava/util/HashMap;)Lcom/alibaba/alimei/oauth/OAuthResponseClient;

    move-result-object v2

    .line 127
    .local v2, "response":Lcom/alibaba/alimei/oauth/OAuthResponseClient;
    if-eqz v2, :cond_0

    .line 128
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "respnose state"

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->state:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string/jumbo v5, ", code:"

    aput-object v5, v4, v8

    iget-object v5, v2, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->code:Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x4

    const-string/jumbo v6, ", loginAccount: "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, v2, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->loginAccount:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 131
    iget-object v4, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v4}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Lafr;

    move-result-object v0

    .line 132
    .local v0, "callback":Lafr;
    if-eqz v0, :cond_3

    .line 134
    iget-object v4, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v4}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->d(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v4}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->d(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    invoke-static {v4}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Lafr;->a(Landroid/webkit/WebView;Lcom/alibaba/alimei/oauth/OAuthResponseClient;)V

    .line 144
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;->a()V

    goto :goto_0
.end method
