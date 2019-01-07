.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;
.super Landroid/content/BroadcastReceiver;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerPreviewReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 2481
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2486
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.alibaba.laiwang.photokit.browser.remove"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2488
    const-string/jumbo v5, "com.alibaba.laiwang.photokit.browser.remove.urls"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2490
    .local v4, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2491
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2492
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "removeImage"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2493
    const-string/jumbo v5, "biz.Util"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v7, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2501
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2495
    .restart local v4    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2496
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2497
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x3

    .line 2498
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$19;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v7

    .line 2497
    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method
