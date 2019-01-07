.class public Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
.super Ljava/lang/Object;
.source "ServiceClientProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceClientProxy"


# instance fields
.field private lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

.field private mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

.field private okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

.field private serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "asynchronous"    # Z
    .param p3, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "isAttachAuthInfo"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v3, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    iput-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    .line 50
    new-instance v3, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    iput-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    .line 51
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .line 53
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isLWPEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getInjectServiceClient()Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;>;"
    const/4 v3, 0x4

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 57
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;>;"
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    iput-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 68
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;>;"
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;>;"
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private getApiMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getFp()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private isHttpDnsEnable()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    .line 247
    .local v0, "configuration":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    if-nez v0, :cond_0

    .line 248
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "ServiceClientProxy"

    const-string/jumbo v4, "isHttpDnsEnable method fail for configuration is null"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/robot/ARFRobotUtils;->coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "ServiceClientProxy"

    const-string/jumbo v3, "isHttpDnsEnable method fail for configuration is null"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "f_config_cmail_okhttp_enable"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->isFeatureOpen(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private isLWPEnabled()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-nez v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getInjectServiceClient()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDomainType()I

    move-result v2

    const/16 v3, 0xfa0

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .line 211
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDomainType()I

    move-result v2

    const/16 v3, 0x1770

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .line 212
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDomainType()I

    move-result v2

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_0

    .line 216
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    .line 217
    .local v0, "configuration":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    if-nez v0, :cond_2

    .line 218
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "ServiceClientProxy"

    const-string/jumbo v4, "isLWPEnabled method fail for configuration is null"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/robot/ARFRobotUtils;->coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v2, "ServiceClientProxy"

    const-string/jumbo v3, "isLWPEnabled method fail for configuration is null"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    const-string/jumbo v2, "f_config_cmail_lwp_enable"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->isFeatureOpen(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;JJLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "JJ",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 115
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const-string/jumbo v0, "ServiceClientProxy"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "doGetChunked apiMethod: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getApiMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fp: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", netInfo: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->getNetInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    move-object v2, p1

    move-object v3, p6

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isHttpDnsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    move-object v2, p1

    move-object v3, p6

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    move-object v2, p1

    move-object v3, p6

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0
.end method

.method public doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const-string/jumbo v1, "ServiceClientProxy"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "doGet apiMethod: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getApiMethod()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fp: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", netInfo: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->getNetInfo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isLWPEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    .line 99
    .local v0, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    .end local v0    # "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v1, v1, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v2, 0xfa0

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isHttpDnsEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0
.end method

.method public doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 128
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const-string/jumbo v1, "ServiceClientProxy"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "doPost apiMethod: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getApiMethod()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fp: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", netInfo: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->getNetInfo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isLWPEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    .line 131
    .local v0, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    .end local v0    # "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v1, v1, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v2, 0xfa0

    if-ne v1, v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isHttpDnsEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0
.end method

.method public doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const-string/jumbo v0, "ServiceClientProxy"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "doPostWebmailRequest apiMethod: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getApiMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fp: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", netInfo: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->getNetInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isHttpDnsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0
.end method

.method public doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p3, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local p4, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const-string/jumbo v0, "ServiceClientProxy"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "doPostWithAttachmentFile apiMethod: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getApiMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fp: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", netInfo: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->getNetInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isHttpDnsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0
.end method

.method public doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const-string/jumbo v0, "ServiceClientProxy"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "doPostWithFile apiMethod: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getApiMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fp: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", netInfo: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->getNetInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isHttpDnsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0
.end method

.method public doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 162
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const-string/jumbo v0, "ServiceClientProxy"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "doPostWithFiles apiMethod: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getApiMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fp: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->getFp(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", netInfo: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->getNetInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->mOpenApiMethod:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isHttpDnsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    goto :goto_0
.end method

.method public setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isLWPEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V

    .line 80
    return-void
.end method

.method public setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->isLWPEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->lwpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->serviceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->okhttpServiceClient:Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 93
    return-void
.end method
