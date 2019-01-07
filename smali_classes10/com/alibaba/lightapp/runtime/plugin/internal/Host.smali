.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Host;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Host.java"


# static fields
.field public static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final MAX_INTERVAL:J = 0x2710L

.field private static final MAX_RETRY_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTaskCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mTaskCallbackMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mTaskResultMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mTaskResultMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mTaskCallbackMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->success(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public lwp(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 22
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 136
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 137
    .local v16, "uri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "host":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "uri"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 140
    .local v13, "reqUri":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "body"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "reqBody":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "itemName"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "itemName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "requestId"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "requestId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "interval"

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 144
    .local v8, "interval":J
    const-wide/16 v18, 0x2710

    cmp-long v17, v8, v18

    if-lez v17, :cond_0

    .line 145
    const-wide/16 v8, 0x2710

    .line 147
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "retryTime"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 148
    .local v15, "retryTime":I
    const/16 v17, 0x64

    move/from16 v0, v17

    if-le v15, v0, :cond_1

    .line 149
    const/16 v15, 0x64

    .line 152
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 154
    .local v4, "currentTime":J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v11, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "uri"

    move-object/from16 v0, v17

    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v17, "sessionId"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v17

    const-string/jumbo v18, "oa_host_cloud_lwp_request"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    new-instance v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;-><init>()V

    .line 160
    .local v7, "info":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "X"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    aput-object v12, v19, v20

    const/16 v20, 0x2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "X"

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    .line 161
    iput-object v6, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->g:Ljava/lang/String;

    .line 162
    iput-wide v4, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->f:J

    .line 163
    iput-object v13, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    .line 164
    iput-object v10, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->h:Ljava/lang/String;

    .line 165
    iput-object v12, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->d:Ljava/lang/String;

    .line 166
    iput v15, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    .line 167
    iput-object v14, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->l:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    new-instance v17, Lclq;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lclq;-><init>(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)V

    invoke-static/range {v17 .. v17}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a(Lclq;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 171
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->c()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mTaskCallbackMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v17

    return-object v17

    .line 220
    :cond_2
    const/16 v17, 0x3

    const-string/jumbo v18, "unknown error"

    invoke-static/range {v17 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action_offline_task"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 122
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mTaskCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 130
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->mTaskResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 132
    return-void
.end method

.method public query(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "taskIds"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 229
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "taskIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 233
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 239
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 264
    :goto_1
    return-object v4

    .line 242
    :cond_1
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->TAG:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;

    invoke-direct {v6, p0, v3, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Ljava/util/ArrayList;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 264
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_1
.end method
