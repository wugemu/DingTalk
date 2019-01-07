.class public Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;
.super Ljava/lang/Object;
.source "UCEmbededViewWrapper.java"

# interfaces
.implements Lcom/uc/webview/export/extension/IEmbedView;


# instance fields
.field private mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

.field private mRealView:Landroid/view/View;

.field private mWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebViewListener;Lcom/uc/webview/export/extension/EmbedViewConfig;)V
    .locals 0
    .param p1, "realView"    # Landroid/view/View;
    .param p2, "webViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .param p3, "embedViewConfig"    # Lcom/uc/webview/export/extension/EmbedViewConfig;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mRealView:Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 25
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 26
    return-void
.end method


# virtual methods
.method public getSnapShot()Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v1, v1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v2, v2, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v3, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 36
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v4, v4, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v5, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 35
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mRealView:Landroid/view/View;

    return-object v0
.end method
