.class public abstract Lcom/ali/user/open/ucc/b/a;
.super Ljava/lang/Object;
.source "BaseUccServiceProvider.java"

# interfaces
.implements Lcom/ali/user/open/ucc/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/oauth/AppCredential;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    if-nez p5, :cond_0

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    :goto_0
    const-string/jumbo v0, "isFromUCC"

    const-string/jumbo v1, "1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ali/user/open/oauth/OauthService;

    new-instance v0, Lcom/ali/user/open/ucc/b/a$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/open/ucc/b/a$1;-><init>(Lcom/ali/user/open/ucc/b/a;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-interface {v6, p1, p3, v4, v0}, Lcom/ali/user/open/oauth/OauthService;->oauth(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 70
    return-void

    :cond_0
    move-object v4, p5

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/oauth/AppCredential;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/16 v0, 0x66

    const-string/jumbo v1, "param is null"

    invoke-interface {p6, p3, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/ali/user/open/ucc/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/ali/user/open/ucc/b/a;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1, p3, p2, p5, p6}, Lcom/ali/user/open/ucc/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v0, ".taobao.com"

    .line 75
    const-string/jumbo v1, "alipay"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v0, ".alipay.com"

    move-object v2, v0

    .line 82
    :goto_0
    const-class v0, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-static {p2, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/model/LoginReturnData;

    .line 83
    const-class v1, Lcom/ali/user/open/service/SessionService;

    invoke-static {v1}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/service/SessionService;->refreshCookie(Ljava/lang/String;Lcom/ali/user/open/core/model/LoginReturnData;)V

    .line 84
    return-void

    .line 77
    :cond_0
    const-string/jumbo v1, "damai"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-string/jumbo v0, ".damai.cn"

    move-object v2, v0

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v1, "eleme"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const-string/jumbo v0, ".ele.me"

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)Z
.end method
