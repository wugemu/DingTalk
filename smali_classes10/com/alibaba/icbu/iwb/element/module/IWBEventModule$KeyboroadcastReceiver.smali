.class public Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IWBEventModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyboroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;


# direct methods
.method protected constructor <init>(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

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
    .line 499
    :try_start_0
    const-string/jumbo v8, "com.alibaba.icbu.iwb.event.keyboard"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 530
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.alibaba.icbu.iwb.event.keyboard.event"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "event":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.alibaba.icbu.iwb.event.keyboard.height"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "height":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 507
    .local v5, "info":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "height"

    invoke-virtual {v5, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string/jumbo v8, "duration"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string/jumbo v8, "keyboard_event"

    invoke-virtual {v5, v8, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string/jumbo v1, "iwb_event"

    .line 513
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v6, "fireEvent"

    .line 515
    .local v6, "method":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 516
    .local v7, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "event"

    invoke-virtual {v7, v8, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string/jumbo v8, "sticky"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string/jumbo v8, "scope"

    const-string/jumbo v9, "global"

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string/jumbo v8, "info"

    invoke-virtual {v7, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 525
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;->a:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    iget-object v9, v9, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v6, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "height":Ljava/lang/String;
    .end local v5    # "info":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "object":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
