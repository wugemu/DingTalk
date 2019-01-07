.class public Lcom/alibaba/alimei/restfulapi/service/impl/VoipServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "VoipServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcVoipService;


# static fields
.field private static final JSON_FORMAT_TARGETACCOUNT:Ljava/lang/String; = "{\"targetAccount\":\"%s\"}"


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getTargetStatus(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "targetAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/VoipStatus;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/VoipStatus;>;"
    const/4 v5, 0x1

    .line 30
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/VoipServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/VoipServiceImpl;->isAsynchronousService()Z

    move-result v3

    sget-object v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_VOIP_STATUS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 32
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    const-string/jumbo v2, "{\"targetAccount\":\"%s\"}"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/VoipServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method
