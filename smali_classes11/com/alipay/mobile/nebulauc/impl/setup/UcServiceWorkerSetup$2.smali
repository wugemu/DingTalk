.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$2;
.super Lcom/uc/webview/export/ServiceWorkerClient;
.source "UcServiceWorkerSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;Z)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$2;->a:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$2;->b:Z

    invoke-direct {p0}, Lcom/uc/webview/export/ServiceWorkerClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 17
    .param p1, "webResourceRequest"    # Lcom/uc/webview/export/WebResourceRequest;

    .prologue
    .line 111
    new-instance v11, Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;-><init>(Lcom/uc/webview/export/WebResourceRequest;)V

    .line 114
    .local v11, "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$2;->a:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    .line 115
    invoke-interface {v14, v11}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;->shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v13

    .line 117
    .local v13, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v12

    .line 118
    .local v12, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 119
    .local v8, "response":Lcom/uc/webview/export/WebResourceResponse;
    if-eqz v12, :cond_5

    .line 121
    const-string/jumbo v14, "yes"

    const-string/jumbo v15, "h5_log_sw_shouldInterceptRequest"

    invoke-static {v15}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 122
    const-string/jumbo v14, "H5UcService::UcServiceWorkerSetup"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "shouldInterceptRequest "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "scheme":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "host":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "kylinPrefix":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 129
    new-instance v8, Lcom/uc/webview/export/WebResourceResponse;

    .line 130
    .end local v8    # "response":Lcom/uc/webview/export/WebResourceResponse;
    invoke-virtual {v13}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v14

    .line 131
    invoke-virtual {v13}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v15

    .line 132
    invoke-virtual {v13}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v14, v15, v0}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 133
    .restart local v8    # "response":Lcom/uc/webview/export/WebResourceResponse;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v9, "rspHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "https://alipay.kylinBridge"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 136
    const-string/jumbo v1, "*"

    .line 138
    .local v1, "acao":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v7

    .line 139
    .local v7, "reqHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    .line 140
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v15, "referer"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 142
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 143
    .local v6, "referer":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 144
    .local v5, "referUri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 145
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 146
    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "referUri":Landroid/net/Uri;
    .end local v6    # "referer":Ljava/lang/String;
    :cond_2
    const-string/jumbo v14, "Access-Control-Allow-Origin"

    invoke-interface {v9, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v1    # "acao":Ljava/lang/String;
    .end local v7    # "reqHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$2;->b:Z

    if-eqz v14, :cond_4

    .line 157
    const-string/jumbo v14, "Cache-Control"

    const-string/jumbo v15, "no-cache"

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 161
    invoke-virtual {v8, v9}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 165
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "kylinPrefix":Ljava/lang/String;
    .end local v9    # "rspHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_5
    return-object v8
.end method
