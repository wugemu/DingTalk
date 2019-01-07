.class Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;
.super Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.source "RpcAccountServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;->apiLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
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

.field final synthetic val$requestData:Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->this$0:Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$appname:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$appkey:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$appver:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$requestData:Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildRequestNameValuePairs()Ljava/util/List;
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$appname:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$appkey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$appver:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl$2;->val$requestData:Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildApiLocationNameValuePairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    .local v0, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    return-object v0
.end method

.method public getRequestResultReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method
