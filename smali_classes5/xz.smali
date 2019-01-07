.class public final Lxz;
.super Ljava/lang/Object;
.source "AlimeiAuthStore.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/account/datasource/AccountCacheOperator;
.implements Lcom/alibaba/alimei/restfulapi/auth/AuthStore;


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxz;->c:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxz;->a:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method private static a(Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 1
    .param p0, "authInfo"    # Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    .param p1, "model"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 207
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->refreshToken:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->nickname:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->userId:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->masterAccount:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->masterAccount:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->extend:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->extendList:Ljava/util/List;

    .line 215
    :cond_0
    return-void
.end method

.method private c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lxz;->d:Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    iput-object v0, p0, Lxz;->d:Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 43
    :cond_0
    iget-object v0, p0, Lxz;->d:Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v1, :cond_1

    .line 107
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    .line 108
    .local v0, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 113
    .end local v0    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :goto_0
    return-object v1

    .line 111
    .restart local v0    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    iput-object v1, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 113
    .end local v0    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :cond_1
    iget-object v1, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    goto :goto_0
.end method

.method public final declared-synchronized a(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "accountName":Ljava/lang/String;
    iget-object v4, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 70
    .local v3, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 78
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v3    # "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 74
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    .line 75
    .local v0, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_1
    if-eqz v0, :cond_2

    .line 76
    iget-object v4, p0, Lxz;->a:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v3, v0

    .line 78
    goto :goto_0

    .line 74
    .end local v0    # "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_3
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountById(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 66
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 50
    monitor-enter p0

    if-nez p1, :cond_0

    .line 62
    :goto_0
    monitor-exit p0

    return-object v1

    .line 53
    :cond_0
    :try_start_0
    iget-object v2, p0, Lxz;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v1, p0, Lxz;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 57
    .local v0, "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    :goto_1
    if-eqz v0, :cond_2

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "load authInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->d(Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lxz;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v1, v0

    .line 62
    goto :goto_0

    .line 56
    .end local v0    # "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    :cond_3
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->loadAuthInfoByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final b(J)Lcom/alibaba/alimei/framework/db/HostAuth;
    .locals 1
    .param p1, "hostAuthId"    # J

    .prologue
    .line 164
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getHostAuthById(J)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-object v1

    .line 91
    :cond_0
    :try_start_1
    const-string/jumbo v1, "AlimeiAuthStore"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadUserAccount query from datasource:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 95
    .local v0, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_1
    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lxz;->a:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 98
    goto :goto_0

    .line 94
    .end local v0    # "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_2
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 172
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getAccountByName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized deleteAccountFromCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lxz;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 255
    if-nez p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v1

    .line 258
    :cond_1
    invoke-virtual {p0, p1}, Lxz;->a(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    move-result-object v0

    .line 259
    .local v0, "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    if-eqz v0, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "accessToken = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->d(Ljava/lang/String;)I

    .line 264
    iget-object v1, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lxz;->a(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    move-result-object v0

    .line 281
    .local v0, "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    if-nez v0, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 284
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->deviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lxz;->a(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    move-result-object v0

    .line 270
    .local v0, "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    if-nez v0, :cond_0

    .line 271
    const-string/jumbo v1, "get refreshToken fail for authInfo is null"

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    .line 272
    const/4 v1, 0x0

    .line 275
    :goto_0
    return-object v1

    .line 274
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshToken = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->d(Ljava/lang/String;)I

    .line 275
    iget-object v1, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public final declared-synchronized storeAuth(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Ljava/lang/Object;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "authInfo"    # Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    move-object v3, p1

    .local v3, "realAccountName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    iget-object v3, p2, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->email:Ljava/lang/String;

    .line 181
    :cond_0
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v4

    invoke-interface {v4, v3, p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->storeAuthInfo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v2

    .line 182
    .local v2, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    if-eqz v2, :cond_1

    .line 184
    iget-object v4, p0, Lxz;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    .line 185
    .local v0, "cacheAuthInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    if-eqz v0, :cond_1

    .line 186
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    .line 187
    iget-wide v4, p2, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->expiredTime:J

    iput-wide v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->expiredTime:J

    .line 188
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    .line 189
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->nickname:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->nickname:Ljava/lang/String;

    .line 190
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->avatarAddr:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->avatarAddr:Ljava/lang/String;

    .line 191
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->extend:Ljava/util/List;

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->extend:Ljava/util/List;

    .line 196
    .end local v0    # "cacheAuthInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    :cond_1
    iget-object v4, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {p2, v4}, Lxz;->a(Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 198
    iget-object v1, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 199
    .local v1, "defaultAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-static {p2, v1}, Lxz;->a(Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_2
    monitor-exit p0

    return-object v2

    .line 176
    .end local v1    # "defaultAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v2    # "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized storeRefreshAuth(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Ljava/lang/Object;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "refreshAuthInfo"    # Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lxz;->c()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->updateAuthInfo(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Lcom/alibaba/alimei/framework/db/HostAuth;

    move-result-object v2

    .line 221
    .local v2, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    iget-object v4, p0, Lxz;->c:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lxz;->c:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    .line 224
    .local v0, "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    .line 225
    iget-wide v4, p2, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->expiredTime:J

    iput-wide v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->expiredTime:J

    .line 228
    .end local v0    # "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    :cond_0
    iget-object v4, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    iget-object v4, p0, Lxz;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 230
    .local v3, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    .line 232
    .end local v3    # "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    iget-object v1, p0, Lxz;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 233
    .local v1, "defaultAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    iget-object v4, p2, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_2
    monitor-exit p0

    return-object v2

    .line 220
    .end local v1    # "defaultAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v2    # "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
