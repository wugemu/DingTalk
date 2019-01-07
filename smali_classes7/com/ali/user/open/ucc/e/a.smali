.class public Lcom/ali/user/open/ucc/e/a;
.super Lcom/ali/user/open/ucc/b/a;
.source "TaobaoUccServiceProviderImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ali/user/open/ucc/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 23
    const-class v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/OauthService;

    const-string/jumbo v1, "taobao"

    invoke-interface {v0, v1, p2}, Lcom/ali/user/open/oauth/OauthService;->refreshWhenLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/oauth/OauthService;->isAppAuthSurpport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
