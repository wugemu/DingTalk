.class final Lcom/alibaba/android/rimet/RimetDDContext$32;
.super Landroid/content/BroadcastReceiver;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initOfflineTaskReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2876
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$32;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2879
    const-string/jumbo v5, "action_offline_task"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2881
    const-string/jumbo v5, "intent_key_offline_task_result"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;

    .line 2882
    .local v2, "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    if-eqz v2, :cond_1

    .line 2883
    iget v5, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatus:I

    sget-object v6, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->FAIL:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2884
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2885
    .local v4, "warnHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "9"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2886
    const-string/jumbo v5, "hostTaskId"

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2887
    const-string/jumbo v5, "maxRetryTimes"

    iget v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mMaxRetryTime:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    const-string/jumbo v5, "requestUri"

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2889
    const-string/jumbo v5, "requestDomain"

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskDomain:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2890
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getAlarmInterface()Lgvi;

    move-result-object v5

    invoke-virtual {v5, v4}, Lgvi;->warn(Ljava/util/Map;)V

    .line 2893
    .end local v4    # "warnHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v5, "offline"

    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "task save "

    aput-object v8, v7, v9

    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    new-array v5, v11, [Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskDomain:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStorageKey:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2896
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2898
    .local v3, "valueJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "taskId"

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2899
    const-string/jumbo v5, "statusCode"

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2900
    const-string/jumbo v5, "responseText"

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskResponseText:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2904
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/rimet/RimetDDContext$32;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v5}, Lcom/alibaba/android/rimet/RimetDDContext;->access$200(Lcom/alibaba/android/rimet/RimetDDContext;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/rimet/RimetDDContext$32$1;

    invoke-direct {v6, p0, v1, v3}, Lcom/alibaba/android/rimet/RimetDDContext$32$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$32;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2913
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    .end local v3    # "valueJson":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 2901
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    .restart local v3    # "valueJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2902
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
