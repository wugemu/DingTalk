.class public Lcom/ali/user/open/oauth/a/a;
.super Ljava/lang/Object;
.source "ElemeOauthServiceProviderImpl.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthServiceProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/oauth/AppCredential;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/oauth/OauthCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public isAppAuthSurpport(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/oauth/AppCredential;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/oauth/OauthCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/ali/user/open/oauth/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 27
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public refreshWhenLogin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
