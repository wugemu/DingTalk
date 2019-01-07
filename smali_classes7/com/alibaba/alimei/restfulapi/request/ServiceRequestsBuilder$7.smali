.class final Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;
.super Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.source "ServiceRequestsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildChunkedDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attachId:Ljava/lang/String;

.field final synthetic val$bizId:Ljava/lang/String;

.field final synthetic val$bizType:Ljava/lang/String;

.field final synthetic val$end:J

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$attachId:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$bizType:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$bizId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$objectId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$start:J

    iput-wide p7, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$end:J

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
    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "token"

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$attachId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "attachid"

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$attachId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "biztype"

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$bizType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$bizId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "bizid"

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$bizId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "objectid"

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$objectId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "rangeStart"

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$start:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "rangeEnd"

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder$7;->val$end:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    return-object v0
.end method

.method public final getRequestResultReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method
