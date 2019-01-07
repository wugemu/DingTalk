.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappNuvaBridgePlugin;
.super Lipd;
.source "MiniappNuvaBridgePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 26
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 47
    .line 1065
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 48
    .local v13, "action":Ljava/lang/String;
    const-string/jumbo v8, "ddExec"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "webDdExec"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 49
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v14

    .line 50
    .local v14, "activity":Landroid/app/Activity;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v18

    .line 52
    .local v18, "page":Liop;
    if-nez v18, :cond_1

    .line 53
    const/16 v8, 0x2715

    const-string/jumbo v10, "page is null"

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v10}, Liny;->sendError(ILjava/lang/String;)V

    .line 54
    const/4 v8, 0x1

    .line 123
    .end local v14    # "activity":Landroid/app/Activity;
    .end local v18    # "page":Liop;
    :goto_0
    return v8

    .line 1121
    .restart local v14    # "activity":Landroid/app/Activity;
    .restart local v18    # "page":Liop;
    :cond_1
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 57
    const-string/jumbo v10, "serviceName"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2121
    .local v6, "serviceName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 58
    const-string/jumbo v10, "actionName"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "actionName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    :cond_2
    const/16 v8, 0x2711

    const-string/jumbo v10, "api is null"

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v10}, Liny;->sendError(ILjava/lang/String;)V

    .line 61
    const/4 v8, 0x1

    goto :goto_0

    .line 3121
    :cond_3
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 64
    const-string/jumbo v10, "args"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 65
    .local v15, "args":Lcom/alibaba/fastjson/JSONObject;
    if-nez v15, :cond_4

    .line 66
    new-instance v15, Lcom/alibaba/fastjson/JSONObject;

    .end local v15    # "args":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v15}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4121
    .restart local v15    # "args":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 69
    const-string/jumbo v10, "alias"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const/16 v17, 0x0

    .line 71
    .local v17, "miniappInstance":Lhls;
    instance-of v8, v14, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    if-eqz v8, :cond_6

    move-object/from16 v16, v14

    .line 72
    check-cast v16, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .line 4264
    .local v16, "miniappActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a:Lhls;

    move-object/from16 v17, v0

    .line 80
    .end local v16    # "miniappActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
    :cond_5
    :goto_1
    if-eqz v17, :cond_e

    .line 4390
    move-object/from16 v0, v17

    iget-object v8, v0, Lhls;->a:Lhlu;

    .line 80
    if-eqz v8, :cond_e

    .line 5390
    move-object/from16 v0, v17

    iget-object v4, v0, Lhls;->a:Lhlu;

    .line 82
    .local v4, "pluginManager":Lcom/alibaba/lightapp/runtime/PluginManager;
    instance-of v8, v4, Lhlu;

    if-nez v8, :cond_7

    .line 83
    const/16 v8, 0x2712

    const-string/jumbo v10, "plugin manager is invalid"

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v10}, Liny;->sendError(ILjava/lang/String;)V

    .line 84
    const/4 v8, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "pluginManager":Lcom/alibaba/lightapp/runtime/PluginManager;
    :cond_6
    invoke-interface/range {v18 .. v18}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 76
    invoke-interface/range {v18 .. v18}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v10, "appId"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 77
    .local v20, "targetId":Ljava/lang/String;
    invoke-static {}, Lhmq;->a()Lhmq;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lhmq;->a(Ljava/lang/String;)Lhls;

    move-result-object v17

    goto :goto_1

    .line 87
    .end local v20    # "targetId":Ljava/lang/String;
    .restart local v4    # "pluginManager":Lcom/alibaba/lightapp/runtime/PluginManager;
    :cond_7
    invoke-interface/range {v18 .. v18}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "url":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Liny;->getId()Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "callbackId":Ljava/lang/String;
    new-instance v12, Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    invoke-direct {v12}, Lcom/alibaba/lightapp/runtime/ActionRequest$b;-><init>()V

    .line 92
    .local v12, "miniAppInfo":Lcom/alibaba/lightapp/runtime/ActionRequest$b;
    invoke-interface/range {v18 .. v18}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v19

    .line 93
    .local v19, "params":Landroid/os/Bundle;
    const-string/jumbo v8, "appId"

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->a:Ljava/lang/String;

    .line 94
    const-string/jumbo v8, "ddCorpId"

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->c:Ljava/lang/String;

    .line 95
    const-string/jumbo v8, "ddAppId"

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->d:Ljava/lang/String;

    .line 96
    const-string/jumbo v8, "ddAgentId"

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->e:Ljava/lang/String;

    .line 97
    const-string/jumbo v8, "ddAppType"

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->b:Ljava/lang/String;

    .line 104
    const-string/jumbo v8, "internal.util"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "registerNativeCall"

    .line 105
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v8, v4

    .line 106
    check-cast v8, Lhlu;

    .line 6053
    iget-object v10, v8, Lhlu;->j:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 6054
    iget-object v8, v8, Lhlu;->j:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_8
    :goto_2
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v8, "hybrid_nuva_bridge_check_permission_hint"

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 112
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    move-result-object v10

    .line 7088
    if-eqz p1, :cond_9

    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_b

    .line 115
    :cond_9
    :goto_3
    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-virtual/range {v4 .. v12}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/alibaba/lightapp/runtime/ActionRequest$b;)Ljava/lang/String;

    .line 120
    .end local v4    # "pluginManager":Lcom/alibaba/lightapp/runtime/PluginManager;
    .end local v5    # "url":Ljava/lang/String;
    .end local v9    # "callbackId":Ljava/lang/String;
    .end local v12    # "miniAppInfo":Lcom/alibaba/lightapp/runtime/ActionRequest$b;
    .end local v19    # "params":Landroid/os/Bundle;
    :goto_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .restart local v4    # "pluginManager":Lcom/alibaba/lightapp/runtime/PluginManager;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v9    # "callbackId":Ljava/lang/String;
    .restart local v12    # "miniAppInfo":Lcom/alibaba/lightapp/runtime/ActionRequest$b;
    .restart local v19    # "params":Landroid/os/Bundle;
    :cond_a
    move-object v8, v4

    .line 108
    check-cast v8, Lhlu;

    .line 7038
    iget-object v8, v8, Lhlu;->k:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 7092
    :cond_b
    :try_start_1
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v8, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "."

    invoke-virtual {v8, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 7094
    sget-object v8, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    .line 7095
    if-eqz v8, :cond_9

    .line 7098
    invoke-static/range {p1 .. p1}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v21

    .line 7099
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 7103
    sget-object v22, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->b:Ljava/util/HashSet;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 7104
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1, v8}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V

    .line 7105
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v11

    new-instance v22, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v10, v1, v2, v8}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V

    const-wide/16 v24, 0x3e8

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v11, v0, v1, v2}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 7116
    :catch_0
    move-exception v8

    .line 7117
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 7111
    :cond_c
    :try_start_2
    sget-object v22, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->c:Ljava/util/HashSet;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 7112
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1, v8}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V

    goto/16 :goto_3

    .line 7113
    :cond_d
    sget-object v22, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->d:Ljava/util/HashSet;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 7114
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1, v8}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 117
    .end local v4    # "pluginManager":Lcom/alibaba/lightapp/runtime/PluginManager;
    .end local v5    # "url":Ljava/lang/String;
    .end local v9    # "callbackId":Ljava/lang/String;
    .end local v12    # "miniAppInfo":Lcom/alibaba/lightapp/runtime/ActionRequest$b;
    .end local v19    # "params":Landroid/os/Bundle;
    :cond_e
    const/16 v8, 0x2712

    const-string/jumbo v10, "plugin manager is null"

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v10}, Liny;->sendError(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 123
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "actionName":Ljava/lang/String;
    .end local v14    # "activity":Landroid/app/Activity;
    .end local v15    # "args":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "miniappInstance":Lhls;
    .end local v18    # "page":Liop;
    :cond_f
    invoke-super/range {p0 .. p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v8

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 41
    const-string/jumbo v0, "ddExec"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "webDdExec"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method
