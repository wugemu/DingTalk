.class public Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$GlobalContainerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IWBEventModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlobalContainerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;


# direct methods
.method protected constructor <init>(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$GlobalContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 463
    :try_start_0
    const-string/jumbo v5, "com.taobao.qianniu.qap.broadcast.action_global"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "com.taobao.qianniu.qap.broadcast.key"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "messageType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$GlobalContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-static {v5}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->access$100(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    :cond_2
    iget-object v5, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$GlobalContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-static {v5}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->access$100(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 471
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-eqz v2, :cond_0

    .line 472
    const-string/jumbo v5, "com.taobao.qianniu.qap.broadcast.value"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 473
    .local v1, "extra":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Lcom/alibaba/icbu/iwb/element/module/CommonData;

    invoke-direct {v4}, Lcom/alibaba/icbu/iwb/element/module/CommonData;-><init>()V

    .line 474
    .local v4, "result":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    const-string/jumbo v5, "IWB_SUCCESS"

    iput-object v5, v4, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 475
    const-string/jumbo v5, "scope"

    const-string/jumbo v6, "global"

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string/jumbo v5, "name"

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual {v4, v1}, Lcom/alibaba/icbu/iwb/element/module/CommonData;->setData(Ljava/lang/Object;)V

    .line 478
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/JSCallback;

    .line 479
    .local v0, "callbackContext":Lcom/taobao/weex/bridge/JSCallback;
    invoke-interface {v0, v4}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
    .end local v0    # "callbackContext":Lcom/taobao/weex/bridge/JSCallback;
    .end local v1    # "extra":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    .end local v3    # "messageType":Ljava/lang/String;
    .end local v4    # "result":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
