.class public final Lhds;
.super Lcom/alibaba/lightapp/runtime/PluginManager;
.source "WeexPluginManager.java"


# instance fields
.field private j:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;)V
    .locals 0
    .param p1, "wxInstance"    # Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;-><init>(Lhde;)V

    .line 26
    iput-object p1, p0, Lhds;->j:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "keep"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 84
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v2, "r":Lorg/json/JSONObject;
    if-nez p3, :cond_0

    .line 86
    new-instance p3, Lorg/json/JSONObject;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 89
    :cond_0
    :try_start_0
    const-string/jumbo v3, "__keep__"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v3, "__status__"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v3, "__message__"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    iget-object v3, p0, Lhds;->b:Lhde;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhds;->b:Lhde;

    instance-of v3, v3, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v3, :cond_1

    .line 99
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 100
    .local v1, "fastJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v4

    iget-object v3, p0, Lhds;->b:Lhde;

    check-cast v3, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 101
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v4, v3, p2, v1, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .end local v1    # "fastJson":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const-string/jumbo v3, "WeexPluginManager"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "_callback exception: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v3, "WeexPluginManager"

    const-string/jumbo v4, "===== mPluginManagerContext is null or mPluginManagerContext cannot be cast to RuntimeWXSDKInstance ====="

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lhds;->j:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lhds;->j:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/weex/util/CommonUtil;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-result-object v2

    .line 45
    .local v2, "status":Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "message":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getKeepCallback()Z

    move-result v0

    .line 47
    .local v0, "keep":Z
    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v3, v2, :cond_1

    .line 1066
    const-string/jumbo v3, "1"

    invoke-direct {p0, v3, p2, v1, v0}, Lhds;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v3, v2, :cond_2

    .line 1073
    const-string/jumbo v3, "2"

    invoke-direct {p0, v3, p2, v1, v4}, Lhds;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 51
    :cond_2
    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v3, v2, :cond_0

    .line 1079
    const-string/jumbo v3, "0"

    invoke-direct {p0, v3, p2, v1, v4}, Lhds;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
