.class Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;


# static fields
.field private static final INTERNAL_ACCOUNT_NAME:Ljava/lang/String; = "_NOACCOUNTNAME"


# instance fields
.field private final mAuthStore:Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

.field private final mListener:Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthStore;Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;)V
    .locals 0
    .param p1, "store"    # Lcom/alibaba/alimei/restfulapi/auth/AuthStore;
    .param p2, "listener"    # Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mAuthStore:Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    .line 41
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mListener:Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;)Lcom/alibaba/alimei/restfulapi/auth/AuthStore;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mAuthStore:Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    return-object v0
.end method


# virtual methods
.method public apiLocation(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "asynchronous"    # Z
    .param p2, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 111
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;>;"
    const-string/jumbo v1, "_NOACCOUNTNAME"

    invoke-static {v1, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v0

    .line 112
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v6

    .line 113
    .local v6, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-interface {v6}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "appname":Ljava/lang/String;
    invoke-interface {v6}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "appkey":Ljava/lang/String;
    invoke-interface {v6}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .local v4, "appver":Ljava/lang/String;
    move-object v1, p2

    move-object v5, p3

    .line 116
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->apiLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mListener:Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    return-object v0
.end method

.method public getAuthStore()Lcom/alibaba/alimei/restfulapi/auth/AuthStore;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mAuthStore:Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    return-object v0
.end method

.method public getImageCheckCode(ZLjava/lang/String;IILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .param p1, "asynchronous"    # Z
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/ImageCheckcodeResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 299
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/ImageCheckcodeResult;>;"
    const-string/jumbo v1, "_NOACCOUNTNAME"

    invoke-static {v1, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v0

    .line 300
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v8

    .line 301
    .local v8, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-interface {v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "appname":Ljava/lang/String;
    invoke-interface {v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "appkey":Ljava/lang/String;
    invoke-interface {v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    .local v6, "appver":Ljava/lang/String;
    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v7, p5

    .line 304
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->getImageCheckCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public getWebToken(ZLjava/lang/String;ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .param p1, "asynchronous"    # Z
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "timeOut"    # I
    .param p4, "meta"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 321
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;>;"
    const-string/jumbo v1, "_NOACCOUNTNAME"

    invoke-static {v1, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v0

    .line 322
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v8

    .line 323
    .local v8, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-interface {v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "appname":Ljava/lang/String;
    invoke-interface {v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "appkey":Ljava/lang/String;
    invoke-interface {v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    .local v6, "appver":Ljava/lang/String;
    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v7, p5

    .line 326
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->getWebToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public login(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 14
    .param p1, "asynchronous"    # Z
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v2

    .line 48
    .local v2, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    new-instance v12, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$1;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {v12, p0, v0, v1}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$1;-><init>(Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 102
    .local v12, "callbackWrapper":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v13

    .line 103
    .local v13, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "uaTimestamp":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mAuthStore:Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthStore;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-interface {v13}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getSecurity_umid()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-interface {v13, v11}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getSecurity_ua(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 104
    invoke-interface/range {v2 .. v12}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public loginForAlilang(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 11
    .param p1, "asynchronous"    # Z
    .param p2, "alilangToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    const-string/jumbo v1, "_NOACCOUNTNAME"

    invoke-static {v1, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v0

    .line 190
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    new-instance v9, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$3;

    invoke-direct {v9, p0, p3}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$3;-><init>(Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 241
    .local v9, "callbackWrapper":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v10

    .line 242
    .local v10, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, "uaTimestamp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getSecurity_umid()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-interface {v10, v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getSecurity_ua(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p2

    .line 243
    invoke-interface/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->loginForAlilang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public loginWithThirdToken(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 11
    .param p1, "asynchronous"    # Z
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "thirdToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 122
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    invoke-static {p2, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v0

    .line 123
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    new-instance v9, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$2;

    invoke-direct {v9, p0, p2, p4}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$2;-><init>(Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 178
    .local v9, "callbackWrapper":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v10

    .line 179
    .local v10, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "uaTimestamp":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mAuthStore:Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    invoke-interface {v1, p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthStore;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getSecurity_umid()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-interface {v10, v8}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getSecurity_ua(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p3

    .line 180
    invoke-interface/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->loginByExchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public refreshToken(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "asynchronous"    # Z
    .param p2, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    invoke-static {p2, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v0

    .line 252
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    new-instance v5, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;

    invoke-direct {v5, p0, p2, p3}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;-><init>(Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 283
    .local v5, "callbackWrapper":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v6

    .line 284
    .local v6, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->mAuthStore:Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    invoke-interface {v2, p2}, Lcom/alibaba/alimei/restfulapi/auth/AuthStore;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "refreshToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    if-eqz p3, :cond_0

    .line 287
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v3, 0x452

    const-string/jumbo v4, "refreshToken is null"

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    invoke-interface {p3, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 288
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 291
    :goto_0
    return-object v2

    .line 292
    :cond_0
    invoke-interface {v6}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    goto :goto_0
.end method

.method public verifyImageCheckCode(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "asynchronous"    # Z
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 310
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    const-string/jumbo v1, "_NOACCOUNTNAME"

    invoke-static {v1, p1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    move-result-object v0

    .line 311
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v7

    .line 312
    .local v7, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-interface {v7}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "appname":Ljava/lang/String;
    invoke-interface {v7}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "appkey":Ljava/lang/String;
    invoke-interface {v7}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    .local v5, "appver":Ljava/lang/String;
    move-object v1, p2

    move-object v2, p3

    move-object v6, p4

    .line 315
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;->verifyImageCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method
