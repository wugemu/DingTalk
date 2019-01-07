.class Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;
.super Ljava/lang/Object;
.source "Host.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->query(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$taskIdList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Ljava/util/ArrayList;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;->val$taskIdList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;->val$taskIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcls;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 246
    .local v3, "statusHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 247
    .local v2, "statusArray":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 249
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 252
    .local v4, "taskId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "taskId"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v7, "status"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v5

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "taskId":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Host;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Host$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v2, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Host;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Host;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 262
    return-void
.end method
