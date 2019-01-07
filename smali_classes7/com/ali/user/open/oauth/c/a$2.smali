.class Lcom/ali/user/open/oauth/c/a$2;
.super Ljava/lang/Object;
.source "TaobaoOauthServiceProviderImpl.java"

# interfaces
.implements Lcom/ali/user/open/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/oauth/c/a;->tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/oauth/OauthCallback;

.field final synthetic b:Lcom/ali/user/open/oauth/c/a;


# direct methods
.method constructor <init>(Lcom/ali/user/open/oauth/c/a;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ali/user/open/oauth/c/a$2;->b:Lcom/ali/user/open/oauth/c/a;

    iput-object p2, p0, Lcom/ali/user/open/oauth/c/a$2;->a:Lcom/ali/user/open/oauth/OauthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ali/user/open/oauth/c/a$2;->a:Lcom/ali/user/open/oauth/OauthCallback;

    const-string/jumbo v1, "taobao"

    invoke-interface {v0, v1, p1, p2}, Lcom/ali/user/open/oauth/OauthCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method public onSuccess(Lcom/ali/user/open/session/Session;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    const-string/jumbo v1, "dingding"

    invoke-static {}, Lcom/ali/user/open/core/AliMemberSDK;->getMasterSite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "userId"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v1, "sid"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/ali/user/open/oauth/c/a$2;->a:Lcom/ali/user/open/oauth/OauthCallback;

    const-string/jumbo v2, "taobao"

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/oauth/OauthCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    return-void
.end method
