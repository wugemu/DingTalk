.class public interface abstract Lcom/uc/webview/export/internal/interfaces/ICookieManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# virtual methods
.method public abstract acceptCookie()Z
.end method

.method public abstract acceptThirdPartyCookies(Lcom/uc/webview/export/WebView;)Z
.end method

.method public abstract allowFileSchemeCookiesImpl()Z
.end method

.method public abstract flush()V
.end method

.method public abstract getCookie(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasCookies()Z
.end method

.method public abstract removeAllCookie()V
.end method

.method public abstract removeAllCookies(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeSessionCookie()V
.end method

.method public abstract removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAcceptCookie(Z)V
.end method

.method public abstract setAcceptFileSchemeCookiesImpl(Z)V
.end method

.method public abstract setAcceptThirdPartyCookies(Lcom/uc/webview/export/WebView;Z)V
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
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
.end method
