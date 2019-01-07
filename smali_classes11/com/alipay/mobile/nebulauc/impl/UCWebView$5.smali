.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;
.super Lcom/uc/webview/export/extension/UCClient;
.source "UCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;
    .locals 8
    .param p1, "embedViewConfig"    # Lcom/uc/webview/export/extension/EmbedViewConfig;
    .param p2, "iEmbedViewContainer"    # Lcom/uc/webview/export/extension/IEmbedViewContainer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 715
    iget-boolean v0, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mIsCurrentPage:Z

    if-nez v0, :cond_0

    .line 716
    const-string/jumbo v0, "H5UCWebView"

    const-string/jumbo v1, "UCWebView onEmbedView !embedViewConfig.mIsCurrentPage return super"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/extension/UCClient;->getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;

    move-result-object v0

    .line 807
    :goto_0
    return-object v0

    .line 720
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;Lcom/uc/webview/export/extension/EmbedViewConfig;)V

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnStateChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;)V

    .line 760
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;Lcom/uc/webview/export/extension/EmbedViewConfig;)V

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnParamChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnParamChangedListener;)V

    .line 775
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;Lcom/uc/webview/export/extension/EmbedViewConfig;)V

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnVisibilityChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;)V

    .line 796
    const-string/jumbo v0, "H5UCWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UCWebView onEmbedView getEmbedView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    iget v1, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget v2, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget v3, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 799
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v5, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 798
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->getEmbedView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v7

    .line 803
    .local v7, "embedView":Landroid/view/View;
    new-instance v0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v1

    invoke-direct {v0, v7, v1, p1}, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;-><init>(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebViewListener;Lcom/uc/webview/export/extension/EmbedViewConfig;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    .end local v7    # "embedView":Landroid/view/View;
    :catch_0
    move-exception v6

    .line 805
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "H5UCWebView"

    const-string/jumbo v1, "getEmbedView catch exception "

    invoke-static {v0, v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 807
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onFirstVisuallyNonEmptyDraw()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 679
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 680
    return-void
.end method

.method public final onReceivedDispatchResponse(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 667
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V

    .line 668
    return-void
.end method

.method public final onResourceDidFinishLoading(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 685
    return-void
.end method

.method public final onSaveFormDataPrompt(ILandroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "promptType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p2, "saveFormDataCallBack":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 710
    return-void
.end method

.method public final onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 2
    .param p1, "webview"    # Lcom/uc/webview/export/WebView;
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 672
    const/16 v0, 0x9

    if-ne v0, p2, :cond_0

    .line 673
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V

    .line 675
    :cond_0
    return-void
.end method

.method public final onWillInterceptResponse(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 689
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "nonStandardType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->a:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
