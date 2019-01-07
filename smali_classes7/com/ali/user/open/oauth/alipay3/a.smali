.class public Lcom/ali/user/open/oauth/alipay3/a;
.super Ljava/lang/Object;
.source "AlipayOauthServiceProviderImpl.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthServiceProvider;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/open/oauth/alipay3/a;->a:Z

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    new-instance v0, Lcom/ali/user/open/oauth/alipay3/SignRequest;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/alipay3/SignRequest;-><init>()V

    .line 53
    iget-object v1, p3, Lcom/ali/user/open/oauth/AppCredential;->appKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->app_id:Ljava/lang/String;

    .line 54
    iget-object v1, p3, Lcom/ali/user/open/oauth/AppCredential;->pid:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->pid:Ljava/lang/String;

    .line 55
    iget-object v1, p3, Lcom/ali/user/open/oauth/AppCredential;->signType:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->sign_type:Ljava/lang/String;

    .line 56
    iget-object v1, p3, Lcom/ali/user/open/oauth/AppCredential;->targetId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->target_id:Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/ali/user/open/oauth/alipay3/a$1;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/ali/user/open/oauth/alipay3/a$1;-><init>(Lcom/ali/user/open/oauth/alipay3/a;Landroid/app/Activity;Lcom/ali/user/open/oauth/OauthCallback;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/ali/user/open/oauth/alipay3/b;->a(Lcom/ali/user/open/oauth/alipay3/c;Lcom/ali/user/open/oauth/alipay3/SignRequest;)V

    .line 115
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public isAppAuthSurpport(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 142
    if-nez p1, :cond_0

    .line 143
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 149
    :try_start_0
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 155
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
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
    .line 36
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 37
    :cond_0
    const/16 v0, 0x66

    const-string/jumbo v1, "param is null"

    invoke-interface {p5, p2, v0, v1}, Lcom/ali/user/open/oauth/OauthCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p3, Lcom/ali/user/open/oauth/AppCredential;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p3, Lcom/ali/user/open/oauth/AppCredential;->pid:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p3, Lcom/ali/user/open/oauth/AppCredential;->signType:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :cond_2
    const/16 v0, 0x65

    const-string/jumbo v1, "app credential is null"

    invoke-interface {p5, p2, v0, v1}, Lcom/ali/user/open/oauth/OauthCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/open/oauth/alipay3/a;->a:Z

    .line 48
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/ali/user/open/oauth/alipay3/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Lcom/ali/user/open/oauth/OauthCallback;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public refreshWhenLogin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
