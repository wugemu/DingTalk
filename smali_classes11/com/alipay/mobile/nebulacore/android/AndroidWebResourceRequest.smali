.class public Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;
.super Ljava/lang/Object;
.source "AndroidWebResourceRequest.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;


# instance fields
.field private request:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Landroid/webkit/WebResourceRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGesture()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForMainFrame()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;->request:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
