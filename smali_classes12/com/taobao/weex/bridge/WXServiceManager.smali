.class public Lcom/taobao/weex/bridge/WXServiceManager;
.super Ljava/lang/Object;
.source "WXServiceManager.java"


# static fields
.field private static sInstanceJSServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXJSService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method public static execAllCacheJsService()V
    .locals 6

    .prologue
    .line 72
    sget-object v2, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "service":Lcom/taobao/weex/common/WXJSService;
    .local v1, "serviceName":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "serviceName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 73
    .restart local v1    # "serviceName":Ljava/lang/String;
    sget-object v3, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    .end local v0    # "service":Lcom/taobao/weex/common/WXJSService;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXJSService;

    .line 74
    .restart local v0    # "service":Lcom/taobao/weex/common/WXJSService;
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXJSService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXJSService;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXJSService;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/bridge/WXServiceManager;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public static getService(Ljava/lang/String;)Lcom/taobao/weex/common/WXJSService;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXJSService;

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "serviceScript"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v6, v7

    .line 55
    :goto_0
    return v6

    .line 35
    :cond_1
    const-string/jumbo v1, "register: global.registerService, unregister: global.unregisterService"

    .line 36
    .local v1, "param1":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "serviceName: \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "param2":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 40
    .local v5, "value":Ljava/lang/Object;
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\': \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 43
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    .end local v0    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v8, ";(function(service, options){ ;%s; })({ %s }, { %s });"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v7

    aput-object v1, v9, v6

    const/4 v7, 0x2

    aput-object v2, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "serviceJs":Ljava/lang/String;
    new-instance v3, Lcom/taobao/weex/common/WXJSService;

    invoke-direct {v3}, Lcom/taobao/weex/common/WXJSService;-><init>()V

    .line 49
    .local v3, "service":Lcom/taobao/weex/common/WXJSService;
    invoke-virtual {v3, p0}, Lcom/taobao/weex/common/WXJSService;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3, p1}, Lcom/taobao/weex/common/WXJSService;->setScript(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, p2}, Lcom/taobao/weex/common/WXJSService;->setOptions(Ljava/util/Map;)V

    .line 52
    sget-object v7, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v7, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->execJSService(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static reload()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/bridge/WXServiceManager$1;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXServiceManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public static unRegisterService(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    :goto_0
    return v1

    .line 61
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    sget-object v3, Lcom/taobao/weex/bridge/WXServiceManager;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    const-string/jumbo v3, "global.unregisterService( \"%s\" );"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "js":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->execJSService(Ljava/lang/String;)V

    move v1, v2

    .line 67
    goto :goto_0
.end method
