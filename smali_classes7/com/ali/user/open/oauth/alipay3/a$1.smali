.class Lcom/ali/user/open/oauth/alipay3/a$1;
.super Ljava/lang/Object;
.source "AlipayOauthServiceProviderImpl.java"

# interfaces
.implements Lcom/ali/user/open/oauth/alipay3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/oauth/alipay3/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Lcom/ali/user/open/oauth/OauthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ali/user/open/oauth/OauthCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ali/user/open/oauth/alipay3/a;


# direct methods
.method constructor <init>(Lcom/ali/user/open/oauth/alipay3/a;Landroid/app/Activity;Lcom/ali/user/open/oauth/OauthCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ali/user/open/oauth/alipay3/a$1;->d:Lcom/ali/user/open/oauth/alipay3/a;

    iput-object p2, p0, Lcom/ali/user/open/oauth/alipay3/a$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ali/user/open/oauth/alipay3/a$1;->b:Lcom/ali/user/open/oauth/OauthCallback;

    iput-object p4, p0, Lcom/ali/user/open/oauth/alipay3/a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    new-instance v1, Lcom/ali/user/open/oauth/alipay3/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/open/oauth/alipay3/a$1$1;-><init>(Lcom/ali/user/open/oauth/alipay3/a$1;Ljava/lang/String;)V

    .line 106
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postTask(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/a$1;->b:Lcom/ali/user/open/oauth/OauthCallback;

    iget-object v1, p0, Lcom/ali/user/open/oauth/alipay3/a$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/ali/user/open/oauth/OauthCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    return-void
.end method
