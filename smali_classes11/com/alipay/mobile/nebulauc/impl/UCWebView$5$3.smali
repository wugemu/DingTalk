.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/uc/webview/export/extension/EmbedViewConfig;

.field final synthetic b:Lcom/uc/webview/export/extension/EmbedViewConfig;

.field final synthetic c:Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;Lcom/uc/webview/export/extension/EmbedViewConfig;)V
    .locals 1
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->c:Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->b:Lcom/uc/webview/export/extension/EmbedViewConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->b:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->a:Lcom/uc/webview/export/extension/EmbedViewConfig;

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(I)V
    .locals 7
    .param p1, "reason"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 786
    const-string/jumbo v0, "H5UCWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UCWebView onEmbedViewVisibilityChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->a:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 788
    invoke-virtual {v2}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->c:Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->b:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->a:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v1, v1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->a:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v2, v2, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->a:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v3, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 791
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->a:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v4, v4, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5$3;->a:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v5, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    move v6, p1

    .line 789
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 794
    return-void
.end method
