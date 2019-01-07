.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappWarnPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappWarnPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 32
    if-eqz p1, :cond_2

    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1121
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 35
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappWarnPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "miniAppId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 37
    const-string/jumbo v8, "h5PageAbnormal"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 40
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v8

    sget v9, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v8, v9, :cond_0

    .line 41
    const-string/jumbo v8, "errorType"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "errorType":Ljava/lang/String;
    const-string/jumbo v8, "errorCode"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "blankErrorCode":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v4, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "miniAppId"

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v8, "errorType"

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v8, "blankErrorCode"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v8, "h5PageAbnormal"

    invoke-static {v8, v4}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9, v3}, Lgvi;->miniAppBlankError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v1    # "blankErrorCode":I
    .end local v3    # "errorType":Ljava/lang/String;
    .end local v4    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniBlankStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "miniAppId":Ljava/lang/String;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v7

    .line 54
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v5    # "miniAppId":Ljava/lang/String;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v8, "h5PageStarted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 60
    invoke-static {v5, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniBlankStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 66
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "miniAppId":Ljava/lang/String;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v7

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 26
    const-string/jumbo v0, "h5PageAbnormal"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method
