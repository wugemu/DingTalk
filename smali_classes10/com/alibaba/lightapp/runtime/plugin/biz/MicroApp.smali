.class public Lcom/alibaba/lightapp/runtime/plugin/biz/MicroApp;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "MicroApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public openApp(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "agentId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "agentId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "corpId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->q(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v5

    .line 86
    .local v5, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-nez v5, :cond_1

    .line 87
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/MicroApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v10

    .line 89
    .local v10, "currentOrgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v6

    .line 91
    .end local v10    # "currentOrgId":J
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v5

    .line 93
    :cond_1
    if-eqz v5, :cond_3

    .line 94
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/MicroApp;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 96
    .local v9, "ctx":Landroid/content/Context;
    if-eqz v9, :cond_2

    instance-of v0, v9, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    move-object v1, v9

    check-cast v1, Landroid/app/Activity;

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 105
    .end local v2    # "url":Ljava/lang/String;
    .end local v9    # "ctx":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 100
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v9    # "ctx":Landroid/content/Context;
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    const-string/jumbo v4, "invalid context!"

    .line 101
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 104
    .end local v2    # "url":Ljava/lang/String;
    .end local v9    # "ctx":Landroid/content/Context;
    :cond_3
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v3, 0x10

    const-string/jumbo v4, "no such app!"

    .line 105
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public visualList(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v13, 0x8

    .line 31
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v9

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v8

    .line 33
    .local v8, "session":Lhqe$d;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 34
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "argCorpId":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1488
    iget-object v9, v8, Lhqe$d;->b:Ljava/lang/String;

    .line 35
    if-eqz v9, :cond_0

    .line 2488
    iget-object v9, v8, Lhqe$d;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 37
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "invalid corpId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 38
    invoke-static {v13, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 75
    .end local v0    # "argCorpId":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 41
    .restart local v0    # "argCorpId":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 47
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v6

    .line 48
    .local v6, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 50
    .local v7, "result":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    .line 51
    iget-object v4, v6, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 52
    .local v4, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v4, :cond_3

    .line 53
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 54
    .local v5, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v5, :cond_1

    iget v10, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->localtion:I

    and-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_1

    .line 56
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v3, "js":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v10, "agentId"

    iget-wide v12, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-virtual {v3, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v10, "appId"

    iget-wide v12, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-virtual {v3, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v10, "icon"

    iget-object v11, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v10, "name"

    iget-object v11, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v10, "nameZhCn"

    iget-object v11, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhCn:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string/jumbo v10, "nameEnUs"

    iget-object v11, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameEnUs:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v10, "nameJaJp"

    iget-object v11, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameJaJp:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v10, "nameZhTw"

    iget-object v11, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhTw:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "js":Lorg/json/JSONObject;
    .end local v4    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v5    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v6    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v7    # "result":Lorg/json/JSONArray;
    :cond_2
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v11, "invalid corpId: null"

    .line 44
    invoke-static {v13, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 75
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v1    # "corpId":Ljava/lang/String;
    .restart local v6    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .restart local v7    # "result":Lorg/json/JSONArray;
    :cond_3
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    goto/16 :goto_0
.end method
