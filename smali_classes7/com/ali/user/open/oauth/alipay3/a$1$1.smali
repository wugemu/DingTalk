.class Lcom/ali/user/open/oauth/alipay3/a$1$1;
.super Ljava/lang/Object;
.source "AlipayOauthServiceProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/oauth/alipay3/a$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/open/oauth/alipay3/a$1;


# direct methods
.method constructor <init>(Lcom/ali/user/open/oauth/alipay3/a$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iput-object p2, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 65
    const-string/jumbo v0, "AlipayOauthServiceProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sign="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/alipay/sdk/app/AuthTask;

    iget-object v1, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iget-object v1, v1, Lcom/ali/user/open/oauth/alipay3/a$1;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/AuthTask;-><init>(Landroid/app/Activity;)V

    .line 67
    iget-object v1, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lcom/alipay/sdk/app/AuthTask;->authV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    const-string/jumbo v0, "AlipayOauthServiceProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 73
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string/jumbo v0, ""

    .line 77
    if-eqz v4, :cond_3

    .line 78
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 79
    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 80
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 81
    const-string/jumbo v7, "auth_code"

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 82
    aget-object v0, v6, v9

    .line 83
    const-string/jumbo v6, "authCode"

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const-string/jumbo v7, "alipay_open_id"

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    const-string/jumbo v7, "openId"

    aget-object v6, v6, v9

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_2
    const-string/jumbo v7, "user_id"

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    const-string/jumbo v7, "userId"

    aget-object v6, v6, v9

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iget-object v0, v0, Lcom/ali/user/open/oauth/alipay3/a$1;->b:Lcom/ali/user/open/oauth/OauthCallback;

    iget-object v1, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iget-object v1, v1, Lcom/ali/user/open/oauth/alipay3/a$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/user/open/oauth/OauthCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    :cond_4
    :goto_2
    return-void

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iget-object v0, v0, Lcom/ali/user/open/oauth/alipay3/a$1;->b:Lcom/ali/user/open/oauth/OauthCallback;

    iget-object v1, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iget-object v1, v1, Lcom/ali/user/open/oauth/alipay3/a$1;->c:Ljava/lang/String;

    const/16 v2, 0xca

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/oauth/OauthCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iget-object v2, v0, Lcom/ali/user/open/oauth/alipay3/a$1;->b:Lcom/ali/user/open/oauth/OauthCallback;

    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/a$1$1;->b:Lcom/ali/user/open/oauth/alipay3/a$1;

    iget-object v3, v0, Lcom/ali/user/open/oauth/alipay3/a$1;->c:Ljava/lang/String;

    const/16 v4, 0xc9

    const-string/jumbo v0, "memo"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/ali/user/open/oauth/OauthCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2
.end method
