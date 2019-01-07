.class Lxl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "AccountApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/account/AccountApi;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "AccountApiImpl"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private static a()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    return-object v0
.end method

.method static synthetic a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .locals 1
    .param p0, "x0"    # Lxl;

    .prologue
    .line 49
    invoke-static {}, Lxl;->a()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lxl;Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;Lxz;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 2
    .param p0, "x0"    # Lxl;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .param p2, "x2"    # Lxz;
    .param p3, "x3"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 49
    .line 1374
    if-eqz p3, :cond_1

    .line 1377
    if-eqz p2, :cond_0

    .line 1378
    iget-object v0, p3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lxz;->deleteAccountFromCache(Ljava/lang/String;)V

    .line 1380
    :cond_0
    iget-object v0, p3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->handleAccountDelete(Ljava/lang/String;Z)I

    .line 1381
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    .line 2226
    if-eqz p3, :cond_1

    .line 2227
    iget-object v0, v0, Lxr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2228
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 2230
    invoke-interface {v0, p3}, Lcom/alibaba/alimei/framework/account/AccountListener;->onAccountLogout(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method static synthetic a(Lxl;ZLjava/lang/String;ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 4
    .param p0, "x0"    # Lxl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .prologue
    const/4 v3, 0x0

    .line 49
    .line 1232
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "isAlilang:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", isToken:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 1233
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1232
    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 1235
    if-eqz p1, :cond_0

    .line 1236
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    invoke-interface {v0, v3, p2, p5}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->loginForAlilang(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1239
    :goto_0
    return-void

    .line 1238
    :cond_0
    if-eqz p3, :cond_1

    .line 1239
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    invoke-interface {v0, v3, p4, p2, p5}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->loginWithThirdToken(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_0

    .line 1241
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    invoke-interface {v0, v3, p4, p2, p5}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->login(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V
    .locals 8
    .param p1, "judgmentRepeatedLogin"    # Z
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "passwordOrToken"    # Ljava/lang/String;
    .param p4, "asDefaultAccount"    # Z
    .param p6, "isToken"    # Z
    .param p7, "isAlilang"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 122
    .local p5, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    new-instance v0, Lxl$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p7

    move-object v6, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lxl$1;-><init>(Lxl;ZLjava/lang/String;ZZLjava/lang/String;Z)V

    .line 225
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    invoke-virtual {p0, v0, p5}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 226
    return-void
.end method


# virtual methods
.method public getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 556
    .local v1, "store":Lxz;
    if-nez v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-object v2

    .line 559
    :cond_1
    invoke-virtual {v1, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 560
    .local v0, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    .line 561
    iget-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getAccountName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "AccountApiImpl do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultAccessToken()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 496
    .local v1, "store":Lxz;
    if-nez v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-object v2

    .line 499
    :cond_1
    invoke-virtual {v1}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 500
    .local v0, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultAccountName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 485
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 486
    .local v1, "store":Lxz;
    const/4 v0, 0x0

    .line 487
    .local v0, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v1}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 490
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 476
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    .line 477
    .local v0, "store":Lxz;
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    .line 480
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    goto :goto_0
.end method

.method public getImageCheckCode(Ljava/lang/String;IILxv;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;>;"
    new-instance v0, Lxl$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lxl$6;-><init>(Lxl;Ljava/lang/String;II)V

    .line 697
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;>;"
    invoke-virtual {p0, v0, p4}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 698
    return-void
.end method

.method public getWebToken(Ljava/lang/String;ILjava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "timeOut"    # I
    .param p3, "meta"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/WebTokenModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/WebTokenModel;>;"
    new-instance v0, Lxl$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lxl$8;-><init>(Lxl;Ljava/lang/String;ILjava/lang/String;)V

    .line 767
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/framework/model/WebTokenModel;>;"
    invoke-virtual {p0, v0, p4}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 768
    return-void
.end method

.method public hasAccountLogin()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 438
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 439
    .local v1, "store":Lxz;
    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v1}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 441
    .local v2, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v2, :cond_0

    .line 442
    const/4 v3, 0x1

    .line 451
    .end local v2    # "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_0
    return v3

    .line 446
    :cond_0
    invoke-static {}, Lxl;->a()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    .line 448
    .local v0, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    if-nez v0, :cond_1

    .line 449
    const/4 v3, 0x0

    goto :goto_0

    .line 451
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->hasAccountLogin()Z

    move-result v3

    goto :goto_0
.end method

.method public hasLogin(Ljava/lang/String;)Z
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 457
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 458
    .local v1, "store":Lxz;
    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 460
    .local v2, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v2, :cond_0

    .line 471
    .end local v2    # "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_0
    return v3

    .line 465
    :cond_0
    const-string/jumbo v5, "AccountApiImpl"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "hasLogin query from datasource, "

    aput-object v7, v6, v4

    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lxl;->a()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    .line 467
    .local v0, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    if-nez v0, :cond_1

    .line 468
    const-string/jumbo v3, "AccountApiImpl"

    const-string/jumbo v5, "AccountDatasource == null"

    invoke-static {v3, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 469
    goto :goto_0

    .line 471
    :cond_1
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->hasLogin(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 69
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v1

    move-object v5, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V

    .line 70
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "asDefaultAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    const/4 v6, 0x0

    .line 75
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V

    .line 76
    return-void
.end method

.method public loginAllowReplace(Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "asDefaultAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    const/4 v1, 0x0

    .line 82
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V

    .line 83
    return-void
.end method

.method public loginForAlilang(Ljava/lang/String;Lxv;)V
    .locals 8
    .param p1, "alilangToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 100
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    move v6, v1

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V

    .line 101
    return-void
.end method

.method public loginForAlilang(Ljava/lang/String;ZLxv;)V
    .locals 8
    .param p1, "alilangToken"    # Ljava/lang/String;
    .param p2, "asDefaultAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V

    .line 107
    return-void
.end method

.method public loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "thirdAccessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 88
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, v4

    move v7, v1

    invoke-direct/range {v0 .. v7}, Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V

    .line 89
    return-void
.end method

.method public loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "thirdAccessToken"    # Ljava/lang/String;
    .param p3, "asDefaultAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    const/4 v1, 0x0

    .line 94
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, v1

    invoke-direct/range {v0 .. v7}, Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V

    .line 95
    return-void
.end method

.method public logout(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lxl$14;

    invoke-direct {v0, p0, p1}, Lxl$14;-><init>(Lxl;Ljava/lang/String;)V

    .line 347
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 348
    return-void
.end method

.method public logoutAll(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lxl$15;

    invoke-direct {v0, p0}, Lxl$15;-><init>(Lxl;)V

    .line 370
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p1}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 371
    return-void
.end method

.method public queryAccount(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 505
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 506
    .local v1, "store":Lxz;
    const/4 v0, 0x0

    .line 507
    .local v0, "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v1, p1, p2}, Lxz;->a(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 510
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "model":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    return-object v0
.end method

.method public queryAccountByName(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    new-instance v0, Lxl$19;

    invoke-direct {v0, p0, p1}, Lxl$19;-><init>(Lxl;Ljava/lang/String;)V

    .line 538
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    invoke-virtual {p0, v0, p2}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 539
    return-void
.end method

.method public queryAccountByNameSync(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 543
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    .line 544
    .local v2, "store":Lxz;
    if-nez v2, :cond_0

    .line 545
    invoke-static {}, Lxl;->a()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    .line 546
    .local v1, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    invoke-interface {v1, p1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 549
    .end local v1    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :goto_0
    return-object v0

    .line 548
    :cond_0
    invoke-virtual {v2, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 549
    .local v0, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    goto :goto_0
.end method

.method public queryAccountSetting(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/AccountSettingModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/AccountSettingModel;>;"
    new-instance v0, Lxl$5;

    invoke-direct {v0, p0, p1}, Lxl$5;-><init>(Lxl;Ljava/lang/String;)V

    .line 660
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/framework/model/AccountSettingModel;>;"
    invoke-virtual {p0, v0, p2}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 661
    return-void
.end method

.method public queryAllAccounts(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;>;"
    new-instance v0, Lxl$18;

    invoke-direct {v0, p0}, Lxl$18;-><init>(Lxl;)V

    .line 524
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 525
    return-void
.end method

.method public refreshAllAccountToken(JLxv;)V
    .locals 1
    .param p1, "expireDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lxl$13;

    invoke-direct {v0, p0, p1, p2}, Lxl$13;-><init>(Lxl;J)V

    .line 330
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 331
    return-void
.end method

.method public refreshToken(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    new-instance v0, Lxl$12;

    invoke-direct {v0, p0, p1}, Lxl$12;-><init>(Lxl;Ljava/lang/String;)V

    .line 284
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    invoke-virtual {p0, v0, p2}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 285
    return-void
.end method

.method public removeAccount(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lxl$16;

    invoke-direct {v0, p0, p1}, Lxl$16;-><init>(Lxl;Ljava/lang/String;)V

    .line 411
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 412
    return-void
.end method

.method public setDefaultAccount(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lxl$17;

    invoke-direct {v0, p0, p1}, Lxl$17;-><init>(Lxl;Ljava/lang/String;)V

    .line 432
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 433
    return-void
.end method

.method public updateAccountSetting(Ljava/lang/String;Lcom/alibaba/alimei/framework/model/AccountSettingModel;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "setting"    # Lcom/alibaba/alimei/framework/model/AccountSettingModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/framework/model/AccountSettingModel;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lxl$2;

    invoke-direct {v0, p0, p1, p2}, Lxl$2;-><init>(Lxl;Ljava/lang/String;Lcom/alibaba/alimei/framework/model/AccountSettingModel;)V

    .line 589
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 590
    return-void
.end method

.method public updateDisplayName(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 772
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 773
    :cond_0
    if-eqz p3, :cond_1

    .line 774
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 797
    :cond_1
    :goto_0
    return-void

    .line 778
    :cond_2
    new-instance v0, Lxl$9;

    invoke-direct {v0, p0, p1, p2, p1}, Lxl$9;-><init>(Lxl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public updateFolderSynckey(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "syncKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 801
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v0, Lxl$10;

    invoke-direct {v0, p0, p1, p2}, Lxl$10;-><init>(Lxl;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public updateForwardWithAttachments(Ljava/lang/String;ZLxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isForwardWithAttachments"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lxl$4;

    invoke-direct {v0, p0, p1, p2}, Lxl$4;-><init>(Lxl;Ljava/lang/String;Z)V

    .line 627
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 628
    return-void
.end method

.method public updateSignature(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lxl$3;

    invoke-direct {v0, p0, p1, p2}, Lxl$3;-><init>(Lxl;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 610
    return-void
.end method

.method public updateTagSynckey(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "syncKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 817
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    :goto_0
    return-void

    .line 821
    :cond_0
    new-instance v0, Lxl$11;

    invoke-direct {v0, p0, p1, p2}, Lxl$11;-><init>(Lxl;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public verifyImageCheckCode(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lxl$7;

    invoke-direct {v0, p0, p1, p2}, Lxl$7;-><init>(Lxl;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p3}, Lxl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 731
    return-void
.end method
