.class Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;
.super Landroid/content/BroadcastReceiver;
.source "Ding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    if-eqz p2, :cond_1

    const-string/jumbo v6, "action_ding_create_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 376
    const-string/jumbo v6, "key_ding_create_result"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 377
    .local v0, "createResult":Z
    const-string/jumbo v6, "key_ding_create_result_ding_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 378
    .local v2, "dingId":J
    const-string/jumbo v6, "key_ding_create_result_ding_text"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "text":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 381
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "dingCreateResult"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 382
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 383
    const-string/jumbo v6, "dingId"

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    :cond_0
    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    .line 387
    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$702(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .end local v0    # "createResult":Z
    .end local v2    # "dingId":J
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 388
    .restart local v0    # "createResult":Z
    .restart local v2    # "dingId":J
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x2

    const-string/jumbo v10, "error json"

    .line 390
    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
