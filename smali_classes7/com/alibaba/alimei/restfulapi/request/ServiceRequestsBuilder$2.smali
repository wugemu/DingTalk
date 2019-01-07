.class final Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$2;
.super Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.source "ServiceRequestsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildAvatarDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eTag:Ljava/lang/String;

.field final synthetic val$innerRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$2;->val$innerRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$2;->val$eTag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildRequestNameValuePairs()Ljava/util/List;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 170
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$2;->val$innerRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$2;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$2;->val$innerRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "If-None-Match"

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$2;->val$eTag:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object v0
.end method

.method public final getRequestResultReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method
