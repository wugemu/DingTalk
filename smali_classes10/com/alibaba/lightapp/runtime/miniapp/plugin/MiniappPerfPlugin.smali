.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappPerfPlugin;
.super Lipd;
.source "MiniappPerfPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "page"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "appId"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v2, "time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    if-eqz p4, :cond_0

    .line 117
    const-string/jumbo v2, "page"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-static {p0, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 18
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 41
    if-eqz p1, :cond_5

    .line 1065
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 43
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v6, "onAppPerfEvent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v13

    .line 46
    .local v13, "page":Liop;
    if-eqz v13, :cond_5

    .line 1121
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 48
    .local v15, "params":Lcom/alibaba/fastjson/JSONObject;
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 49
    .local v12, "loadTime":Ljava/lang/Long;
    const-string/jumbo v3, ""

    .line 50
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 51
    .local v5, "pagePath":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 53
    .local v2, "appId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "loadTime"

    invoke-virtual {v15, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    .line 54
    const-string/jumbo v6, "state"

    invoke-virtual {v15, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string/jumbo v6, "page"

    invoke-virtual {v15, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-interface {v13}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v13}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "appId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    :goto_0
    const-wide/16 v10, 0x0

    .line 62
    .local v10, "createTime":J
    invoke-interface {v13}, Liop;->getPageData()Lior;

    move-result-object v14

    .line 63
    .local v14, "pageData":Lior;
    if-eqz v14, :cond_0

    .line 1378
    iget-wide v10, v14, Lior;->p:J

    .line 67
    :cond_0
    const/4 v4, 0x0

    .line 69
    .local v4, "isFirstPage":Z
    const-string/jumbo v6, "appLoaded"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-eqz v6, :cond_1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 73
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v16, 0x5dc

    cmp-long v6, v6, v16

    if-lez v6, :cond_1

    .line 74
    const-string/jumbo v6, "longAppLoad"

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v7, 0x0

    move-wide/from16 v0, v16

    invoke-static {v6, v2, v0, v1, v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappPerfPlugin;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappTimingOnAppPerf(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 96
    const-string/jumbo v6, "onAppPerfEvent"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "appId="

    aput-object v17, v7, v16

    const/16 v16, 0x1

    aput-object v2, v7, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "state="

    aput-object v17, v7, v16

    const/16 v16, 0x3

    aput-object v3, v7, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "isFirst="

    aput-object v17, v7, v16

    const/16 v16, 0x5

    .line 99
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x6

    const-string/jumbo v17, "page="

    aput-object v17, v7, v16

    const/16 v16, 0x7

    aput-object v5, v7, v16

    const/16 v16, 0x8

    const-string/jumbo v17, "loadTime="

    aput-object v17, v7, v16

    const/16 v16, 0x9

    aput-object v12, v7, v16

    .line 2088
    const-string/jumbo v16, "mini_perf"

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v6, 0x0

    .line 108
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "isFirstPage":Z
    .end local v5    # "pagePath":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    .end local v10    # "createTime":J
    .end local v12    # "loadTime":Ljava/lang/Long;
    .end local v13    # "page":Liop;
    .end local v14    # "pageData":Lior;
    .end local v15    # "params":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    return v6

    .line 56
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "state":Ljava/lang/String;
    .restart local v5    # "pagePath":Ljava/lang/String;
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v12    # "loadTime":Ljava/lang/Long;
    .restart local v13    # "page":Liop;
    .restart local v15    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :try_start_1
    const-string/jumbo v2, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 57
    :catch_0
    move-exception v9

    .line 58
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 78
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "isFirstPage":Z
    .restart local v10    # "createTime":J
    .restart local v14    # "pageData":Lior;
    :cond_3
    const-string/jumbo v6, "pageLoaded"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    if-nez v12, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-eqz v6, :cond_4

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 81
    const/4 v4, 0x1

    .line 83
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v16, 0x7d0

    cmp-long v6, v6, v16

    if-lez v6, :cond_1

    .line 84
    const-string/jumbo v6, "longPageLoad"

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v7, 0x0

    move-wide/from16 v0, v16

    invoke-static {v6, v2, v0, v1, v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappPerfPlugin;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 89
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    cmp-long v6, v6, v16

    if-lez v6, :cond_1

    .line 90
    const-string/jumbo v6, "longNonFirstPageLoad"

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v6, v2, v0, v1, v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappPerfPlugin;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 108
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "isFirstPage":Z
    .end local v5    # "pagePath":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    .end local v10    # "createTime":J
    .end local v12    # "loadTime":Ljava/lang/Long;
    .end local v13    # "page":Liop;
    .end local v14    # "pageData":Lior;
    .end local v15    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    invoke-super/range {p0 .. p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v6

    goto :goto_2
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 36
    const-string/jumbo v0, "onAppPerfEvent"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method
