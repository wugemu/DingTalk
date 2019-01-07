.class Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;
.super Lcmi;
.source "WMLLegacyAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->getResponse(Ljava/lang/String;)Ljpq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

.field final synthetic val$appCodeModel:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$response:[Ljpq$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;[Ljpq$a;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$response:[Ljpq$a;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$appCodeModel:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 383
    const-string/jumbo v1, "WMLLegacyAppAdapter"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "getResponse"

    aput-object v0, v2, v4

    const/4 v0, 0x1

    const-string/jumbo v3, "onException"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "errorCode="

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "errorMessage="

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object p2, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "throwable="

    aput-object v3, v2, v0

    const/4 v3, 0x7

    if-eqz p3, :cond_0

    .line 386
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 383
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$response:[Ljpq$a;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    invoke-static {v1, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v1

    aput-object v1, v0, v4

    .line 390
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 391
    return-void

    .line 386
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public onLoadSuccess(Lhod;)V
    .locals 13
    .param p1, "miniAppPackageModel"    # Lhod;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v5, p1, Lhod;->a:Ljava/lang/String;

    .line 347
    .local v5, "resultdata":Ljava/lang/String;
    iget-object v1, p1, Lhod;->b:Ljava/lang/String;

    .line 348
    .local v1, "configJson":Ljava/lang/String;
    iget-object v3, p1, Lhod;->c:Ljava/lang/String;

    .line 350
    .local v3, "removeAppIdListJson":Ljava/lang/String;
    const-string/jumbo v8, "WMLLegacyAppAdapter"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "queryRpc"

    aput-object v10, v9, v11

    const/4 v10, 0x1

    const-string/jumbo v11, "getMiniAppMetaData"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "resultData="

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "removeAppIdListJson="

    aput-object v11, v9, v10

    const/4 v10, 0x5

    aput-object v3, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "configJson="

    aput-object v11, v9, v10

    const/4 v10, 0x7

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :try_start_0
    invoke-static {v5}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 357
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 358
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 359
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "package_url"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "packageUrl":Ljava/lang/String;
    const-string/jumbo v8, "version"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "version":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 363
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$response:[Ljpq$a;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$appCodeModel:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-static {v10, v11, v2, v7}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->access$000(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v10

    aput-object v10, v8, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "configJson":Ljava/lang/String;
    .end local v2    # "packageUrl":Ljava/lang/String;
    .end local v3    # "removeAppIdListJson":Ljava/lang/String;
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "resultdata":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 379
    return-void

    .line 366
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .restart local v1    # "configJson":Ljava/lang/String;
    .restart local v2    # "packageUrl":Ljava/lang/String;
    .restart local v3    # "removeAppIdListJson":Ljava/lang/String;
    .restart local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v5    # "resultdata":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$response:[Ljpq$a;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    const-string/jumbo v11, "ERR_NO_RESULT"

    const-string/jumbo v12, "either packageUrl or version is empty"

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v10

    aput-object v10, v8, v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 373
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "packageUrl":Ljava/lang/String;
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "version":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 374
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->val$response:[Ljpq$a;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    const-string/jumbo v11, "ERR_NO_RESULT"

    const-string/jumbo v12, "result is empty"

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v10

    aput-object v10, v8, v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, Lhod;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;->onLoadSuccess(Lhod;)V

    return-void
.end method
