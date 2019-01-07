.class Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;
.super Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.source "RpcAccountServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->getWebToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$appname:Ljava/lang/String;

.field final synthetic val$appver:Ljava/lang/String;

.field final synthetic val$requestData:Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$appname:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$appkey:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$appver:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$requestData:Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildRequestNameValuePairs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 257
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$appname:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$appkey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$appver:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$8;->val$requestData:Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;

    .line 258
    invoke-virtual {v5}, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->toJson()Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildLoginNameValuePairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 259
    .local v0, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    return-object v0
.end method

.method public getRequestResultReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method
