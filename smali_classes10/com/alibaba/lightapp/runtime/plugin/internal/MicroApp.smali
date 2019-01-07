.class public Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "MicroApp.java"


# static fields
.field public static final ARGS_KEY_AGENT_IDS:Ljava/lang/String; = "agentIds"

.field public static final ARGS_KEY_APP_IDS:Ljava/lang/String; = "appIds"

.field public static final ARGS_KEY_CORP_ID:Ljava/lang/String; = "corpId"

.field private static final INTERVAL_TIME:J = 0x2710L

.field public static final JSON_KEY_AGENT_ID:Ljava/lang/String; = "agentId"

.field public static final JSON_KEY_AGENT_INFOS:Ljava/lang/String; = "agentInfos"

.field public static final JSON_KEY_APP_ID:Ljava/lang/String; = "appId"

.field public static final JSON_KEY_APP_INFOS:Ljava/lang/String; = "appInfos"

.field public static final JSON_KEY_LOCATION:Ljava/lang/String; = "location"


# instance fields
.field private mTiggerSyncTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private canCallTiggerSync()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->mTiggerSyncTime:J

    sub-long v2, v0, v4

    .line 299
    .local v2, "intervalTime":J
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 300
    const/4 v4, 0x0

    .line 302
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkInstalled(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 28
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string/jumbo v24, "corpId"

    const-string/jumbo v25, ""

    invoke-virtual/range {v23 .. v25}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "argCorpId":Ljava/lang/String;
    const/16 v22, 0x0

    .line 70
    .local v22, "sessionCorpId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v21

    .line 71
    .local v21, "session":Lhqe$d;
    if-eqz v21, :cond_0

    .line 1488
    move-object/from16 v0, v21

    iget-object v0, v0, Lhqe$d;->b:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 75
    :cond_0
    if-nez v22, :cond_3

    .line 76
    move-object v8, v7

    .line 91
    .local v8, "corpId":Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string/jumbo v24, "appIds"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 92
    .local v5, "appIdsArray":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v9, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v16

    .line 94
    .local v16, "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v18

    .line 95
    .local v18, "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v18, :cond_7

    .line 96
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 97
    .local v15, "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v15, :cond_7

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_7

    .line 98
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_7

    .line 99
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 101
    .local v4, "appId":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 102
    .local v6, "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    int-to-long v0, v4

    move-wide/from16 v24, v0

    iget-wide v0, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-nez v24, :cond_1

    .line 103
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, "homepage":Ljava/lang/String;
    invoke-static {v11}, Lcpx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "jumpUrl":Ljava/lang/String;
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v17, "object":Lorg/json/JSONObject;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 108
    const-string/jumbo v23, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .end local v6    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v11    # "homepage":Ljava/lang/String;
    .end local v14    # "jumpUrl":Ljava/lang/String;
    .end local v17    # "object":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 79
    .end local v4    # "appId":I
    .end local v5    # "appIdsArray":Lorg/json/JSONArray;
    .end local v8    # "corpId":Ljava/lang/String;
    .end local v9    # "data":Lorg/json/JSONObject;
    .end local v12    # "i":I
    .end local v15    # "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v16    # "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .end local v18    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_3
    move-object/from16 v0, v22

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 80
    move-object/from16 v8, v22

    .restart local v8    # "corpId":Ljava/lang/String;
    goto/16 :goto_0

    .line 83
    .end local v8    # "corpId":Ljava/lang/String;
    :cond_4
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v23, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v24, 0x8

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "invalid corpId: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 84
    invoke-static/range {v24 .. v25}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 138
    :cond_5
    :goto_3
    return-object v19

    .line 111
    .restart local v4    # "appId":I
    .restart local v5    # "appIdsArray":Lorg/json/JSONArray;
    .restart local v6    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v8    # "corpId":Ljava/lang/String;
    .restart local v9    # "data":Lorg/json/JSONObject;
    .restart local v11    # "homepage":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "jumpUrl":Ljava/lang/String;
    .restart local v15    # "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .restart local v16    # "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .restart local v17    # "object":Lorg/json/JSONObject;
    .restart local v18    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_6
    :try_start_1
    const-string/jumbo v23, "url"

    const-string/jumbo v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 112
    :catch_0
    move-exception v10

    .line 113
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 132
    .end local v4    # "appId":I
    .end local v5    # "appIdsArray":Lorg/json/JSONArray;
    .end local v6    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v9    # "data":Lorg/json/JSONObject;
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "homepage":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "jumpUrl":Ljava/lang/String;
    .end local v15    # "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v16    # "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .end local v17    # "object":Lorg/json/JSONObject;
    .end local v18    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :catch_1
    move-exception v10

    .line 133
    .local v10, "e":Lorg/json/JSONException;
    const/16 v23, 0x3

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 134
    .local v20, "result":Lorg/json/JSONObject;
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v23, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 135
    .local v19, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 124
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v19    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v20    # "result":Lorg/json/JSONObject;
    .restart local v5    # "appIdsArray":Lorg/json/JSONArray;
    .restart local v9    # "data":Lorg/json/JSONObject;
    .restart local v16    # "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .restart local v18    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_7
    :try_start_3
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .restart local v20    # "result":Lorg/json/JSONObject;
    const-string/jumbo v23, "installed"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v19, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v23, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 128
    .restart local v19    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string/jumbo v24, "refreshTopic"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 129
    .local v13, "isNeedRefreshTopic":Z
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v23

    if-gtz v23, :cond_5

    if-eqz v13, :cond_5

    .line 130
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v23

    const-class v24, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    invoke-virtual/range {v23 .. v24}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->i()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 59
    return-void
.end method

.method public queryInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 31
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 162
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 163
    .local v26, "uri":Landroid/net/Uri;
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v16

    .line 164
    .local v16, "host":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string/jumbo v27, ".dingtalk.com"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string/jumbo v27, ".dingtalkapps.com"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 165
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lgvi;->warnUnauthorized()V

    .line 166
    new-instance v22, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v27, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v28, 0x7

    const-string/jumbo v29, "Wrong Domain"

    .line 167
    invoke-static/range {v28 .. v29}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 249
    :goto_0
    return-object v22

    .line 170
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v27, v0

    const-string/jumbo v28, "corpId"

    const-string/jumbo v29, ""

    invoke-virtual/range {v27 .. v29}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 171
    .local v13, "argCorpId":Ljava/lang/String;
    const/16 v25, 0x0

    .line 172
    .local v25, "sessionCorpId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v24

    .line 173
    .local v24, "session":Lhqe$d;
    if-eqz v24, :cond_1

    .line 2488
    move-object/from16 v0, v24

    iget-object v0, v0, Lhqe$d;->b:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 177
    :cond_1
    if-nez v25, :cond_4

    .line 178
    move-object v14, v13

    .line 191
    .local v14, "corpId":Ljava/lang/String;
    :goto_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v27, v0

    const-string/jumbo v28, "appIds"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 192
    .local v8, "appIdsArray":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v27, v0

    const-string/jumbo v28, "agentIds"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 193
    .local v5, "agentIdsArray":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .local v9, "appInfoArray":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 196
    .local v6, "agentInfoArray":Lorg/json/JSONArray;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v19

    .line 197
    .local v19, "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v21

    .line 198
    .local v21, "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v8, :cond_8

    if-eqz v21, :cond_8

    .line 199
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    move-object/from16 v18, v0

    .line 200
    .local v18, "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_8

    .line 201
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 203
    .local v12, "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 204
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "appId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 207
    iget-wide v0, v12, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "appObjAppId":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 209
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 210
    .local v20, "object":Lorg/json/JSONObject;
    const-string/jumbo v28, "appId"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string/jumbo v28, "location"

    iget v0, v12, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->localtion:I

    move/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 220
    .end local v7    # "appId":Ljava/lang/String;
    .end local v11    # "appObjAppId":Ljava/lang/String;
    .end local v20    # "object":Lorg/json/JSONObject;
    :cond_3
    const/16 v17, 0x0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 221
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "agentId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 224
    iget-wide v0, v12, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "appObjAgentId":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 226
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .restart local v20    # "object":Lorg/json/JSONObject;
    const-string/jumbo v28, "agentId"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string/jumbo v28, "location"

    iget v0, v12, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->localtion:I

    move/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 243
    .end local v4    # "agentId":Ljava/lang/String;
    .end local v5    # "agentIdsArray":Lorg/json/JSONArray;
    .end local v6    # "agentInfoArray":Lorg/json/JSONArray;
    .end local v8    # "appIdsArray":Lorg/json/JSONArray;
    .end local v9    # "appInfoArray":Lorg/json/JSONArray;
    .end local v10    # "appObjAgentId":Ljava/lang/String;
    .end local v12    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v17    # "i":I
    .end local v18    # "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v19    # "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .end local v20    # "object":Lorg/json/JSONObject;
    .end local v21    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :catch_0
    move-exception v15

    .line 244
    .local v15, "e":Lorg/json/JSONException;
    const/16 v27, 0x3

    invoke-virtual {v15}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 245
    .local v23, "result":Lorg/json/JSONObject;
    new-instance v22, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v27, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 246
    .local v22, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 180
    .end local v14    # "corpId":Ljava/lang/String;
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v22    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v23    # "result":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, v25

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 181
    move-object/from16 v14, v25

    .restart local v14    # "corpId":Ljava/lang/String;
    goto/16 :goto_1

    .line 183
    .end local v14    # "corpId":Ljava/lang/String;
    :cond_5
    new-instance v22, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v27, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v28, 0x8

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "invalid corpId: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 184
    invoke-static/range {v28 .. v29}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 203
    .restart local v5    # "agentIdsArray":Lorg/json/JSONArray;
    .restart local v6    # "agentInfoArray":Lorg/json/JSONArray;
    .restart local v7    # "appId":Ljava/lang/String;
    .restart local v8    # "appIdsArray":Lorg/json/JSONArray;
    .restart local v9    # "appInfoArray":Lorg/json/JSONArray;
    .restart local v12    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v14    # "corpId":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .restart local v19    # "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .restart local v21    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 220
    .end local v7    # "appId":Ljava/lang/String;
    .restart local v4    # "agentId":Ljava/lang/String;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 238
    .end local v4    # "agentId":Ljava/lang/String;
    .end local v12    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v17    # "i":I
    .end local v18    # "microAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    :cond_8
    :try_start_1
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 239
    .restart local v23    # "result":Lorg/json/JSONObject;
    const-string/jumbo v27, "appInfos"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string/jumbo v27, "agentInfos"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    new-instance v22, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v27, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v22    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto/16 :goto_0
.end method

.method public triggerSync(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->canCallTiggerSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v0, v1}, Lifo;->a(Lcom/alibaba/wukong/Callback;)V

    .line 286
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0

    .line 282
    :cond_0
    const-string/jumbo v0, "call frequently , The interval time is greater than 10 seconds."

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v0, "JsApi"

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v2, "tiggerSync"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "errorMsg="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "call frequently , The interval time is greater than 10 seconds."

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateOATopic(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    const-string/jumbo v0, "updateOATopic"

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->isOutIntervalTime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->i()V

    .line 145
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v2, 0x1bc

    const-string/jumbo v3, "invoke too fast"

    .line 149
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
