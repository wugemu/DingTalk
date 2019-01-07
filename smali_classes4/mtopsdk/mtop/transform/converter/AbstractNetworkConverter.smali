.class public abstract Lmtopsdk/mtop/transform/converter/AbstractNetworkConverter;
.super Ljava/lang/Object;
.source "AbstractNetworkConverter.java"

# interfaces
.implements Lmtopsdk/mtop/transform/converter/INetworkConverter;


# static fields
.field private static final DEFAULT_GZIP_THRESHOLD:I = 0x400

.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendCacheControlHeader(Ljava/util/Map;Lmtopsdk/mtop/MtopProxy;)V
    .locals 2
    .param p2, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmtopsdk/mtop/MtopProxy;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lmtopsdk/mtop/transform/converter/AbstractNetworkConverter;->isUseCache(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v0, "cache-control"

    const-string/jumbo v1, "no-cache"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    return-void
.end method

.method protected appendContentTypeHeader(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 213
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "content-type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string/jumbo v0, "content-type"

    const-string/jumbo v1, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    return-void
.end method

.method protected appendMtopSdkProperty(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    .local p1, "mtopParamReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v4

    invoke-virtual {v4}, Lmtopsdk/mtop/global/SwitchConfig;->isMtopsdkPropertySwitchOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 150
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getMtopSdkProperties()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "mtopsdk."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    .local v3, "paramReader":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "paramReader":Ljava/lang/String;
    :catch_0
    move-exception v4

    const-string/jumbo v5, "mtopsdk.NetworkConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[appendMtopSdkProperty]get mtopsdk properties error,key="

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ",value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected appendUnitHeader(Ljava/util/Map;Lmtopsdk/mtop/unit/UserUnit;)V
    .locals 3
    .param p2, "userUnit"    # Lmtopsdk/mtop/unit/UserUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmtopsdk/mtop/unit/UserUnit;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-eqz p2, :cond_3

    sget-object v1, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v1}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v2}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p2, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const-string/jumbo v1, "x-unitinfo"

    iget-object v2, p2, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v0

    .line 200
    .local v0, "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string/jumbo v1, "x-m-unitapi-v"

    iget-object v2, v0, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    .end local v0    # "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    :cond_3
    const-string/jumbo v1, "x-unitinfo"

    sget-object v2, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v2}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected applyRequestBasicProperty(Llj;Lmtopsdk/mtop/common/MtopNetworkProp;)V
    .locals 1
    .param p1, "request"    # Llj;
    .param p2, "property"    # Lmtopsdk/mtop/common/MtopNetworkProp;

    .prologue
    .line 51
    iget v0, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    invoke-interface {p1, v0}, Llj;->b(I)V

    .line 52
    iget v0, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    invoke-interface {p1, v0}, Llj;->c(I)V

    .line 54
    invoke-virtual {p2}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRetryTime()I

    move-result v0

    invoke-interface {p1, v0}, Llj;->a(I)V

    .line 56
    invoke-virtual {p2}, Lmtopsdk/mtop/common/MtopNetworkProp;->isAutoRedirect()Z

    move-result v0

    invoke-interface {p1, v0}, Llj;->a(Z)V

    .line 58
    iget v0, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    invoke-interface {p1, v0}, Llj;->d(I)V

    .line 59
    return-void
.end method

.method public abstract convert(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Llj;"
        }
    .end annotation
.end method

.method protected createParamPostData(Ljava/util/List;Ljava/lang/String;)[B
    .locals 4
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, "postData":[B
    if-nez p1, :cond_0

    .line 113
    const/4 v2, 0x0

    .line 126
    :goto_0
    return-object v2

    .line 115
    :cond_0
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string/jumbo p2, "utf-8"

    .line 118
    :cond_1
    invoke-static {p1, p2}, Lmtopsdk/mtop/transform/converter/NetworkConverterUtils;->createParamQueryStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "queryStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 121
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v2, v0

    .line 126
    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    const-string/jumbo v2, "mtopsdk.NetworkConverter"

    const-string/jumbo v3, "[createParamPostData]getPostData error"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected createRequestHeaders(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    .local p1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 80
    :cond_1
    return-object v2

    .line 72
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Llc;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 75
    new-instance v1, Lmk;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lmk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v1, "header":Lmk;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected createRequestParams(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    .local p1, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 90
    :cond_0
    const/4 v3, 0x0

    .line 99
    :cond_1
    return-object v3

    .line 92
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lmtopsdk/mtop/protocol/DefaultStringParam;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lmtopsdk/mtop/protocol/DefaultStringParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v2, "param":Lli;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getGzipThreshold()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SwitchConfig;->getGlobalGzipThresholdSwitch()I

    move-result v0

    .line 179
    .local v0, "gzipThreshold":I
    if-gtz v0, :cond_0

    .line 180
    const/16 v0, 0x400

    .line 182
    :cond_0
    return v0
.end method

.method protected getUnitPrefix(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/MtopProxy;)Ljava/lang/String;
    .locals 5
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "apiVesion"    # Ljava/lang/String;
    .param p3, "proxy"    # Lmtopsdk/mtop/MtopProxy;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalUnitSwitchOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v2

    .line 274
    :cond_1
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    iget-object v3, p3, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    .line 279
    .local v1, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    if-eqz v1, :cond_0

    sget-object v3, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v3}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v4}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v0

    .line 283
    .local v0, "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lmtopsdk/mtop/unit/ApiUnit;->apilist:Ljava/util/HashSet;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lmtopsdk/mtop/unit/ApiUnit;->apilist:Ljava/util/HashSet;

    new-instance v4, Lmtopsdk/mtop/unit/ApiInfo;

    invoke-direct {v4, p1, p2}, Lmtopsdk/mtop/unit/ApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v2, v1, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method protected isUseCache(Lmtopsdk/mtop/MtopProxy;)Z
    .locals 4
    .param p1, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 162
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v1

    .line 163
    .local v1, "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v0

    .line 165
    .local v0, "callback":Lmtopsdk/mtop/common/MtopListener;
    instance-of v3, v0, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-nez v3, :cond_0

    instance-of v3, v0, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    if-nez v3, :cond_0

    .line 173
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
