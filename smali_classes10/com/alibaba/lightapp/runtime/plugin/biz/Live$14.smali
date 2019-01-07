.class Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;
.super Ljava/lang/Object;
.source "Live.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->getStickyStatus(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Lcom/alibaba/wukong/im/Conversation;",
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
    .line 526
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 546
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Live getStickyStatus failed, code="

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

    .line 548
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "i"    # I

    .prologue
    .line 555
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 526
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 10
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 529
    if-eqz p1, :cond_1

    .line 530
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    move v1, v3

    .line 531
    .local v1, "isOnTop":Z
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 533
    .local v2, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 542
    .end local v1    # "isOnTop":Z
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_2
    return-void

    :cond_0
    move v1, v4

    .line 530
    goto :goto_0

    .line 534
    .restart local v1    # "isOnTop":Z
    .restart local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "lightapp"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Live JSONObject failed, error="

    aput-object v8, v7, v4

    .line 536
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 535
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 540
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "isOnTop":Z
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "Conversation is null"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 526
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$14;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
