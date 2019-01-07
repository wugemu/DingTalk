.class public Lcom/alibaba/alimei/restfulapi/service/impl/PreviewServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "PreviewServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcPreviewService;


# static fields
.field private static final BIZ_SPACE:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getPreviewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "attachId"    # Ljava/lang/String;
    .param p2, "biztype"    # Ljava/lang/String;
    .param p3, "bizid"    # Ljava/lang/String;
    .param p4, "objectid"    # Ljava/lang/String;
    .param p5, "attachmentName"    # Ljava/lang/String;
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
            "Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/PreviewServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildPreviewRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v7

    .line 29
    .local v7, "request":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v6, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/PreviewServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/PreviewServiceImpl;->isAsynchronousService()Z

    move-result v2

    const-string/jumbo v0, "file"

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SPACE_PREVIEW_GET_URL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    :goto_0
    const/4 v3, 0x1

    invoke-direct {v6, v1, v2, v0, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 31
    .local v6, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/preview/PreviewUrlParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/preview/PreviewUrlParser;-><init>()V

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 33
    invoke-virtual {v6, v7, p6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0

    .line 30
    .end local v6    # "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_PREVIEW_GET_URL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    goto :goto_0
.end method
