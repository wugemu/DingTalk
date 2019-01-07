.class public final Ljsm;
.super Ljsi;
.source "WXModuleInvoker.java"


# direct methods
.method public constructor <init>(Ljrz;Ljava/lang/String;)V
    .locals 0
    .param p1, "instance"    # Ljrz;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljsi;-><init>(Ljrz;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljrm;)Ljava/lang/Object;
    .locals 8
    .param p1, "params"    # Ljrm;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 18
    iget-object v0, p0, Ljsm;->a:Ljrz;

    invoke-interface {v0}, Ljrz;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljsm;->b:Ljava/lang/String;

    .line 1022
    invoke-virtual {p0, v2}, Ljsm;->a(Ljava/lang/String;)Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    move-result-object v7

    .line 1023
    if-eqz v7, :cond_0

    .line 1024
    new-instance v0, Ljro;

    iget-object v3, p1, Ljrm;->b:Ljava/lang/String;

    iget-object v4, p1, Ljrm;->c:Ljava/lang/String;

    iget-object v5, p1, Ljrm;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ljro;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1026
    iget-object v1, p1, Ljrm;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v1, Ljsn;

    invoke-direct {v1, v0}, Ljsn;-><init>(Ljro;)V

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v1, Ljsl;

    invoke-direct {v1, v0}, Ljsl;-><init>(Ljro;)V

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Ljrm;->b:Ljava/lang/String;

    iget-object v3, p1, Ljrm;->c:Ljava/lang/String;

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    .line 18
    goto :goto_0
.end method
