.class public final Lxy;
.super Ljava/lang/Object;
.source "AlimeiAuthLifecycleListener.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lxy;->a:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lxy;->c:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lxy;->b:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lxy;->d:Ljava/util/Map;

    .line 86
    return-void
.end method

.method static synthetic a(Lxy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lxy;

    .prologue
    .line 40
    iget-object v0, p0, Lxy;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lxn;->e()Lxu;

    move-result-object v1

    .line 150
    .local v1, "invoker":Lxu;
    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1, p0}, Lxu;->e(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.alimei_sdk.RELOGIN_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "accountName"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .locals 12
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p2, "rpcListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    const/4 v4, 0x2

    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lxy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 167
    .local v8, "lastRefreshTime":Ljava/lang/Long;
    const-wide/16 v10, 0x0

    .line 168
    .local v10, "lrt":J
    if-eqz v8, :cond_0

    .line 169
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 172
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 173
    const-string/jumbo v0, "AlimeiAuthLifecycleListener"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "doRefreshAccessToken for accountName: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", but lastRefreshTime is in "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "120000"

    .line 174
    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", so return"

    aput-object v3, v1, v2

    .line 173
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 176
    .local v7, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    invoke-interface {v7, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v6

    .line 177
    .local v6, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz p2, :cond_1

    .line 178
    if-eqz v6, :cond_2

    iget-object v0, p0, Lxy;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, v6, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/alibaba/alimei/restfulapi/RPCListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v6    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v7    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    .restart local v6    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .restart local v7    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0}, Lcom/alibaba/alimei/restfulapi/RPCListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v6    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v7    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .end local v8    # "lastRefreshTime":Ljava/lang/Long;
    .end local v10    # "lrt":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 188
    .restart local v8    # "lastRefreshTime":Ljava/lang/Long;
    .restart local v10    # "lrt":J
    :cond_3
    :try_start_2
    iget-object v0, p0, Lxy;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lxy;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lxy;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 192
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mul_token_invalid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "account size: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lxy;->c:Ljava/util/Set;

    .line 193
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 192
    invoke-static/range {v0 .. v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 196
    :cond_4
    const-string/jumbo v0, "AlimeiAuthLifecycleListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doRefreshAccessToken for accountName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v9, Lxy$1;

    invoke-direct {v9, p0, p1, p2}, Lxy$1;-><init>(Lxy;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 335
    .local v9, "refreshTokenListener2":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, v9}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->refreshToken(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lxy;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lxy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lxy;

    .prologue
    .line 40
    iget-object v0, p0, Lxy;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final onAccessTokenExpired(ILjava/lang/String;)V
    .locals 1
    .param p1, "methodType"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lxy;->onAccessTokenExpired(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 108
    return-void
.end method

.method public final onAccessTokenExpired(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .locals 5
    .param p1, "methodType"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p3, "rpcListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    const/16 v0, 0xfa0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lxn;->f()Lxx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lxn;->f()Lxx;

    move-result-object v0

    invoke-interface {v0, p2}, Lxx;->a(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "AlimeiAuthLifecycleListener"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "onAccessTokenExpired : ---> method type  = OpenApiDomainType.DENTRY"

    aput-object v2, v1, v3

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p2, p3}, Lxy;->a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 128
    const-string/jumbo v0, "AlimeiAuthLifecycleListener"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "onAccessTokenExpired : ---> method type: "

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onAccessTokenExpired(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lxy;->onAccessTokenExpired(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 119
    return-void
.end method

.method public final onAccessTokenExpired(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "rpcListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lxy;->a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 92
    return-void
.end method

.method public final onAccessTokenInvalid(ILjava/lang/String;)V
    .locals 1
    .param p1, "methodType"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lxy;->onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 135
    return-void
.end method

.method public final onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .locals 5
    .param p1, "methodType"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p3, "rpcListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    const/16 v0, 0xfa0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lxn;->f()Lxx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lxn;->f()Lxx;

    move-result-object v0

    invoke-interface {v0, p2}, Lxx;->a(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "AlimeiAuthLifecycleListener"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "onAccessTokenInvalid : ---> method type  = OpenApiDomainType.DENTRY"

    aput-object v2, v1, v3

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p2, p3}, Lxy;->a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 144
    const-string/jumbo v0, "AlimeiAuthLifecycleListener"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "onAccessTokenInvalid : ---> method type: "

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onAccessTokenInvalid(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lxy;->onAccessTokenInvalid(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 97
    return-void
.end method

.method public final onAccessTokenInvalid(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "rpcListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lxy;->a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 103
    return-void
.end method

.method public final onAccountNotLogin(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 112
    const-string/jumbo v0, "AlimeiAuthLifecycleListener"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "account not login email:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p1}, Lxy;->a(Ljava/lang/String;)V

    .line 114
    return-void
.end method
