.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IWebView;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/ICommonExtension;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;,
        Lcom/uc/webview/export/internal/interfaces/IWebView$IWebViewTransport;
    }
.end annotation


# virtual methods
.method public abstract addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract canGoBack()Z
.end method

.method public abstract canGoBackOrForward(I)Z
.end method

.method public abstract canGoForward()Z
.end method

.method public abstract canZoomIn()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract canZoomOut()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract capturePicture()Landroid/graphics/Picture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearCache(Z)V
.end method

.method public abstract clearClientCertPreferencesNoStatic(Ljava/lang/Runnable;)V
.end method

.method public abstract clearFormData()V
.end method

.method public abstract clearHistory()V
.end method

.method public abstract clearMatches()V
.end method

.method public abstract clearSslPreferences()V
.end method

.method public abstract copyBackForwardListInner()Lcom/uc/webview/export/WebBackForwardList;
.end method

.method public abstract createWebMessageChannelInner()Ljava/lang/Object;
.end method

.method public abstract destroy()V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract documentHasImages(Landroid/os/Message;)V
.end method

.method public abstract evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract findAll(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findAllAsync(Ljava/lang/String;)V
.end method

.method public abstract findNext(Z)V
.end method

.method public abstract flingScroll(II)V
.end method

.method public abstract getCertificate()Landroid/net/http/SslCertificate;
.end method

.method public abstract getCommonExtension()Lcom/uc/webview/export/internal/interfaces/ICommonExtension;
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getFavicon()Landroid/graphics/Bitmap;
.end method

.method public abstract getHitTestResultInner()Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;
.end method

.method public abstract getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getOriginalUrl()Ljava/lang/String;
.end method

.method public abstract getOverrideObject()Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getScale()F
.end method

.method public abstract getSettingsInner()Lcom/uc/webview/export/WebSettings;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUCExtension()Lcom/uc/webview/export/internal/interfaces/IUCExtension;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract goBack()V
.end method

.method public abstract goBackOrForward(I)V
.end method

.method public abstract goForward()V
.end method

.method public abstract invokeZoomPicker()V
.end method

.method public abstract isHorizontalScrollBarEnabled()Z
.end method

.method public abstract isVerticalScrollBarEnabled()Z
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyForegroundChanged(Z)V
.end method

.method public abstract onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract overlayHorizontalScrollbar()Z
.end method

.method public abstract overlayVerticalScrollbar()Z
.end method

.method public abstract pageDown(Z)Z
.end method

.method public abstract pageUp(Z)Z
.end method

.method public abstract pauseTimers()V
.end method

.method public abstract postUrl(Ljava/lang/String;[B)V
.end method

.method public abstract postVisualStateCallback(JLcom/uc/webview/export/WebView$b;)V
.end method

.method public abstract postWebMessageInner(Lcom/uc/webview/export/WebMessage;Landroid/net/Uri;)V
.end method

.method public abstract reload()V
.end method

.method public abstract removeJavascriptInterface(Ljava/lang/String;)V
.end method

.method public abstract requestFocusNodeHref(Landroid/os/Message;)V
.end method

.method public abstract requestImageRef(Landroid/os/Message;)V
.end method

.method public abstract restoreStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
.end method

.method public abstract resumeTimers()V
.end method

.method public abstract saveStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
.end method

.method public abstract saveWebArchive(Ljava/lang/String;)V
.end method

.method public abstract saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V
.end method

.method public abstract setFindListener(Lcom/uc/webview/export/WebView$FindListener;)V
.end method

.method public abstract setHorizontalScrollBarEnabled(Z)V
.end method

.method public abstract setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setInitialScale(I)V
.end method

.method public abstract setLayerType(ILandroid/graphics/Paint;)V
.end method

.method public abstract setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setNetworkAvailable(Z)V
.end method

.method public abstract setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method public abstract setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setOverScrollMode(I)V
.end method

.method public abstract setOverrideObject(Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;)V
.end method

.method public abstract setScrollBarStyle(I)V
.end method

.method public abstract setVerticalScrollBarEnabled(Z)V
.end method

.method public abstract setVerticalScrollbarOverlay(Z)V
.end method

.method public abstract setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
.end method

.method public abstract setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
.end method

.method public abstract stopLoading()V
.end method

.method public abstract superComputeScroll()V
.end method

.method public abstract superDestroy()V
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract superOnConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract superOnScrollChanged(IIII)V
.end method

.method public abstract superOnVisibilityChanged(Landroid/view/View;I)V
.end method

.method public abstract superOverScrollBy(IIIIIIIIZ)Z
.end method

.method public abstract superRequestLayout()V
.end method

.method public abstract superSetVisibility(I)V
.end method

.method public abstract zoomIn()Z
.end method

.method public abstract zoomOut()Z
.end method
