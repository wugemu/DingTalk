.class Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;
.super Ljava/lang/Object;
.source "RequestMoney.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->loadConversations(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 481
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "RequestMoney getUserProfileList failed, code="

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

    .line 483
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 438
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->onProgress(Ljava/util/List;I)V

    return-void
.end method

.method public onProgress(Ljava/util/List;I)V
    .locals 0
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 438
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 441
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 442
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 443
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 444
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_0

    .line 447
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "title":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "icon":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 453
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 455
    .local v5, "object":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v8, "title"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    const-string/jumbo v8, "icon"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string/jumbo v8, "cId"

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    :goto_2
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "lightapp"

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "RequestMoney JSONObject failed, error="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 460
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 459
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 464
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "icon":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "title":Ljava/lang/String;
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 466
    .restart local v5    # "object":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v7, "conversations"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 471
    :goto_3
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v7, v5, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 477
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_4
    return-void

    .line 467
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v5    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 468
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string/jumbo v7, "lightapp"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "RequestMoney JSONObject failed, error="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 469
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 468
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 473
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v3, "conversations is null or empty"

    .line 474
    .local v3, "error":Ljava/lang/String;
    const-string/jumbo v7, "lightapp"

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v7, v3, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v3    # "error":Ljava/lang/String;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .restart local v4    # "icon":Ljava/lang/String;
    .restart local v6    # "title":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method
