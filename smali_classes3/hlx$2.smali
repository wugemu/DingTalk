.class final Lhlx$2;
.super Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
.source "MiniEmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Liop;

.field final synthetic d:Lhlx;


# direct methods
.method constructor <init>(Lhlx;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;Ljava/lang/String;Liop;)V
    .locals 0
    .param p1, "this$0"    # Lhlx;
    .param p2, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 186
    iput-object p1, p0, Lhlx$2;->d:Lhlx;

    iput-object p3, p0, Lhlx$2;->a:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    iput-object p4, p0, Lhlx$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lhlx$2;->c:Liop;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 12
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 190
    if-eqz p2, :cond_1

    .line 192
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 193
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "origHost":Ljava/lang/String;
    move-object v0, v4

    .line 196
    .local v0, "content":Ljava/lang/String;
    sget-object v1, Lhnj;->a:Ljava/lang/String;

    .line 197
    .local v1, "item":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v9

    sget v10, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v9, v10, :cond_0

    .line 199
    const-string/jumbo v1, "validDomain"

    .line 202
    :cond_0
    iget-object v9, p0, Lhlx$2;->a:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    iget-object v10, p0, Lhlx$2;->b:Ljava/lang/String;

    iget-object v11, p0, Lhlx$2;->d:Lhlx;

    invoke-static {v11}, Lhlx;->a(Lhlx;)Liop;

    move-result-object v11

    invoke-interface {v9, v10, v0, v1, v11}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v6

    .line 204
    .local v6, "shouldIntercept":Z
    if-eqz v6, :cond_1

    .line 206
    iget-object v9, p0, Lhlx$2;->c:Liop;

    invoke-interface {v9}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "onlineHost"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "newHost":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "origPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "web_assets"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "newPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 217
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "newHost":Ljava/lang/String;
    .end local v3    # "newPath":Ljava/lang/String;
    .end local v4    # "origHost":Ljava/lang/String;
    .end local v5    # "origPath":Ljava/lang/String;
    .end local v6    # "shouldIntercept":Z
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v9

    return-object v9

    .line 213
    :catch_0
    move-exception v7

    .line 214
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
