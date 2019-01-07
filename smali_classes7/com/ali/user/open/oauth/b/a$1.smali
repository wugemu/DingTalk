.class Lcom/ali/user/open/oauth/b/a$1;
.super Ljava/lang/Object;
.source "IcbuOauthServiceProviderImpl.java"

# interfaces
.implements Lcom/ali/user/open/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/oauth/b/a;->oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/oauth/OauthCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ali/user/open/oauth/b/a;


# direct methods
.method constructor <init>(Lcom/ali/user/open/oauth/b/a;Lcom/ali/user/open/oauth/OauthCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ali/user/open/oauth/b/a$1;->c:Lcom/ali/user/open/oauth/b/a;

    iput-object p2, p0, Lcom/ali/user/open/oauth/b/a$1;->a:Lcom/ali/user/open/oauth/OauthCallback;

    iput-object p3, p0, Lcom/ali/user/open/oauth/b/a$1;->b:Ljava/lang/String;

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
    .line 59
    iget-object v0, p0, Lcom/ali/user/open/oauth/b/a$1;->a:Lcom/ali/user/open/oauth/OauthCallback;

    iget-object v1, p0, Lcom/ali/user/open/oauth/b/a$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/ali/user/open/oauth/OauthCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public onSuccess(Lcom/ali/user/open/session/Session;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string/jumbo v1, "openId"

    iget-object v2, p1, Lcom/ali/user/open/session/Session;->openId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "bindToken"

    iget-object v2, p1, Lcom/ali/user/open/session/Session;->bindToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "accessToken"

    iget-object v2, p1, Lcom/ali/user/open/session/Session;->topAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "authCode"

    iget-object v2, p1, Lcom/ali/user/open/session/Session;->topAuthCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "hid"

    iget-object v2, p1, Lcom/ali/user/open/session/Session;->hid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/ali/user/open/oauth/b/a$1;->a:Lcom/ali/user/open/oauth/OauthCallback;

    iget-object v2, p0, Lcom/ali/user/open/oauth/b/a$1;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/oauth/OauthCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    return-void
.end method
