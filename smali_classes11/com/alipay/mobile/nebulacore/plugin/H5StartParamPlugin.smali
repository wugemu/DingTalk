.class public Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;
.super Lipd;
.source "H5StartParamPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5StartParamPlugin"

.field private static sendEventList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final setStartParam:Ljava/lang/String; = "setStartParam"


# instance fields
.field private h5Page:Liop;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->sendEventList:Ljava/util/List;

    sget-object v1, Liov$a;->E:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->sendEventList:Ljava/util/List;

    const-string/jumbo v1, "bounceTopColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 20
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 50
    .line 1065
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1081
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 51
    instance-of v14, v14, Liop;

    if-eqz v14, :cond_0

    .line 2081
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 52
    check-cast v14, Liop;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    .line 55
    :cond_0
    const-string/jumbo v14, "setStartParam"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 56
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    invoke-interface {v14}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    if-nez v14, :cond_2

    .line 57
    :cond_1
    sget-object v14, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 58
    const/4 v14, 0x1

    .line 119
    :goto_0
    return v14

    .line 2121
    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 62
    const-string/jumbo v15, "content"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "content":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    if-eqz v14, :cond_7

    .line 64
    const-string/jumbo v14, "&"

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "pairs":[Ljava/lang/String;
    array-length v15, v10

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_7

    aget-object v9, v10, v14

    .line 66
    .local v9, "pair":Ljava/lang/String;
    const-string/jumbo v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 67
    .local v13, "values":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 70
    const/16 v16, 0x0

    aget-object v6, v13, v16

    .line 71
    .local v6, "key":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v12, v13, v16

    .line 73
    .local v12, "value":Ljava/lang/String;
    const-string/jumbo v16, "schemeInnerSource"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string/jumbo v16, "useScan"

    .line 74
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 75
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableAddUseScan()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 76
    const-string/jumbo v16, "H5StartParamPlugin"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "not put key : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " value : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 79
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v17, "H5StartParamPlugin"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "set startParam [key] "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " [value] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v17, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->sendEventList:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 87
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 88
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6, v5}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 92
    .end local v5    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    monitor-exit v16

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v14
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "pair":Ljava/lang/String;
    .end local v10    # "pairs":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 113
    .local v11, "t":Ljava/lang/Throwable;
    const-string/jumbo v14, "H5StartParamPlugin"

    invoke-static {v14, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v11    # "t":Ljava/lang/Throwable;
    :goto_3
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 116
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3121
    .restart local v4    # "content":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 98
    const-string/jumbo v15, "launchParamsTag"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "launchParamsTag":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    invoke-interface {v14}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "appId"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v14

    .line 103
    invoke-virtual {v14, v3, v7}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 104
    .local v8, "launcherParam":Landroid/os/Bundle;
    if-eqz v8, :cond_8

    .line 105
    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    .line 106
    invoke-interface {v14}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 107
    const-string/jumbo v14, "H5StartParamPlugin"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "launchParamsTag "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    invoke-interface {v14}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 111
    .end local v3    # "appId":Ljava/lang/String;
    .end local v8    # "launcherParam":Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->h5Page:Liop;

    invoke-interface {v14}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 119
    .end local v4    # "content":Ljava/lang/String;
    .end local v7    # "launchParamsTag":Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 45
    const-string/jumbo v0, "setStartParam"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method
