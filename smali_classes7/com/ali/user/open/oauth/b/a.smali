.class public Lcom/ali/user/open/oauth/b/a;
.super Ljava/lang/Object;
.source "IcbuOauthServiceProviderImpl.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthServiceProvider;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "login.icbuOauthImpl"

    iput-object v0, p0, Lcom/ali/user/open/oauth/b/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ali/user/open/oauth/b/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "open H5 login"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/open/tbauth/ui/ICBUAuthActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public isAppAuthSurpport(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    const-class v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/tbauth/TbAuthService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/open/tbauth/TbAuthService;->logout(Lcom/ali/user/open/tbauth/callback/LogoutCallback;)V

    .line 70
    return-void
.end method

.method public oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 1
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
    .line 43
    invoke-virtual {p0, p1}, Lcom/ali/user/open/oauth/b/a;->a(Landroid/app/Activity;)V

    .line 44
    new-instance v0, Lcom/ali/user/open/oauth/b/a$1;

    invoke-direct {v0, p0, p5, p2}, Lcom/ali/user/open/oauth/b/a$1;-><init>(Lcom/ali/user/open/oauth/b/a;Lcom/ali/user/open/oauth/OauthCallback;Ljava/lang/String;)V

    .line 63
    sput-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public refreshWhenLogin(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    const-class v0, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-static {p1, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    .line 80
    const-class v1, Lcom/ali/user/open/service/SessionService;

    invoke-static {v1}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v1, v0}, Lcom/ali/user/open/service/SessionService;->refreshWhenLogin(Lcom/ali/user/open/core/model/LoginReturnData;)V

    .line 81
    return-void
.end method

.method public tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 85
    const-class v0, Lcom/ali/user/open/tbauth/TbAuthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/tbauth/TbAuthService;

    const/4 v1, 0x4

    new-instance v5, Lcom/ali/user/open/oauth/b/a$2;

    invoke-direct {v5, p0, p4}, Lcom/ali/user/open/oauth/b/a$2;-><init>(Lcom/ali/user/open/oauth/b/a;Lcom/ali/user/open/oauth/OauthCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/tbauth/TbAuthService;->tokenLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V

    .line 101
    return-void
.end method
