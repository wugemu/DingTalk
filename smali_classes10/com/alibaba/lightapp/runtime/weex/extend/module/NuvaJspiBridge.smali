.class public Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;
.super Lcom/taobao/weex/common/WXModule;
.source "NuvaJspiBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NuvaJspiBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "bundleUrl":Ljava/lang/String;
    move-object v1, v0

    .line 67
    .local v1, "contextUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v4, v4, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v4, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 1096
    iget-object v2, v4, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->c:Ljava/util/Map;

    .line 69
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    const-string/jumbo v4, "originalUrl"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 70
    const-string/jumbo v4, "originalUrl"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "originalUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    invoke-static {v3}, Lhgy;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .end local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "originalUrl":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public exec(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/common/WXModuleAnno;
        runOnUIThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 27
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 29
    .local v2, "serviceName":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 30
    .local v3, "actionName":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 32
    .local v4, "argsJson":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "plugin"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    const-string/jumbo v0, "args"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 35
    .local v8, "args":Lcom/alibaba/fastjson/JSONObject;
    if-nez v8, :cond_0

    .line 36
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    .end local v8    # "args":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 38
    .restart local v8    # "args":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 45
    .end local v8    # "args":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mWXSDKInstance is null"

    .line 47
    invoke-static {v11, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 46
    invoke-virtual {v0, v5, p2, v6, v10}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 60
    :goto_1
    return-void

    .line 39
    :catch_0
    move-exception v9

    .line 40
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const-string/jumbo v0, "NuvaJspiBridge"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v7, "exec exception : "

    aput-object v7, v5, v10

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-nez v0, :cond_2

    .line 52
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mWXSDKInstance is not instance of RuntimeWXSDKInstance"

    .line 53
    invoke-static {v11, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 52
    invoke-virtual {v0, v5, p2, v6, v10}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 1088
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    move-object v5, p2

    move v7, v6

    .line 59
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    goto :goto_1
.end method
