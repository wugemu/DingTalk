.class public Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;
.super Lipd;
.source "H5UCPlugin.java"


# static fields
.field private static final CLEAR_SW:Ljava/lang/String; = "clearServiceWorker"

.field private static final FLUSH_UC_LOG:Ljava/lang/String; = "flushUcLog"

.field private static final PUSH_SW_MESSAGE:Ljava/lang/String; = "pushSWMessage"

.field private static final SET_SERVICEWORKER_ID:Ljava/lang/String; = "setServiceWorkerID"

.field private static final TAG:Ljava/lang/String; = "H5UCPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private enableFlushUcLog()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 124
    const-class v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 126
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_0

    .line 127
    const-string/jumbo v11, "h5_canUseFlushUcLog"

    invoke-interface {v3, v11}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 155
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v9

    .line 132
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "phoneInfo":Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 135
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "enable"

    invoke-static {v6, v11, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 136
    .local v2, "enable":Z
    if-nez v2, :cond_2

    move v9, v10

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    const-string/jumbo v11, "device"

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 141
    .local v1, "deviceList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 145
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 146
    .local v5, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 147
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 148
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "configValue":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v9, v10

    .line 150
    goto :goto_0

    .line 147
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 1081
    .local v3, "h5Page":Liop;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 50
    instance-of v11, v11, Liop;

    if-eqz v11, :cond_0

    .line 2081
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 51
    .end local v3    # "h5Page":Liop;
    check-cast v3, Liop;

    .line 3065
    .restart local v3    # "h5Page":Liop;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 54
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v11, "setServiceWorkerID"

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3121
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 56
    .local v9, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 57
    const-string/jumbo v11, "id"

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "id":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 59
    invoke-interface {v3}, Liop;->getSession()Lipc;

    move-result-object v5

    .line 60
    .local v5, "h5Session":Lipc;
    if-eqz v5, :cond_1

    .line 61
    invoke-interface {v5, v8}, Lipc;->setServiceWorkerID(Ljava/lang/String;)V

    .line 62
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 64
    :cond_1
    const-string/jumbo v11, "H5UCPlugin"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "success setServiceWorkerID "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v5    # "h5Session":Lipc;
    .end local v8    # "id":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    .line 117
    .end local v9    # "param":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v11

    .line 68
    :cond_3
    const-string/jumbo v11, "pushSWMessage"

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 69
    if-eqz v3, :cond_5

    .line 70
    invoke-interface {v3}, Liop;->getSession()Lipc;

    move-result-object v5

    .line 71
    .restart local v5    # "h5Session":Lipc;
    if-eqz v5, :cond_5

    .line 72
    invoke-interface {v5}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "serviceWorkerId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 74
    const-string/jumbo v11, "H5UCPlugin"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "success getServiceWorkerID "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v6, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "appId"

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v11, "message"

    const-string/jumbo v12, "testdata"

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v11, "messageId"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v4

    .line 80
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v4, :cond_4

    .line 81
    invoke-virtual {v4, v6}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V

    .line 83
    :cond_4
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 90
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v5    # "h5Session":Lipc;
    .end local v6    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "serviceWorkerId":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 85
    .restart local v5    # "h5Session":Lipc;
    .restart local v10    # "serviceWorkerId":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "2"

    const-string/jumbo v12, "ServiceWorkerID is null,please invoke setServiceWorkerID"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v5    # "h5Session":Lipc;
    .end local v10    # "serviceWorkerId":Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, "clearServiceWorker"

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4121
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 92
    const-string/jumbo v12, "host"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "host":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v4

    .line 94
    .restart local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v4, :cond_8

    .line 95
    invoke-virtual {v4, v7}, Lcom/alipay/mobile/h5container/service/H5Service;->clearServiceWorker(Ljava/lang/String;)V

    .line 97
    :cond_8
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 98
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 99
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v7    # "host":Ljava/lang/String;
    :cond_9
    const-string/jumbo v11, "flushUcLog"

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 100
    if-eqz v3, :cond_a

    invoke-interface {v3}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v11

    sget-object v12, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v11, v12, :cond_a

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;->enableFlushUcLog()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 102
    const-string/jumbo v11, "IO"

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v11

    new-instance v12, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$1;-><init>(Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;)V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 114
    :cond_a
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 115
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 117
    :cond_b
    invoke-super/range {p0 .. p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v11

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 41
    const-string/jumbo v0, "setServiceWorkerID"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "pushSWMessage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "clearServiceWorker"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "flushUcLog"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 45
    return-void
.end method
