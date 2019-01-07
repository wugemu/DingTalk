.class public final Lhlu;
.super Lcom/alibaba/lightapp/runtime/PluginManager;
.source "MiniappPluginManager.java"


# instance fields
.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Liny;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Liny;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhde;)V
    .locals 1
    .param p1, "ctx"    # Lhde;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;-><init>(Lhde;)V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhlu;->j:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhlu;->k:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 69
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    .line 71
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 73
    if-eqz p2, :cond_1

    .line 74
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 73
    :goto_0
    invoke-interface {v1, p1, v3}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "h5Page":Liop;
    :cond_0
    :goto_1
    return-void

    .line 74
    .restart local v1    # "h5Page":Liop;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const-string/jumbo v3, "MiniappPluginManager"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "dispatchEvent exception: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1098
    const-string/jumbo v5, "mini_api"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final b(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 85
    iget-object v3, p0, Lhlu;->k:Ljava/util/Map;

    if-eqz v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    iget-object v3, p0, Lhlu;->k:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liny;

    .line 87
    .local v0, "bridgeContext":Liny;
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getKeepCallback()Z

    move-result v1

    .line 1127
    .local v1, "keep":Z
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1129
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-result-object v3

    .line 1130
    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-eq v4, v3, :cond_0

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v4, v3, :cond_3

    .line 1131
    :cond_0
    const-string/jumbo v3, "success"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getMessage()Ljava/lang/Object;

    move-result-object v3

    .line 1137
    const-string/jumbo v4, "content"

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .local v2, "r":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_5

    .line 92
    invoke-interface {v0, v2}, Liny;->sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 99
    :goto_2
    iget-object v3, p0, Lhlu;->k:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v0    # "bridgeContext":Liny;
    .end local v1    # "keep":Z
    .end local v2    # "r":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void

    .line 1132
    .restart local v0    # "bridgeContext":Liny;
    .restart local v1    # "keep":Z
    :cond_3
    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v4, v3, :cond_1

    .line 1133
    const-string/jumbo v3, "success"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1137
    :cond_4
    const-string/jumbo v3, ""

    goto :goto_1

    .line 95
    .restart local v2    # "r":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    invoke-interface {v0, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_2
.end method
