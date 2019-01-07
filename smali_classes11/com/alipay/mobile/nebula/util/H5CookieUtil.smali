.class public Lcom/alipay/mobile/nebula/util/H5CookieUtil;
.super Ljava/lang/Object;
.source "H5CookieUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 18
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "cookieStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 21
    .local v4, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 23
    .local v2, "domain":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 24
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 26
    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 35
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v1    # "cookieStr":Ljava/lang/String;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v3

    .line 33
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5CookieUtil"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 44
    .local v0, "manager":Landroid/webkit/CookieManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 45
    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "manager":Landroid/webkit/CookieManager;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5CookieUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
