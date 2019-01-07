.class public final Lipp;
.super Ljava/lang/Object;
.source "UCWebSettings.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebSettings;


# instance fields
.field private a:Lcom/uc/webview/export/WebSettings;

.field private b:Lcom/uc/webview/export/WebView;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebView;)V
    .locals 1
    .param p1, "ucWebView"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lipp;->b:Lcom/uc/webview/export/WebView;

    .line 23
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    .line 24
    return-void
.end method


# virtual methods
.method public final getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowContentAccess()Z

    move-result v0

    return v0
.end method

.method public final getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public final getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public final getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public final getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public final getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public final getCacheMode()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public final getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public final getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public final getDefaultFontSize()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public final getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDefaultZoom()Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultZoom()Lcom/uc/webview/export/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0
.end method

.method public final getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public final getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public final getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public final getLayoutAlgorithm()Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLayoutAlgorithm()Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public final getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public final getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0
.end method

.method public final getMinimumFontSize()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public final getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public final getPluginState()Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getPluginState()Lcom/uc/webview/export/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public final getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSaveFormData()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public final getSavePassword()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public final getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextSize()Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getTextSize()Lcom/uc/webview/export/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public final getTextZoom()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getTextZoom()I

    move-result v0

    return v0
.end method

.method public final getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public final getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAllowContentAccess(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowContentAccess(Z)V

    .line 84
    return-void
.end method

.method public final setAllowFileAccess(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 74
    return-void
.end method

.method public final setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 369
    return-void
.end method

.method public final setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 359
    return-void
.end method

.method public final setAppCacheEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAppCacheEnabled(Z)V

    .line 309
    return-void
.end method

.method public final setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "appCachePath"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public final setBlockNetworkImage(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 288
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setBlockNetworkImage(Z)V

    .line 289
    return-void
.end method

.method public final setBuiltInZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setBuiltInZoomControls(Z)V

    .line 54
    return-void
.end method

.method public final setCacheMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    .line 429
    return-void
.end method

.method public final setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public final setDatabaseEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDatabaseEnabled(Z)V

    .line 324
    return-void
.end method

.method public final setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public final setDefaultFixedFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultFixedFontSize(I)V

    .line 269
    return-void
.end method

.method public final setDefaultFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultFontSize(I)V

    .line 259
    return-void
.end method

.method public final setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public final setDisplayZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 64
    return-void
.end method

.method public final setDomStorageEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 334
    return-void
.end method

.method public final setEnableFastScroller(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lipp;->b:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipp;->b:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lipp;->b:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/extension/UCSettings;->setEnableFastScroller(Z)V

    .line 436
    :cond_0
    return-void
.end method

.method public final setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public final setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public final setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public final setGeolocationEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setGeolocationEnabled(Z)V

    .line 349
    return-void
.end method

.method public final setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 389
    return-void
.end method

.method public final setJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 299
    return-void
.end method

.method public final setLayoutAlgorithm(Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;)V
    .locals 2
    .param p1, "layoutAlgorithm"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setLayoutAlgorithm(Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;)V

    .line 169
    return-void
.end method

.method public final setLoadWithOverviewMode(Z)V
    .locals 1
    .param p1, "overview"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 94
    return-void
.end method

.method public final setLoadsImagesAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 279
    return-void
.end method

.method public final setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .param p1, "require"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 44
    return-void
.end method

.method public final setMinimumFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMinimumFontSize(I)V

    .line 239
    return-void
.end method

.method public final setMinimumLogicalFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 249
    return-void
.end method

.method public final setNeedInitialFocus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 418
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setNeedInitialFocus(Z)V

    .line 419
    return-void
.end method

.method public final setPageCacheCapacity(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lipp;->b:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipp;->b:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lipp;->b:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    invoke-static {p1}, Lcom/uc/webview/export/extension/UCSettings;->setPageCacheCapacity(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public final setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V
    .locals 2
    .param p1, "pluginState"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 378
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setPluginState(Lcom/uc/webview/export/WebSettings$PluginState;)V

    .line 379
    return-void
.end method

.method public final setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public final setSaveFormData(Z)V
    .locals 1
    .param p1, "save"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 104
    return-void
.end method

.method public final setSavePassword(Z)V
    .locals 1
    .param p1, "save"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 114
    return-void
.end method

.method public final setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public final setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public final setSupportMultipleWindows(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSupportMultipleWindows(Z)V

    .line 154
    return-void
.end method

.method public final setSupportZoom(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 29
    return-void
.end method

.method public final setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V
    .locals 2
    .param p1, "textSize"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$TextSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setTextSize(Lcom/uc/webview/export/WebSettings$TextSize;)V

    .line 134
    return-void
.end method

.method public final setTextZoom(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setTextZoom(I)V

    .line 124
    return-void
.end method

.method public final setUseWideViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUseWideViewPort(Z)V

    .line 149
    return-void
.end method

.method public final setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public final supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public final supportZoom()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lipp;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method
