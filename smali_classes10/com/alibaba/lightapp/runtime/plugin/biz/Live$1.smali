.class Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;
.super Ljava/lang/Object;
.source "Live.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->listLiveRecords(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
    .line 75
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onProgress(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;I)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    .param p2, "i"    # I

    .prologue
    .line 90
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->onProgress(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;)V
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 79
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$1;->onSuccess(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;)V

    return-void
.end method
