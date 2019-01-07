.class public Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "RpcAccountServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;


# static fields
.field private static final LOGIN_BY_ALILANGTOKEN:Ljava/lang/String; = "3"

.field private static final LOGIN_BY_LOGINTOKEN:Ljava/lang/String; = "2"

.field private static final LOGIN_WITH_PASSWORD:Ljava/lang/String; = "1"


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public apiLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "appname"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "appver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 75
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;>;"
    new-instance v5, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;

    invoke-direct {v5, p1}, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;-><init>(Ljava/lang/String;)V

    .line 76
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;)V

    .line 87
    .local v0, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v1

    sget-object v2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_API_LOCATION:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v3, 0x0

    invoke-direct {v6, p1, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 89
    .local v6, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v6, v0, p5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public getImageCheckCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "appname"    # Ljava/lang/String;
    .param p5, "appkey"    # Ljava/lang/String;
    .param p6, "appver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/ImageCheckcodeResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 168
    .local p7, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/ImageCheckcodeResult;>;"
    new-instance v5, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;-><init>()V

    .line 169
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;
    invoke-virtual {v5, p3}, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->setHeight(I)V

    .line 170
    invoke-virtual {v5, p2}, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->setWidth(I)V

    .line 171
    invoke-virtual {v5, p1}, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->setSessionId(Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$6;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$6;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;)V

    .line 186
    .local v0, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v2

    sget-object v3, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_IMAGECHECKCODE:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v4, 0x0

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 188
    .local v6, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v6, v0, p7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public getWebToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "timeOut"    # I
    .param p3, "meta"    # Ljava/lang/String;
    .param p4, "appname"    # Ljava/lang/String;
    .param p5, "appkey"    # Ljava/lang/String;
    .param p6, "appver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 250
    .local p7, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;>;"
    new-instance v5, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;-><init>()V

    .line 251
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;
    invoke-virtual {v5, p1}, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->setAccesstoken(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5, p2}, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->setTimeOut(I)V

    .line 253
    invoke-virtual {v5, p3}, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->setMeta(Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;)V

    .line 267
    .local v0, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v2

    sget-object v3, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_WEBTOKEN:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v4, 0x0

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 269
    .local v6, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v6, v0, p7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "appname"    # Ljava/lang/String;
    .param p5, "appkey"    # Ljava/lang/String;
    .param p6, "appver"    # Ljava/lang/String;
    .param p7, "umid"    # Ljava/lang/String;
    .param p8, "ua"    # Ljava/lang/String;
    .param p9, "uaTimestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    .local p10, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;
    new-instance v3, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$1;

    move-object v4, p0

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$1;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;)V

    .line 68
    .local v3, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_LOGIN:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x0

    invoke-direct {v9, p1, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 70
    .local v9, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    move-object/from16 v0, p10

    invoke-virtual {v9, v3, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public loginByExchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "loginToken"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "appname"    # Ljava/lang/String;
    .param p4, "appkey"    # Ljava/lang/String;
    .param p5, "appver"    # Ljava/lang/String;
    .param p6, "umid"    # Ljava/lang/String;
    .param p7, "ua"    # Ljava/lang/String;
    .param p8, "uaTimestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    .local p9, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 97
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;
    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->setLoginToken(Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$3;

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$3;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;)V

    .line 111
    .local v3, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_LOGIN:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x0

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 113
    .local v9, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    move-object/from16 v0, p9

    invoke-virtual {v9, v3, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public loginForAlilang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "alilangToken"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "appname"    # Ljava/lang/String;
    .param p4, "appkey"    # Ljava/lang/String;
    .param p5, "appver"    # Ljava/lang/String;
    .param p6, "umid"    # Ljava/lang/String;
    .param p7, "ua"    # Ljava/lang/String;
    .param p8, "uaTimestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    .local p9, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;
    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->setAlilangToken(Ljava/lang/String;)V

    .line 123
    new-instance v3, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$4;

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$4;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;)V

    .line 135
    .local v3, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_LOGIN:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x0

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 137
    .local v9, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    move-object/from16 v0, p9

    invoke-virtual {v9, v3, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "refreshToken"    # Ljava/lang/String;
    .param p2, "appname"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "appver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;>;"
    new-instance v5, Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;

    invoke-direct {v5, p1}, Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;-><init>(Ljava/lang/String;)V

    .line 145
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$5;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;)V

    .line 159
    .local v0, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v2

    sget-object v3, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_REFRESH_TOKEN:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v4, 0x0

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 161
    .local v6, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v6, v0, p5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public verifyImageCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "appname"    # Ljava/lang/String;
    .param p4, "appkey"    # Ljava/lang/String;
    .param p5, "appver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 195
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    new-instance v5, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;-><init>()V

    .line 196
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;
    invoke-virtual {v5, p1}, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;->setSessionId(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v5, p2}, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;->setCode(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$7;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$7;-><init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;)V

    .line 211
    .local v0, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->isAsynchronousService()Z

    move-result v2

    sget-object v3, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_IMAGECHECKCODE:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v4, 0x0

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 213
    .local v6, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v6, v0, p6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method
