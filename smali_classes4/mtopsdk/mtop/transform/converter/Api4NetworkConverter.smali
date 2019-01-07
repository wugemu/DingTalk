.class public Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;
.super Lmtopsdk/mtop/transform/converter/AbstractNetworkConverter;
.source "Api4NetworkConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.Api4NetworkConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lmtopsdk/mtop/transform/converter/AbstractNetworkConverter;-><init>()V

    return-void
.end method

.method private buildRequestHeaders(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 116
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 118
    .restart local p2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->values()[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    move-result-object v0

    .local v0, "arr$":[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 119
    .local v1, "headerField":Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->getXstateKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 120
    .local v7, "reader":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->getHeadField()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "utf-8"

    invoke-static {v7, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v8

    const-string/jumbo v8, "mtopsdk.Api4NetworkConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[prepareRequestHeaders]urlencode "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->getHeadField()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v1    # "headerField":Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
    .end local v7    # "reader":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "lng"

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, "lngReader":Ljava/lang/String;
    const-string/jumbo v8, "lat"

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, "latReader":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v6, "location":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :try_start_1
    const-string/jumbo v8, "x-location"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .end local v6    # "location":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    return-object p2

    .line 138
    .restart local v6    # "location":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    const-string/jumbo v8, "mtopsdk.Api4NetworkConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[prepareRequestHeaders]urlencode x-location="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public convert(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;
    .locals 19
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;
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

    .prologue
    .line 37
    .local p2, "protocolParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 38
    new-instance v17, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct/range {v17 .. v17}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 41
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v15

    .line 42
    .local v15, "seqNo":Ljava/lang/String;
    new-instance v14, Lmo;

    invoke-direct {v14}, Lmo;-><init>()V

    .line 1233
    .local v14, "request":Lmo;
    iput-object v15, v14, Lmo;->f:Ljava/lang/String;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v13

    .line 46
    .local v13, "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->applyRequestBasicProperty(Llj;Lmtopsdk/mtop/common/MtopNetworkProp;)V

    .line 48
    invoke-virtual {v13}, Lmtopsdk/mtop/common/MtopNetworkProp;->getMethod()Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v9

    .line 49
    .local v9, "method":Lmtopsdk/mtop/domain/MethodEnum;
    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v17

    .line 2150
    move-object/from16 v0, v17

    iput-object v0, v14, Lmo;->c:Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-virtual {v13}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->buildRequestHeaders(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 55
    .local v8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v13, Lmtopsdk/mtop/common/MtopNetworkProp;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->appendUnitHeader(Ljava/util/Map;Lmtopsdk/mtop/unit/UserUnit;)V

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->appendMtopSdkProperty(Ljava/util/Map;)V

    .line 61
    const-string/jumbo v17, "api"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, "apiName":Ljava/lang/String;
    const-string/jumbo v17, "v"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "apiVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->getUnitPrefix(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/MtopProxy;)Ljava/lang/String;

    move-result-object v16

    .line 65
    .local v16, "unitPrefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/MtopProxy;->getFullBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "baseUrl":Ljava/lang/StringBuilder;
    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->createRequestParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 74
    .local v11, "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    sget-object v17, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual/range {v17 .. v17}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->appendContentTypeHeader(Ljava/util/Map;)V

    .line 78
    const-string/jumbo v17, "utf-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->createParamPostData(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object v12

    .line 80
    .local v12, "postData":[B
    if-eqz v12, :cond_1

    .line 81
    invoke-virtual/range {p0 .. p0}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->getGzipThreshold()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v8}, Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;->createGzipBodyHandler([BILjava/util/Map;)Lld;

    move-result-object v6

    .line 2194
    .local v6, "bodyHandler":Lld;
    new-instance v17, Lanetwork/channel/entity/BodyHandlerEntry;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>(Lld;)V

    move-object/from16 v0, v17

    iput-object v0, v14, Lmo;->e:Lanet/channel/request/BodyEntry;

    .line 84
    .end local v6    # "bodyHandler":Lld;
    :cond_1
    const/4 v11, 0x0

    .line 89
    .end local v12    # "postData":[B
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lmtopsdk/mtop/transform/converter/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/List;)Ljava/net/URL;

    move-result-object v10

    .line 91
    .local v10, "originUrl":Ljava/net/URL;
    if-eqz v10, :cond_2

    .line 92
    move-object/from16 v0, p1

    iget-object v0, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lmtopsdk/mtop/util/MtopStatistics;->domain:Ljava/lang/String;

    .line 2203
    :cond_2
    iput-object v10, v14, Lmo;->a:Ljava/net/URL;

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->createRequestHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v17

    .line 3082
    move-object/from16 v0, v17

    iput-object v0, v14, Lmo;->b:Ljava/util/List;

    .line 3174
    iput-object v11, v14, Lmo;->d:Ljava/util/List;

    .line 105
    .end local v3    # "apiName":Ljava/lang/String;
    .end local v4    # "apiVersion":Ljava/lang/String;
    .end local v5    # "baseUrl":Ljava/lang/StringBuilder;
    .end local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "originUrl":Ljava/net/URL;
    .end local v11    # "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    .end local v16    # "unitPrefix":Ljava/lang/String;
    :goto_1
    return-object v14

    .line 86
    .restart local v3    # "apiName":Ljava/lang/String;
    .restart local v4    # "apiVersion":Ljava/lang/String;
    .restart local v5    # "baseUrl":Ljava/lang/StringBuilder;
    .restart local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    .restart local v16    # "unitPrefix":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->appendCacheControlHeader(Ljava/util/Map;Lmtopsdk/mtop/MtopProxy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v3    # "apiName":Ljava/lang/String;
    .end local v4    # "apiVersion":Ljava/lang/String;
    .end local v5    # "baseUrl":Ljava/lang/StringBuilder;
    .end local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    .end local v16    # "unitPrefix":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v17, "mtopsdk.Api4NetworkConverter"

    const-string/jumbo v18, "[Api4NetworkConverter] convert Request failed!"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
