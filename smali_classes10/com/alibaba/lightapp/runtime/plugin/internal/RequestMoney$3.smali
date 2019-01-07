.class Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;
.super Ljava/lang/Object;
.source "RequestMoney.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->contactswithUids(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
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
    .line 338
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 338
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;>;"
    if-eqz p1, :cond_1

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 344
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_0

    .line 347
    new-instance v4, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;-><init>()V

    .line 348
    .local v4, "user":Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v6, v4, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;->uid:J

    .line 349
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;->nick:Ljava/lang/String;

    .line 351
    :try_start_0
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;->avatarURL:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :catch_0
    move-exception v6

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;->avatarURL:Ljava/lang/String;

    goto :goto_1

    .line 358
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v4    # "user":Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 360
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "array":Lorg/json/JSONArray;
    const-string/jumbo v5, "users"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 367
    return-void

    .line 362
    :catch_1
    move-exception v1

    .line 363
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "lightapp"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "RequestMoney JSONObject failed, error="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 364
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 363
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 376
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

    .line 378
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 372
    return-void
.end method
