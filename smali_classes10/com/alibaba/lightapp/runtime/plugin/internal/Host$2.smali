.class Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;
.super Ljava/lang/Object;
.source "Host.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->lwp(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

.field final synthetic val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    const-string/jumbo v5, "offline"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "jsapi result callback, task "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;

    .line 183
    .local v3, "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "taskId"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v5, "status"

    iget v6, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatus:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v5, "statusCode"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v5, "responseText"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskResponseText:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v5, "requestId"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 216
    .end local v3    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    :goto_1
    return-void

    .line 190
    .restart local v3    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    :cond_0
    const-string/jumbo v5, "offline"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "jsapi no result callback, task "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x0

    .line 200
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "savedData":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v5, "responseText"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 208
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "taskId"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string/jumbo v5, "status"

    sget-object v6, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->RUNNING:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v5, "requestId"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$info:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 214
    .end local v4    # "savedData":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    .restart local v4    # "savedData":Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 211
    .end local v4    # "savedData":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 212
    .restart local v0    # "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 211
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "savedData":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_4
.end method
