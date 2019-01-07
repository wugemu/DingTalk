.class public Lcom/uc/webview/export/internal/android/CookieManagerAndroid;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/ICookieManager;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# instance fields
.field private a:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->getSystemCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 36
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public acceptThirdPartyCookies(Lcom/uc/webview/export/WebView;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    .line 90
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 89
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->acceptThirdPartyCookies(Landroid/webkit/WebView;)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowFileSchemeCookiesImpl()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Landroid/webkit/CookieManager;->allowFileSchemeCookies()Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 113
    :cond_0
    return-void
.end method

.method public declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemCookieManager()Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 68
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 62
    :cond_0
    return-void
.end method

.method public removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 120
    :cond_0
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 56
    :cond_0
    return-void
.end method

.method public removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 127
    :cond_0
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAcceptFileSchemeCookiesImpl(Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public setAcceptThirdPartyCookies(Lcom/uc/webview/export/WebView;Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    .line 82
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 81
    invoke-virtual {v1, v0, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 76
    :cond_0
    return-void
.end method
