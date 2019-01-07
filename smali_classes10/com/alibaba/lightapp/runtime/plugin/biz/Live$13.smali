.class Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;
.super Ljava/lang/Object;
.source "Live.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->getPlaybackList(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 500
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Live getPlaybackList failed, code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public onProgress(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;I)V
    .locals 0
    .param p1, "listLiveRecordsRspObject"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    .param p2, "i"    # I

    .prologue
    .line 509
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 477
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->onProgress(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;)V
    .locals 9
    .param p1, "listLiveRecordsRspObject"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 480
    if-eqz p1, :cond_0

    .line 481
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 483
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;->records:Ljava/util/List;

    invoke-static {v4}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "array":Lorg/json/JSONArray;
    const-string/jumbo v4, "records"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    const-string/jumbo v4, "isEnd"

    iget-boolean v5, p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;->isEnd:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 496
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 486
    .restart local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "lightapp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Live JSONObject failed, error="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 488
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 487
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v2, "Live getPlaybackList failed listLiveRecordsRspObject is null"

    .line 493
    .local v2, "error":Ljava/lang/String;
    const-string/jumbo v4, "lightapp"

    invoke-static {v4, v8, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 477
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$13;->onSuccess(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;)V

    return-void
.end method
