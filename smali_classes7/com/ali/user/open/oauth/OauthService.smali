.class public interface abstract Lcom/ali/user/open/oauth/OauthService;
.super Ljava/lang/Object;
.source "OauthService.java"


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract isAppAuthSurpport(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isLoginUrl(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract logout(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract logoutAll(Landroid/content/Context;)V
.end method

.method public abstract oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
.end method

.method public abstract oauth(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/oauth/OauthCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract refreshWhenLogin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
.end method
