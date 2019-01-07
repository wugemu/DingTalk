.class public Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppBizHttpProviderImpl;
.super Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;
.source "H5AppBizHttpProviderImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppBizHttpProviderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;-><init>()V

    return-void
.end method

.method private appReqToParam(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
    .locals 6
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->system:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    const-string/jumbo v4, "system"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->system:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->client:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    const-string/jumbo v4, "client"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->client:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->sdk:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 56
    const-string/jumbo v4, "sdk"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->sdk:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->platform:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 60
    const-string/jumbo v4, "platform"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->platform:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 64
    const-string/jumbo v4, "env"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_4
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->channel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 68
    const-string/jumbo v4, "channel"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->channel:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_5
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 72
    const-string/jumbo v4, "query"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_6
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 76
    const-string/jumbo v4, "bundleid"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_7
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->existed:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 80
    const-string/jumbo v4, "existed"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->existed:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_8
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->grayRules:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 84
    const-string/jumbo v4, "grayRules"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->grayRules:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_9
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 89
    const-string/jumbo v4, "stableRpc"

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 97
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    const-string/jumbo v4, "stableRpc"

    const-string/jumbo v5, "NO"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 105
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "params":Ljava/lang/String;
    return-object v2
.end method

.method private rpcCall(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
    .locals 6
    .param p1, "req"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    const-string/jumbo v0, "https://nebula.alipay.com/api/app"

    .line 29
    .local v0, "appReqUrl":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->httpReqUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->httpReqUrl:Ljava/lang/String;

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppBizHttpProviderImpl;->appReqToParam(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "reqString":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;-><init>()V

    .line 37
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->url(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->body(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->execute()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "data":Ljava/lang/String;
    const-string/jumbo v3, "H5AppBizHttpProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reqString "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppBizHttpProviderImpl;->rpcCall(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
