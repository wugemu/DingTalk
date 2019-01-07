.class public interface abstract Liop;
.super Ljava/lang/Object;
.source "H5Page.java"

# interfaces
.implements Liob;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liop$c;,
        Liop$a;,
        Liop$b;
    }
.end annotation


# virtual methods
.method public abstract applyParamsIfNeed()V
.end method

.method public abstract execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation
.end method

.method public abstract exitPage()Z
.end method

.method public abstract getAvailablePageData()Linv;
.end method

.method public abstract getBridge()Linx;
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getContext()Lcom/alipay/mobile/h5container/api/H5Context;
.end method

.method public abstract getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
.end method

.method public abstract getExtra(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
.end method

.method public abstract getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;
.end method

.method public abstract getLastTouch()J
.end method

.method public abstract getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;
.end method

.method public abstract getPageData()Lior;
.end method

.method public abstract getPageId()I
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract getSession()Lipc;
.end method

.method public abstract getShareUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
.end method

.method public abstract getWebViewId()I
.end method

.method public abstract ifContainsEmbedSurfaceView()Z
.end method

.method public abstract ifContainsEmbedView()Z
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract pageIsClose()Z
.end method

.method public abstract replace(Ljava/lang/String;)V
.end method

.method public abstract sendExitEvent()V
.end method

.method public abstract setContainsEmbedSurfaceView(Z)V
.end method

.method public abstract setContainsEmbedView(Z)V
.end method

.method public abstract setExtra(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V
.end method

.method public abstract setHandler(Liop$b;)V
.end method

.method public abstract setNewEmbedViewRoot(Landroid/view/View;)V
.end method

.method public abstract setPerformance(Ljava/lang/String;)V
.end method

.method public abstract setRootView(Landroid/view/View;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setWebViewId(I)V
.end method
