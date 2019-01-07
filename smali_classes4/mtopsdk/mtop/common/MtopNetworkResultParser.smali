.class public Lmtopsdk/mtop/common/MtopNetworkResultParser;
.super Ljava/lang/Object;
.source "MtopNetworkResultParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopNetworkResultParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static cloneOriginMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "originMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p0, :cond_1

    .line 201
    const/4 v1, 0x0

    .line 214
    :cond_0
    return-object v1

    .line 203
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v1, "cloneMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 206
    .local v5, "originList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "cloneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 209
    .local v6, "str":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static parseJsonByteToMtopResponse([BLmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 0
    .param p0, "jsondata"    # [B
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 170
    return-object p1
.end method

.method public static parseNetworkRlt(Llk;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 6
    .param p0, "result"    # Llk;
    .param p1, "cacheResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;

    .prologue
    .line 145
    if-nez p0, :cond_1

    .line 146
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v1, "ANDROID_SYS_NETWORK_ERROR"

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v0, "response":Lmtopsdk/mtop/domain/MtopResponse;
    if-eqz p2, :cond_0

    .line 148
    iget-object v1, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 149
    iget-object v1, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 154
    .end local v0    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;

    invoke-interface {p0}, Llk;->getStatusCode()I

    move-result v3

    invoke-interface {p0}, Llk;->getConnHeadFields()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p0}, Llk;->getBytedata()[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;-><init>(ILjava/util/Map;[B)V

    invoke-static {v1, p1, p2, v2}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseNetworkRlt(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 7
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p1, "cacheResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;
    .param p3, "paramter"    # Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance p0, Lmtopsdk/mtop/domain/MtopResponse;

    .end local p0    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-direct {p0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>()V

    .line 56
    .restart local p0    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_0
    const/4 v4, 0x0

    .line 57
    .local v4, "seqNo":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 58
    iget-object v5, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 59
    iget-object v5, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 60
    iget-object v5, p2, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_1
    if-nez p3, :cond_3

    .line 64
    const-string/jumbo v5, "mtopsdk.MtopNetworkResultParser"

    const-string/jumbo v6, "[parseNetworkRlt]network response is invalid"

    invoke-static {v5, v4, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v5, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v5, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 133
    .end local p0    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_2
    :goto_0
    return-object p0

    .line 71
    .restart local p0    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_3
    iget v2, p3, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->responseCode:I

    .line 72
    .local v2, "responseCode":I
    iget-object v1, p3, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->header:Ljava/util/Map;

    .line 73
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setResponseCode(I)V

    .line 74
    invoke-virtual {p0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 75
    iget-object v5, p3, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->bytedata:[B

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setBytedata([B)V

    .line 78
    if-gez v2, :cond_5

    .line 80
    const/16 v5, -0xc8

    if-ne v5, v2, :cond_4

    .line 81
    const-string/jumbo v5, "ANDROID_SYS_NO_NETWORK"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v5, "\u65e0\u7f51\u7edc"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 88
    :goto_1
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "[parseNetworkRlt] api="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v5, ",v="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v5, ",retCode ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v5, ",responseCode ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v5, ",responseHeader="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v5, "mtopsdk.MtopNetworkResultParser"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v5, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v5, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_5
    invoke-static {v1, v4}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleXcommand(Ljava/util/Map;Ljava/lang/String;)V

    .line 104
    invoke-static {v1, v4}, Lmtopsdk/mtop/unit/UnitConfigManager;->parseUnitSettingHeader(Ljava/util/Map;Ljava/lang/String;)V

    .line 107
    invoke-static {p0, p2}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleDegradeStrategy(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/util/Result;

    move-result-object v3

    .line 108
    .local v3, "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Lmtopsdk/mtop/domain/MtopResponse;>;"
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmtopsdk/mtop/domain/MtopResponse;

    move-object p0, v5

    goto/16 :goto_0

    .line 113
    :cond_6
    invoke-static {p0, p1}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handle304Response(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/util/Result;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 115
    invoke-virtual {v3}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmtopsdk/mtop/domain/MtopResponse;

    move-object p0, v5

    goto/16 :goto_0

    .line 118
    :cond_7
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v5

    if-nez v5, :cond_8

    .line 119
    const-string/jumbo v5, "ANDROID_SYS_JSONDATA_BLANK"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v5, "\u8fd4\u56deJSONDATA\u4e3a\u7a7a"

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_8
    invoke-static {p0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseRetCodeFromResponseHeader(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v5

    invoke-virtual {v5}, Lmtopsdk/mtop/common/MtopNetworkProp;->isCorrectTimeStamp()Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    invoke-static {p0, p2}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleCorrectTimeStamp(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static parseRetCodeFromResponseHeader(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 3
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object p0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-retcode"

    invoke-static {v1, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "retCode":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    goto :goto_0
.end method
