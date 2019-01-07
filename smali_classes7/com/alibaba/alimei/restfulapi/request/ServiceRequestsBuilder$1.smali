.class final Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;
.super Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.source "ServiceRequestsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$reference:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;->val$data:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;->val$reference:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildRequestNameValuePairs()Ljava/util/List;
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
    .line 131
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    .line 133
    .local v0, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "accesstoken"

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;->val$data:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 138
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "data"

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;->val$data:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "appName"

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 146
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "appVer"

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_3
    return-object v1
.end method

.method public final getRequestResultReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$1;->val$reference:Ljava/lang/Object;

    return-object v0
.end method
