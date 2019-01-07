.class public Lcom/ali/user/open/oauth/c/a;
.super Ljava/lang/Object;
.source "TaobaoOauthServiceProviderImpl.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthServiceProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    const-class v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/tbauth/TbAuthService;

    new-instance v1, Lcom/ali/user/open/oauth/c/a$1;

    invoke-direct {v1, p0, p5, p2}, Lcom/ali/user/open/oauth/c/a$1;-><init>(Lcom/ali/user/open/oauth/c/a;Lcom/ali/user/open/oauth/OauthCallback;Ljava/lang/String;)V

    invoke-interface {v0, p4, v1}, Lcom/ali/user/open/tbauth/TbAuthService;->auth(Ljava/util/Map;Lcom/ali/user/open/callback/LoginCallback;)V

    .line 60
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public isAppAuthSurpport(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-interface {v0, p1}, Lcom/ali/user/open/tbauth/TbAuthService;->isAppAuthSurpport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-interface {v0, p1}, Lcom/ali/user/open/tbauth/TbAuthService;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 65
    const-class v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/tbauth/TbAuthService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/open/tbauth/TbAuthService;->logout(Lcom/ali/user/open/tbauth/callback/LogoutCallback;)V

    .line 66
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
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/ali/user/open/oauth/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 37
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public refreshWhenLogin(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 75
    const-class v0, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-static {p1, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    .line 76
    const-class v1, Lcom/ali/user/open/service/SessionService;

    invoke-static {v1}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v1, v0}, Lcom/ali/user/open/service/SessionService;->refreshWhenLogin(Lcom/ali/user/open/core/model/LoginReturnData;)V

    .line 77
    return-void
.end method

.method public tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    const-class v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/tbauth/TbAuthService;

    const/4 v1, 0x0

    new-instance v5, Lcom/ali/user/open/oauth/c/a$2;

    invoke-direct {v5, p0, p4}, Lcom/ali/user/open/oauth/c/a$2;-><init>(Lcom/ali/user/open/oauth/c/a;Lcom/ali/user/open/oauth/OauthCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/tbauth/TbAuthService;->tokenLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    .line 98
    return-void
.end method
