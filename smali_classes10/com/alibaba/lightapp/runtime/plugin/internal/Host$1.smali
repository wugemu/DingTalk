.class Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;
.super Landroid/content/BroadcastReceiver;
.source "Host.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Host;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v4, "action_offline_task"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const-string/jumbo v4, "intent_key_offline_task_result"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;

    .line 76
    .local v3, "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    if-eqz v3, :cond_0

    .line 77
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const-string/jumbo v4, "offline"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "broadcast result callback, task "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "callbackId":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "taskId"

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v4, "status"

    iget v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatus:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v4, "statusCode"

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v4, "responseText"

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskResponseText:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v4, "requestId"

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-static {v4, v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 111
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    :cond_0
    :goto_1
    return-void

    .line 90
    .restart local v0    # "callbackId":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v4, "offline"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "broadcast result dispatch, task "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v4, "taskId"

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v4, "status"

    iget v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatus:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v4, "requestId"

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    const-string/jumbo v5, "hostTaskEvent"

    invoke-static {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 104
    :catch_1
    move-exception v1

    .line 105
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
