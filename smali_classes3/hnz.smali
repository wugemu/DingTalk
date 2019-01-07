.class public final Lhnz;
.super Ljava/lang/Object;
.source "MiniLogProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5LogProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/log/H5LogData;)Ljava/lang/String;
    .locals 3
    .param p0, "h5LogData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .prologue
    .line 309
    if-nez p0, :cond_0

    .line 310
    const-string/jumbo v0, "null"

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "seedId="

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getSeedId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, " param1="

    aput-object v2, v1, v0

    const/4 v2, 0x3

    .line 314
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam1Map()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam1Map()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, " param2="

    aput-object v2, v1, v0

    const/4 v2, 0x5

    .line 315
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam2Map()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam2Map()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string/jumbo v2, " param3="

    aput-object v2, v1, v0

    const/4 v2, 0x7

    .line 316
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam3Map()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam3Map()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v1, v2

    const/16 v0, 0x8

    const-string/jumbo v2, " param4="

    aput-object v2, v1, v0

    const/16 v2, 0x9

    .line 317
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v1, v2

    .line 313
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1

    .line 315
    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_2

    .line 316
    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_3

    .line 317
    :cond_4
    const-string/jumbo v0, "null"

    goto :goto_4
.end method


# virtual methods
.method public final autoClick(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 212
    return-void
.end method

.method public final behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V
    .locals 10
    .param p1, "h5LogData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p2, "h5BehaviorLogConfig"    # Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 295
    const-string/jumbo v1, "mini_log_behavior"

    const-string/jumbo v2, "behaviorLog"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v0, "h5LogData="

    aput-object v0, v3, v5

    .line 296
    invoke-static {p1}, Lhnz;->a(Lcom/alipay/mobile/nebula/log/H5LogData;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string/jumbo v0, "h5BehaviorLogConfig="

    aput-object v0, v3, v7

    .line 2330
    if-nez p2, :cond_1

    .line 2331
    const-string/jumbo v0, "null"

    .line 297
    :goto_0
    aput-object v0, v3, v8

    .line 295
    invoke-static {v1, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    const-string/jumbo v0, "CLOUD_SETTING_DISABLE_LOG_PERFORMANCE"

    invoke-static {v0, v6}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    if-nez p1, :cond_2

    .line 3133
    :cond_0
    :goto_1
    return-void

    .line 2334
    :cond_1
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v4, "logLevel="

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getLogLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const-string/jumbo v4, " abTestInfo="

    aput-object v4, v0, v7

    .line 2335
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getAbTestInfo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    const-string/jumbo v4, " actionId="

    aput-object v4, v0, v9

    const/4 v4, 0x5

    .line 2336
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getActionId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string/jumbo v5, " behaviousPro="

    aput-object v5, v0, v4

    const/4 v4, 0x7

    .line 2337
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getBehaviourPro()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string/jumbo v5, " entityContentId="

    aput-object v5, v0, v4

    const/16 v4, 0x9

    .line 2338
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getEntityContentId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string/jumbo v5, " pageId="

    aput-object v5, v0, v4

    const/16 v4, 0xb

    .line 2339
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getPageId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string/jumbo v5, " userCaseId="

    aput-object v5, v0, v4

    const/16 v4, 0xd

    .line 2340
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getUserCaseId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 2334
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :cond_2
    const-string/jumbo v0, "H5_APP_PREPARE"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getSeedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam3Map()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam2Map()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam3Map()Ljava/util/Map;

    move-result-object v1

    .line 3132
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3135
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3136
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3137
    const-string/jumbo v0, "appId"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3140
    const-string/jumbo v0, "appId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3142
    const-string/jumbo v4, "proc"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Lhmw;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 3143
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3147
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3148
    const-string/jumbo v1, "getDBVersionTime"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3149
    const-string/jumbo v2, "db_version_time"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    :cond_3
    invoke-static {v0, v3}, Lhmw;->d(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method public final disableHardwareAccelerate()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "seedID"    # Ljava/lang/String;
    .param p2, "ucId"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/lang/String;
    .param p7, "logHeader"    # Ljava/lang/String;
    .param p8, "remoteLogType"    # Ljava/lang/String;
    .param p9, "bizScenario"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 124
    const-string/jumbo v0, "mini_log_exception"

    const-string/jumbo v1, "exceptionLogger"

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "seedID="

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "ucId="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "param1="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "param2="

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "param3="

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p5, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "param4="

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object p6, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "logHeader="

    aput-object v4, v2, v3

    const/16 v3, 0xd

    aput-object p7, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "remoteLogType="

    aput-object v4, v2, v3

    const/16 v3, 0xf

    aput-object p8, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "bizScenario="

    aput-object v4, v2, v3

    const/16 v3, 0x11

    aput-object p9, v2, v3

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const-string/jumbo v0, "CLOUD_SETTING_DISABLE_LOG_PERFORMANCE"

    invoke-static {v0, v5}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "H5_PAGE_PERFORMANCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    invoke-static {p6}, Lhmw;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1069
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    const-string/jumbo v0, "appId"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    const-string/jumbo v0, "appId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    invoke-static {v0, v1}, Lhmw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1078
    invoke-static {v0, v1}, Lhmw;->c(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final getAutoSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 236
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLastClickSpmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getPageId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 241
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 231
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getSrcSpm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 246
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTrackLastClickTime()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 261
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getUniteParam4(Liop;)Ljava/lang/String;
    .locals 2
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-interface {p1}, Liop;->getPageData()Lior;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    const-string/jumbo v0, ""

    .line 275
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Liop;->getPageData()Lior;

    move-result-object v0

    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getUniteParam4(Lior;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "seedID"    # Ljava/lang/String;
    .param p3, "abTestInfo"    # Ljava/lang/String;
    .param p4, "entityId"    # Ljava/lang/String;
    .param p5, "pageId"    # Ljava/lang/String;
    .param p6, "ucId"    # Ljava/lang/String;
    .param p7, "param1"    # Ljava/lang/String;
    .param p8, "param2"    # Ljava/lang/String;
    .param p9, "param3"    # Ljava/lang/String;
    .param p10, "param4"    # Ljava/lang/String;
    .param p11, "uniteParam4"    # Ljava/lang/String;
    .param p12, "logLevel"    # I
    .param p13, "actionId"    # Ljava/lang/String;
    .param p14, "bizScenario"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 163
    const-string/jumbo v0, "mini_log_behavior"

    const-string/jumbo v1, "h5BehaviorLogger"

    const/16 v2, 0x1c

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "type="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "seedID="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "abTestInfo="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "entityId="

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "pageId="

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p5, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "ucId="

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object p6, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "param1="

    aput-object v4, v2, v3

    const/16 v3, 0xd

    aput-object p7, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "param2="

    aput-object v4, v2, v3

    const/16 v3, 0xf

    aput-object p8, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "param3="

    aput-object v4, v2, v3

    const/16 v3, 0x11

    aput-object p9, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "param4="

    aput-object v4, v2, v3

    const/16 v3, 0x13

    aput-object p10, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "uniteParam4="

    aput-object v4, v2, v3

    const/16 v3, 0x15

    aput-object p11, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "logLevel="

    aput-object v4, v2, v3

    const/16 v3, 0x17

    .line 175
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "actionId="

    aput-object v4, v2, v3

    const/16 v3, 0x19

    aput-object p13, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "bizScenario="

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    aput-object p14, v2, v3

    .line 163
    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public final h5RemoteLogClickLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "abTestInfo"    # Ljava/lang/String;
    .param p5, "entityId"    # Ljava/lang/String;
    .param p6, "param1"    # Ljava/lang/String;
    .param p7, "param2"    # Ljava/lang/String;
    .param p8, "param3"    # Ljava/lang/String;
    .param p9, "param4"    # Ljava/lang/String;
    .param p10, "uniteParam4"    # Ljava/lang/String;
    .param p11, "logLevel"    # I
    .param p12, "actionId"    # Ljava/lang/String;
    .param p13, "bizScenario"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 183
    const-string/jumbo v0, "mini_log_remote"

    const-string/jumbo v1, "h5RemoteLogClickLogger"

    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "pageId="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "spmId="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "bizCode="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "abTestInfo="

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "entityId="

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p5, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "param1="

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object p6, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "param2="

    aput-object v4, v2, v3

    const/16 v3, 0xd

    aput-object p7, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "param3="

    aput-object v4, v2, v3

    const/16 v3, 0xf

    aput-object p8, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "param4="

    aput-object v4, v2, v3

    const/16 v3, 0x11

    aput-object p9, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "uniteParam4="

    aput-object v4, v2, v3

    const/16 v3, 0x13

    aput-object p10, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "logLevel="

    aput-object v4, v2, v3

    const/16 v3, 0x15

    .line 194
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "actionId="

    aput-object v4, v2, v3

    const/16 v3, 0x17

    aput-object p12, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "bizScenario="

    aput-object v4, v2, v3

    const/16 v3, 0x19

    aput-object p13, v2, v3

    .line 183
    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public final isPageStarted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public final log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 49
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "unitParam4"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "abTestInfo"    # Ljava/lang/String;
    .param p3, "view"    # Ljava/lang/Object;
    .param p4, "bizCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public final logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;

    .prologue
    .line 217
    return-void
.end method

.method public final logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "rpc"    # Z

    .prologue
    .line 222
    return-void
.end method

.method public final logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "logHeader"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 55
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "logName"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "unitParam4"    # Ljava/lang/String;
    .param p7, "logHeader"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 44
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
    .locals 9
    .param p1, "h5LogData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p2, "h5MonitorLogConfig"    # Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 280
    const-string/jumbo v1, "mini_log_monitor"

    const-string/jumbo v2, "monitorLog"

    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v0, "h5LogData="

    aput-object v0, v3, v6

    .line 281
    invoke-static {p1}, Lhnz;->a(Lcom/alipay/mobile/nebula/log/H5LogData;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string/jumbo v0, "h5MonitorLogConfig="

    aput-object v0, v3, v7

    .line 1321
    if-nez p2, :cond_1

    .line 1322
    const-string/jumbo v0, "null"

    .line 282
    :goto_0
    aput-object v0, v3, v8

    .line 280
    invoke-static {v1, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    const-string/jumbo v0, "CLOUD_SETTING_DISABLE_LOG_PERFORMANCE"

    invoke-static {v0, v5}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    if-nez p1, :cond_2

    .line 2087
    :cond_0
    :goto_1
    return-void

    .line 1325
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v4, "logType="

    aput-object v4, v0, v6

    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->getLogType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    const-string/jumbo v4, " logHeader="

    aput-object v4, v0, v7

    .line 1326
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->getLogHeader()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 1325
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_2
    const-string/jumbo v0, "H5_PAGE_PERFORMANCE"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getSeedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v1

    .line 2086
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2089
    const-string/jumbo v0, "appId"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2092
    const-string/jumbo v0, "appId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2094
    invoke-static {v0, v1}, Lhmw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 2095
    invoke-static {v0, v1}, Lhmw;->c(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public final mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p4, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public final performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "seedID"    # Ljava/lang/String;
    .param p2, "ucId"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/lang/String;
    .param p7, "bizScenario"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 145
    const-string/jumbo v0, "mini_log_performance"

    const-string/jumbo v1, "performanceLogger"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "seedID="

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const-string/jumbo v3, "ucId="

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "param1="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "param2="

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "param3="

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p5, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "param4="

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object p6, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "bizScenario="

    aput-object v4, v2, v3

    const/16 v3, 0xd

    aput-object p7, v2, v3

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const-string/jumbo v0, "CLOUD_SETTING_DISABLE_LOG_PERFORMANCE"

    invoke-static {v0, v5}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "H5_APP_PREPARE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    invoke-static {p5}, Lhmw;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1108
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    const-string/jumbo v0, "appId"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string/jumbo v0, "appId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1116
    if-eqz p4, :cond_2

    .line 1117
    const-string/jumbo v2, "="

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1118
    if-eqz v2, :cond_2

    array-length v3, v2

    if-ne v3, v6, :cond_2

    .line 1119
    const-string/jumbo v3, "db_version_time"

    aget-object v2, v2, v5

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    :cond_2
    invoke-static {v0, v1}, Lhmw;->d(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method

.method public final setLastClickSpm(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public final upload()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
