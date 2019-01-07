.class public abstract Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.super Ljava/lang/Object;
.source "ServiceRequest.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private fp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/RandomUtils;->generateRpcUUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->fp:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract buildRequestNameValuePairs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->fp:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRequestResultReference()Ljava/lang/Object;
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->accessToken:Ljava/lang/String;

    .line 26
    return-void
.end method
