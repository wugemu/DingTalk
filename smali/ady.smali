.class public final Lady;
.super Ljava/lang/Object;
.source "OAuthLoginImpl.java"

# interfaces
.implements Luq;


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lady;->a:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lady;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lady;Ljava/lang/String;Lkli;Lnet/openid/appauth/AuthorizationException;Lxv;)V
    .locals 0
    .param p0, "x0"    # Lady;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lkli;
    .param p3, "x3"    # Lnet/openid/appauth/AuthorizationException;
    .param p4, "x4"    # Lxv;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lady;->a(Ljava/lang/String;Lkli;Lnet/openid/appauth/AuthorizationException;Lxv;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lkli;Lnet/openid/appauth/AuthorizationException;Lxv;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "tokenResponse"    # Lkli;
    .param p3, "e"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkli;",
            "Lnet/openid/appauth/AuthorizationException;",
            "Lxv",
            "<",
            "Lur;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 184
    .local p4, "listener":Lxv;, "Lxv<Lur;>;"
    monitor-enter p0

    if-nez p2, :cond_1

    .line 185
    if-eqz p4, :cond_0

    .line 186
    :try_start_0
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->CommonOAuthGetTokenFailed:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3, p3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-interface {p4, v3}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 188
    :cond_0
    iget-object v3, p0, Lady;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v3, p0, Lady;->a:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 190
    const-string/jumbo v3, "OAuthLoginImpl"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "refreshToken for accountName: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " fail"

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_1
    :try_start_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Ladv;->a(Landroid/content/Context;Ljava/lang/String;)Ladv;

    move-result-object v0

    .line 195
    .local v0, "authStateManager":Ladv;
    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {v0, p2, p3}, Ladv;->a(Lkli;Lnet/openid/appauth/AuthorizationException;)Lkks;

    .line 199
    :cond_2
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v3

    invoke-virtual {v3, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 200
    .local v2, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v2, :cond_3

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    .line 202
    iget-object v3, p2, Lkli;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthRefreshToken:Ljava/lang/String;

    .line 203
    iget-object v3, p2, Lkli;->d:Ljava/lang/Long;

    if-nez v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    .line 204
    :goto_1
    iput-wide v4, v2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    .line 205
    iget-object v3, p2, Lkli;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->insertCommonAccount(Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 209
    :cond_3
    new-instance v1, Lur;

    invoke-direct {v1}, Lur;-><init>()V

    .line 210
    .local v1, "oAuthModel":Lur;
    iget-object v3, p2, Lkli;->d:Ljava/lang/Long;

    iput-object v3, v1, Lur;->c:Ljava/lang/Long;

    .line 211
    iget-object v3, p2, Lkli;->c:Ljava/lang/String;

    iput-object v3, v1, Lur;->b:Ljava/lang/String;

    .line 212
    iget-object v3, p2, Lkli;->h:Ljava/util/Map;

    iput-object v3, v1, Lur;->g:Ljava/util/Map;

    .line 213
    iget-object v3, p2, Lkli;->f:Ljava/lang/String;

    iput-object v3, v1, Lur;->e:Ljava/lang/String;

    .line 214
    iget-object v3, p2, Lkli;->g:Ljava/lang/String;

    iput-object v3, v1, Lur;->f:Ljava/lang/String;

    .line 215
    iget-object v3, p2, Lkli;->b:Ljava/lang/String;

    iput-object v3, v1, Lur;->a:Ljava/lang/String;

    .line 216
    iget-object v3, p2, Lkli;->e:Ljava/lang/String;

    iput-object v3, v1, Lur;->d:Ljava/lang/String;

    .line 217
    if-eqz p4, :cond_4

    .line 218
    invoke-interface {p4, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 220
    :cond_4
    iget-object v3, p0, Lady;->a:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 221
    const-string/jumbo v3, "OAuthLoginImpl"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "refreshToken for accountName: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " sucess"

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 184
    .end local v0    # "authStateManager":Ladv;
    .end local v1    # "oAuthModel":Lur;
    .end local v2    # "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 203
    .restart local v0    # "authStateManager":Ladv;
    .restart local v2    # "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_5
    :try_start_2
    iget-object v3, p2, Lkli;->d:Ljava/lang/Long;

    .line 204
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lxv;)V
    .locals 13
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lur;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 55
    .local p2, "listener":Lxv;, "Lxv<Lur;>;"
    monitor-enter p0

    .line 1144
    :try_start_0
    invoke-static {p1}, Lacn;->g(Ljava/lang/String;)Z

    move-result v8

    .line 55
    if-nez v8, :cond_1

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v8, p0, Lady;->a:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 65
    if-eqz p2, :cond_2

    .line 66
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 68
    :cond_2
    const-string/jumbo v8, "OAuthLoginImpl"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "oauth refreshToken for accountName: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " is on going"

    aput-object v11, v9, v10

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 72
    :cond_3
    const-wide/16 v4, -0x1

    .line 73
    .local v4, "lastRefreshTime":J
    :try_start_2
    iget-object v8, p0, Lady;->b:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 74
    iget-object v8, p0, Lady;->b:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 77
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 78
    .local v6, "now":J
    sub-long v8, v6, v4

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 79
    const-string/jumbo v8, "OAuthLoginImpl"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "oauth refreshToken for accountName: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " is in "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "5"

    .line 80
    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, " minutes"

    aput-object v11, v9, v10

    .line 79
    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p2, :cond_0

    .line 83
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 88
    :cond_5
    const-string/jumbo v8, "OAuthLoginImpl"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "begin refreshToken for accountName: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v8, p0, Lady;->a:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v8, p0, Lady;->b:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/alimei/mail/oauth/Configuration;

    move-result-object v2

    .line 94
    .local v2, "configuration":Lcom/alibaba/alimei/mail/oauth/Configuration;
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Ladv;->a(Landroid/content/Context;Ljava/lang/String;)Ladv;

    move-result-object v0

    .line 95
    .local v0, "authStateManager":Ladv;
    if-eqz v2, :cond_6

    if-nez v0, :cond_8

    .line 96
    :cond_6
    const-string/jumbo v8, "OAuthLoginImpl"

    const-string/jumbo v9, "refreshToken fail for configuration or authStateManager is null"

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v8, p0, Lady;->a:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v8, p0, Lady;->b:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    if-eqz p2, :cond_7

    .line 100
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 102
    :cond_7
    const-string/jumbo v8, "oauthRefreshToken"

    const-string/jumbo v9, "oauthRefreshToken fail"

    const-string/jumbo v10, "configuration or authStateManager is null"

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_8
    new-instance v1, Lnet/openid/appauth/AuthorizationService;

    .line 108
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lkkq$a;

    invoke-direct {v9}, Lkkq$a;-><init>()V

    .line 110
    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a()Lklo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkkq$a;->a(Lklo;)Lkkq$a;

    move-result-object v9

    .line 111
    invoke-virtual {v9}, Lkkq$a;->a()Lkkq;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lkkq;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .local v1, "authorizationService":Lnet/openid/appauth/AuthorizationService;
    :try_start_3
    invoke-virtual {v0}, Ladv;->a()Lkks;

    move-result-object v9

    .line 1608
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    .line 1618
    iget-object v8, v9, Lkks;->a:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 1619
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "No refresh token available for refresh request"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_4
    iget-object v8, p0, Lady;->a:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v8, p0, Lady;->b:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v8, "OAuthLoginImpl"

    const-string/jumbo v9, "oauthRefreshToken fail"

    invoke-static {v8, v9, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const-string/jumbo v8, "oauthRefreshToken"

    const-string/jumbo v9, "oauthRefreshToken fail"

    const-string/jumbo v10, "oauthRefreshToken exception"

    .line 135
    invoke-static {v3}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-static {v8, v9, v10, v11}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p2, :cond_0

    .line 137
    sget-object v8, Lcom/alibaba/alimei/framework/SDKError;->CommonOAuthGetTokenFailed:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v8, v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v8

    invoke-interface {p2, v8}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1621
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_9
    :try_start_5
    iget-object v8, v9, Lkks;->d:Lkku;

    if-nez v8, :cond_a

    .line 1622
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "No authorization configuration available for refresh request"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1626
    :cond_a
    new-instance v8, Lklh$a;

    iget-object v11, v9, Lkks;->d:Lkku;

    iget-object v11, v11, Lkku;->a:Lkkt;

    iget-object v11, v11, Lkkt;->a:Lkkv;

    iget-object v12, v9, Lkks;->d:Lkku;

    iget-object v12, v12, Lkku;->a:Lkkt;

    iget-object v12, v12, Lkkt;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lklh$a;-><init>(Lkkv;Ljava/lang/String;)V

    const-string/jumbo v11, "refresh_token"

    .line 1629
    invoke-virtual {v8, v11}, Lklh$a;->a(Ljava/lang/String;)Lklh$a;

    move-result-object v11

    iget-object v8, v9, Lkks;->d:Lkku;

    iget-object v8, v8, Lkku;->a:Lkkt;

    iget-object v8, v8, Lkkt;->i:Ljava/lang/String;

    .line 2310
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2311
    const/4 v8, 0x0

    iput-object v8, v11, Lklh$a;->b:Ljava/lang/String;

    .line 1630
    :goto_1
    iget-object v8, v9, Lkks;->d:Lkku;

    iget-object v8, v8, Lkku;->a:Lkkt;

    iget-object v8, v8, Lkkt;->c:Ljava/lang/String;

    .line 3275
    iput-object v8, v11, Lklh$a;->a:Ljava/lang/String;

    .line 1631
    iget-object v8, v9, Lkks;->a:Ljava/lang/String;

    .line 1632
    invoke-virtual {v11, v8}, Lklh$a;->c(Ljava/lang/String;)Lklh$a;

    move-result-object v8

    .line 1633
    invoke-virtual {v8, v10}, Lklh$a;->a(Ljava/util/Map;)Lklh$a;

    move-result-object v8

    .line 1634
    invoke-virtual {v8}, Lklh$a;->a()Lklh;

    move-result-object v8

    .line 113
    new-instance v9, Lady$1;

    invoke-direct {v9, p0, p1, p2}, Lady$1;-><init>(Lady;Ljava/lang/String;Lxv;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4156
    :try_start_6
    invoke-virtual {v0}, Ladv;->a()Lkks;

    move-result-object v10

    invoke-virtual {v10}, Lkks;->b()Lnet/openid/appauth/ClientAuthentication;
    :try_end_6
    .catch Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v10

    .line 4170
    :try_start_7
    invoke-virtual {v1, v8, v10, v9}, Lnet/openid/appauth/AuthorizationService;->a(Lklh;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$b;)V

    goto/16 :goto_0

    .line 2313
    :cond_b
    const-string/jumbo v12, " +"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2333
    if-nez v8, :cond_c

    .line 2334
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    .line 2336
    :cond_c
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v11, v8}, Lklh$a;->a(Ljava/lang/Iterable;)Lklh$a;

    goto :goto_1

    .line 4157
    :catch_1
    move-exception v8

    .line 4158
    const-string/jumbo v9, "OAuthLoginImpl"

    const-string/jumbo v10, "Token request cannot be made, client authentication for the token endpoint could not be constructed (%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    const-string/jumbo v9, "oauthRefreshToken"

    const-string/jumbo v10, "oauthRefreshToken fail"

    const-string/jumbo v11, "oauthRefreshToken exception"

    .line 4161
    invoke-static {v8}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    .line 4160
    invoke-static {v9, v10, v11, v12}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    if-eqz p2, :cond_d

    .line 4163
    sget-object v9, Lcom/alibaba/alimei/framework/SDKError;->CommonOAuthGetTokenFailed:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v9, v8}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v8

    invoke-interface {p2, v8}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 4165
    :cond_d
    iget-object v8, p0, Lady;->a:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4166
    iget-object v8, p0, Lady;->b:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p1}, Lacn;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
