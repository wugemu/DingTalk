.class public Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;
.super Lipd;
.source "H5PushBizPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PushBizPlugin"

.field public static final pushBizAppId:Ljava/lang/String; = "20001111"

.field public static pushBizWindowAction:Ljava/lang/String;


# instance fields
.field private pushBizWindow:Ljava/lang/String;

.field private pushBizWindowConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "NEBULANOTIFY_bizWindowCompleted"

    sput-object v0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lipd;-><init>()V

    .line 34
    const-string/jumbo v0, "pushBizWindow"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindow:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "h5_bizWindowUrlConfig"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowConfig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 25
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindow:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1065
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 50
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v22, v0

    .line 51
    const-string/jumbo v23, "type"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 52
    .local v19, "type":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 53
    sget-object v22, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 54
    const/16 v22, 0x1

    .line 126
    .end local v19    # "type":Ljava/lang/String;
    :goto_0
    return v22

    .line 56
    .restart local v19    # "type":Ljava/lang/String;
    :cond_0
    const-class v22, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 57
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 58
    .local v10, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v10, :cond_5

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowConfig:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "config":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 61
    .local v14, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_5

    .line 62
    move-object/from16 v0, v19

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 63
    .local v20, "url":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 64
    const-string/jumbo v22, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 65
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2121
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v22, v0

    .line 67
    const-string/jumbo v23, "data"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 68
    .local v7, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    .line 69
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 70
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 71
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 73
    :try_start_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 74
    .local v15, "key":Ljava/lang/String;
    invoke-virtual {v7, v15}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 75
    .local v21, "value":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    goto :goto_1

    .line 76
    .end local v15    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 77
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "H5PushBizPlugin"

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 82
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const/4 v11, 0x0

    .line 83
    .local v11, "h5Page":Liop;
    const-string/jumbo v4, ""

    .line 3081
    .local v4, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    move-object/from16 v22, v0

    .line 85
    move-object/from16 v0, v22

    instance-of v0, v0, Liop;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 4081
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 86
    .end local v11    # "h5Page":Liop;
    check-cast v11, Liop;

    .line 87
    .restart local v11    # "h5Page":Liop;
    invoke-interface {v11}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v23, "appId"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 91
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v17

    .line 92
    .local v17, "manager":Ldq;
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v9, "filter":Landroid/content/IntentFilter;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    if-eqz v11, :cond_4

    .line 96
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "NEBULANOTIFY_bizWindowCompleted_"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    .line 98
    sget-object v22, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v12, Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;-><init>(Liny;)V

    .line 101
    .local v12, "h5PushBizReceiver":Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v9}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 103
    const-string/jumbo v22, "H5PushBizPlugin"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "pushBizWindowAction is "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v18, "param":Landroid/os/Bundle;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "appId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 107
    const-string/jumbo v22, "url"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->setH5BridgeContext(Liny;)V

    .line 111
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "20001111"

    .line 112
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    .end local v12    # "h5PushBizReceiver":Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;
    .end local v18    # "param":Landroid/os/Bundle;
    :cond_4
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 121
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "config":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "h5Page":Liop;
    .end local v14    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "manager":Ldq;
    .end local v20    # "url":Ljava/lang/String;
    :cond_5
    const/16 v22, 0xc

    const-string/jumbo v23, "not found config"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    .line 124
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 126
    .end local v10    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v19    # "type":Ljava/lang/String;
    :cond_6
    invoke-super/range {p0 .. p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v22

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindow:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method
