.class public Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IWBEventModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppContainerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->b:Ljava/lang/String;

    .line 387
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->genAppBroadcastAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "com.taobao.qianniu.qap.broadcast.type"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 396
    .local v12, "type":I
    if-nez v12, :cond_4

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "com.taobao.qianniu.qap.broadcast.key"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, "messageType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    iget-object v13, v13, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 401
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    iget-object v13, v13, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 402
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-eqz v7, :cond_0

    .line 403
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 404
    .local v1, "bundle":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.key"

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.type"

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-static {v13}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->access$000(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/bridge/JSCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .local v2, "callback":Lcom/taobao/weex/bridge/JSCallback;
    :try_start_1
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->genAppBroadcastAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v9, "newIntent":Landroid/content/Intent;
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.type"

    const/4 v14, 0x2

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.value"

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    iget-object v13, v13, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    invoke-virtual {v13, v9}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    .end local v9    # "newIntent":Landroid/content/Intent;
    :goto_1
    :try_start_2
    new-instance v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;

    invoke-direct {v10}, Lcom/alibaba/icbu/iwb/element/module/CommonData;-><init>()V

    .line 415
    .local v10, "result":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    const-string/jumbo v13, "IWB_SUCCESS"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 416
    const-string/jumbo v13, "scope"

    const-string/jumbo v14, "app"

    invoke-virtual {v1, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string/jumbo v13, "name"

    invoke-virtual {v1, v13, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {v10, v1}, Lcom/alibaba/icbu/iwb/element/module/CommonData;->setData(Ljava/lang/Object;)V

    .line 419
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/bridge/JSCallback;

    .line 420
    .local v3, "callbackContext":Lcom/taobao/weex/bridge/JSCallback;
    invoke-interface {v3, v10}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "bundle":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    .end local v3    # "callbackContext":Lcom/taobao/weex/bridge/JSCallback;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    .end local v8    # "messageType":Ljava/lang/String;
    .end local v10    # "result":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    .end local v12    # "type":I
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 422
    .restart local v1    # "bundle":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    .restart local v8    # "messageType":Ljava/lang/String;
    .restart local v10    # "result":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    .restart local v12    # "type":I
    :cond_3
    if-eqz v2, :cond_0

    .line 423
    new-instance v4, Lcom/alibaba/icbu/iwb/element/module/CommonData;

    invoke-direct {v4}, Lcom/alibaba/icbu/iwb/element/module/CommonData;-><init>()V

    .line 424
    .local v4, "data":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    const-string/jumbo v13, "IWB_SUCCESS"

    iput-object v13, v4, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 425
    invoke-interface {v2, v4}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 428
    .end local v1    # "bundle":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    .end local v4    # "data":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    .end local v8    # "messageType":Ljava/lang/String;
    .end local v10    # "result":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    :cond_4
    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 429
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 430
    .restart local v1    # "bundle":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.key"

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.type"

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-static {v13}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->access$000(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 435
    .end local v1    # "bundle":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 436
    .restart local v1    # "bundle":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    .line 437
    const-string/jumbo v13, "event"

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-static {v13}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->access$000(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 439
    .local v5, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 440
    .local v11, "stickyJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "event"

    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    move-object/from16 v16, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/taobao/weex/bridge/JSCallback;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->fireEvent(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)Lcom/alibaba/icbu/iwb/element/module/CommonData;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .end local v5    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "stickyJson":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    .restart local v8    # "messageType":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto/16 :goto_1
.end method
