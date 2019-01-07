.class public Lmtopsdk/mtop/util/ResponseHandlerUtil;
.super Ljava/lang/Object;
.source "ResponseHandlerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ResponseHandlerUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeTimeOffset(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 10
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v7, "x-systime"

    invoke-static {v6, v7}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "time":Ljava/lang/String;
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 115
    .local v2, "server_time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v4, v2, v6

    .line 116
    .local v4, "time_offset":J
    const-string/jumbo v6, "t_offset"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "time":Ljava/lang/String;
    .end local v2    # "server_time":J
    .end local v4    # "time_offset":J
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "mtopsdk.ResponseHandlerUtil"

    const-string/jumbo v7, "[computeTimeOffset]parse systime from mtop response data error"

    invoke-static {v6, v7, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static handle304Response(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/util/Result;
    .locals 3
    .param p0, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p1, "cacheResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Lmtopsdk/mtop/util/Result;

    invoke-direct {v1, p0}, Lmtopsdk/mtop/util/Result;-><init>(Ljava/lang/Object;)V

    .line 165
    .local v1, "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Lmtopsdk/mtop/domain/MtopResponse;>;"
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v0

    .line 167
    .local v0, "responseCode":I
    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {v1, p1}, Lmtopsdk/mtop/util/Result;->setModel(Ljava/lang/Object;)V

    .line 174
    :goto_0
    return-object v1

    .line 173
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/util/Result;->setSuccess(Z)V

    goto :goto_0
.end method

.method public static handleAntiAttack(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 4
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 p0, 0x0

    .line 53
    :goto_0
    return-object p0

    .line 44
    :cond_0
    sget-object v3, Lmtopsdk/mtop/MtopProxyBase;->antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 46
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v3, "location"

    invoke-static {v0, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "location":Ljava/lang/String;
    const-string/jumbo v3, "x-location-ext"

    invoke-static {v0, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "location_ext":Ljava/lang/String;
    sget-object v3, Lmtopsdk/mtop/MtopProxyBase;->antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    invoke-interface {v3, v1, v2}, Lmtopsdk/mtop/antiattack/AntiAttackHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "location_ext":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "ANDROID_SYS_API_41X_ANTI_ATTACK"

    invoke-virtual {p0, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v3, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-virtual {p0, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static handleCorrectTimeStamp(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;

    .prologue
    .line 93
    invoke-static {p0}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->computeTimeOffset(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 95
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setCorrectTimeStamp(Z)V

    .line 96
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->syncApiCall()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    return-object v0
.end method

.method public static handleDegradeStrategy(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/util/Result;
    .locals 6
    .param p0, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p1, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Lmtopsdk/mtop/MtopProxy;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Lmtopsdk/mtop/util/Result;

    invoke-direct {v1, p0}, Lmtopsdk/mtop/util/Result;-><init>(Ljava/lang/Object;)V

    .line 134
    .local v1, "result":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<Lmtopsdk/mtop/domain/MtopResponse;>;"
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v0

    .line 136
    .local v0, "responseCode":I
    const/16 v2, 0x1a4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f3

    if-eq v0, v2, :cond_0

    const/16 v2, 0x257

    if-ne v0, v2, :cond_2

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lmtopsdk/mtop/antiattack/ApiLockHelper;->lock(Ljava/lang/String;J)V

    .line 141
    :cond_1
    const-string/jumbo v2, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    invoke-virtual {p0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-object v1

    .line 144
    :cond_2
    const/16 v2, 0x1a3

    if-ne v0, v2, :cond_3

    .line 146
    invoke-static {p0}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleAntiAttack(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;

    goto :goto_0

    .line 149
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/util/Result;->setSuccess(Z)V

    goto :goto_0
.end method

.method public static handleXcommand(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "seqNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v3, "MTOP-X-Command_N"

    invoke-static {p0, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "xcmdNew":Ljava/lang/String;
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->getInstance()Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->onEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    const-string/jumbo v3, "x-orange-p-i"

    invoke-static {p0, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "xcmdOrange":Ljava/lang/String;
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :try_start_1
    invoke-static {}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->getInstance()Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->onOrangeEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :cond_1
    :goto_1
    return-void

    .line 67
    .end local v2    # "xcmdOrange":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.ResponseHandlerUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[handleXcommand]parse header field MTOP-X-Command_N error,xcmdNew="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "xcmdOrange":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 77
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.ResponseHandlerUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[handleXcommand]parse header field x-orange-p error,xcmdOrange="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
