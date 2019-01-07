.class public Lcom/ali/user/open/a/a;
.super Ljava/lang/Object;
.source "CookieManagerService.java"


# direct methods
.method public static a()Lcom/ali/user/open/core/WebViewProxy;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->mWebViewProxy:Lcom/ali/user/open/core/WebViewProxy;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->mWebViewProxy:Lcom/ali/user/open/core/WebViewProxy;

    .line 19
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ali/user/open/core/webview/DefaultWebViewProxy;->getInstance()Lcom/ali/user/open/core/webview/DefaultWebViewProxy;

    move-result-object v0

    goto :goto_0
.end method
