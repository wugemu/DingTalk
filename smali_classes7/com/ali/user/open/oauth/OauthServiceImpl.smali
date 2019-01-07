.class public Lcom/ali/user/open/oauth/OauthServiceImpl;
.super Ljava/lang/Object;
.source "OauthServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthService;


# instance fields
.field private a:Lcom/ali/user/open/oauth/OauthServiceProvider;

.field private b:Lcom/ali/user/open/oauth/OauthServiceProvider;

.field private c:Lcom/ali/user/open/oauth/OauthServiceProvider;

.field private d:Lcom/ali/user/open/oauth/OauthServiceProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 202
    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 203
    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 204
    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 205
    return-void
.end method

.method public isAppAuthSurpport(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "alipay"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/ali/user/open/oauth/alipay3/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/alipay3/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->isAppAuthSurpport(Landroid/content/Context;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 92
    :cond_1
    const-string/jumbo v0, "taobao"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Lcom/ali/user/open/oauth/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->isAppAuthSurpport(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 97
    :cond_3
    const-string/jumbo v0, "eleme"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_4

    .line 99
    new-instance v0, Lcom/ali/user/open/oauth/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/a/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->isAppAuthSurpport(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 102
    :cond_5
    const-string/jumbo v0, "icbu"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_6

    .line 104
    new-instance v0, Lcom/ali/user/open/oauth/b/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/b/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->isAppAuthSurpport(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoginUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "alipay"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ali/user/open/oauth/alipay3/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/alipay3/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2}, Lcom/ali/user/open/oauth/OauthServiceProvider;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    .line 31
    :cond_1
    const-string/jumbo v0, "taobao"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_2

    .line 33
    new-instance v0, Lcom/ali/user/open/oauth/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2}, Lcom/ali/user/open/oauth/OauthServiceProvider;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 37
    :cond_3
    const-string/jumbo v0, "eleme"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_4

    .line 39
    new-instance v0, Lcom/ali/user/open/oauth/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/a/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2}, Lcom/ali/user/open/oauth/OauthServiceProvider;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_5
    const-string/jumbo v0, "icbu"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_6

    .line 45
    new-instance v0, Lcom/ali/user/open/oauth/b/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/b/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 48
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    const-string/jumbo v0, "alipay"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string/jumbo v0, "taobao"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v0, "eleme"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    goto :goto_0

    .line 176
    :cond_3
    const-string/jumbo v0, "icbu"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public logoutAll(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthServiceProvider;->logout(Landroid/content/Context;)V

    .line 197
    :cond_3
    return-void
.end method

.method public oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string/jumbo v1, "needAutoLogin"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "needSession"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ali/user/open/oauth/OauthServiceImpl;->oauth(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 57
    return-void
.end method

.method public oauth(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    invoke-static {p2}, Lcom/ali/user/open/oauth/OauthPlatformConfig;->getOauthConfigByPlatform(Ljava/lang/String;)Lcom/ali/user/open/oauth/AppCredential;

    move-result-object v3

    .line 62
    const-string/jumbo v0, "alipay"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/ali/user/open/oauth/alipay3/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/alipay3/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    const-string/jumbo v0, "taobao"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_3

    .line 69
    new-instance v0, Lcom/ali/user/open/oauth/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    goto :goto_0

    .line 72
    :cond_4
    const-string/jumbo v0, "eleme"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_5

    .line 74
    new-instance v0, Lcom/ali/user/open/oauth/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/a/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    goto :goto_0

    .line 77
    :cond_6
    const-string/jumbo v0, "icbu"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_7

    .line 79
    new-instance v0, Lcom/ali/user/open/oauth/b/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/b/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/oauth/OauthCallback;)V

    goto :goto_0
.end method

.method public refreshWhenLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "alipay"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/ali/user/open/oauth/alipay3/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/alipay3/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2}, Lcom/ali/user/open/oauth/OauthServiceProvider;->refreshWhenLogin(Ljava/lang/String;)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    const-string/jumbo v0, "taobao"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_3

    .line 120
    new-instance v0, Lcom/ali/user/open/oauth/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2}, Lcom/ali/user/open/oauth/OauthServiceProvider;->refreshWhenLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string/jumbo v0, "eleme"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_5

    .line 125
    new-instance v0, Lcom/ali/user/open/oauth/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/a/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2}, Lcom/ali/user/open/oauth/OauthServiceProvider;->refreshWhenLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_6
    const-string/jumbo v0, "icbu"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_7

    .line 130
    new-instance v0, Lcom/ali/user/open/oauth/b/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/b/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2}, Lcom/ali/user/open/oauth/OauthServiceProvider;->refreshWhenLogin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "alipay"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/ali/user/open/oauth/alipay3/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/alipay3/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->a:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    const-string/jumbo v0, "taobao"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lcom/ali/user/open/oauth/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->b:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V

    goto :goto_0

    .line 148
    :cond_4
    const-string/jumbo v0, "eleme"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_5

    .line 150
    new-instance v0, Lcom/ali/user/open/oauth/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/a/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->c:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V

    goto :goto_0

    .line 153
    :cond_6
    const-string/jumbo v0, "icbu"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    if-nez v0, :cond_7

    .line 155
    new-instance v0, Lcom/ali/user/open/oauth/b/a;

    invoke-direct {v0}, Lcom/ali/user/open/oauth/b/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/ali/user/open/oauth/OauthServiceImpl;->d:Lcom/ali/user/open/oauth/OauthServiceProvider;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/ali/user/open/oauth/OauthServiceProvider;->tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V

    goto :goto_0
.end method
