.class final Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;
.super Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.source "ServiceRequestsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildDentryUploadRequest(Ljava/lang/String;JJLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rangeEnd:J

.field final synthetic val$rangeStart:J

.field final synthetic val$uploadId:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->val$rangeStart:J

    iput-wide p3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->val$rangeEnd:J

    iput-object p5, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->val$uploadId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildRequestNameValuePairs()Ljava/util/List;
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
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "token"

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "rangeStart"

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->val$rangeStart:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->val$rangeEnd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 312
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "rangeEnd"

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->val$rangeEnd:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "uploadid"

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$8;->val$uploadId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    return-object v0
.end method

.method public final getRequestResultReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method
