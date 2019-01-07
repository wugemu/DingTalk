.class public interface abstract Lcom/ali/user/open/tbauth/TbAuthService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract auth(Lcom/ali/user/open/callback/LoginCallback;)V
.end method

.method public abstract auth(Ljava/util/Map;Lcom/ali/user/open/callback/LoginCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/callback/LoginCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract autoLogin(Lcom/ali/user/open/callback/LoginCallback;)V
.end method

.method public abstract checkSessionValid()Z
.end method

.method public abstract getSession()Lcom/ali/user/open/session/Session;
.end method

.method public abstract isAppAuthSurpport(Landroid/content/Context;)Z
.end method

.method public abstract isLoginUrl(Ljava/lang/String;)Z
.end method

.method public abstract isLogoutUrl(Ljava/lang/String;)Z
.end method

.method public abstract logout(Lcom/ali/user/open/tbauth/callback/LogoutCallback;)V
.end method

.method public abstract refreshCookie(Lcom/ali/user/open/core/callback/MemberCallback;)V
.end method

.method public abstract setLoginCallback(Lcom/ali/user/open/callback/LoginCallback;)V
.end method

.method public abstract setWebViewProxy(Lcom/ali/user/open/core/WebViewProxy;)V
.end method

.method public abstract tokenLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
.end method
