.class public final Lhng;
.super Ljava/lang/Object;
.source "MiniappPermissionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lhnf;
    .locals 36
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 39
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    new-instance v19, Lhnf;

    invoke-direct/range {v19 .. v19}, Lhnf;-><init>()V

    .line 42
    .local v19, "h5ApiPermissionInfo":Lhnf;
    const-string/jumbo v3, "Enable_Proxy"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 43
    .local v17, "enableProxy":Ljava/lang/String;
    const-string/jumbo v3, "Enable_Proxy"

    .line 1055
    move-object/from16 v0, v19

    iget-object v4, v0, Lhnf;->d:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 1056
    move-object/from16 v0, v19

    iget-object v4, v0, Lhnf;->d:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    const-string/jumbo v3, "JSAPI_List"

    const/4 v4, 0x0

    .line 48
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v11

    .line 50
    .local v11, "JSAPI_List":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 51
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v23, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 53
    .local v13, "api":Ljava/lang/Object;
    if-eqz v13, :cond_1

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 54
    check-cast v13, Ljava/lang/String;

    .end local v13    # "api":Ljava/lang/Object;
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v11    # "JSAPI_List":Lcom/alibaba/fastjson/JSONArray;
    .end local v17    # "enableProxy":Ljava/lang/String;
    .end local v19    # "h5ApiPermissionInfo":Lhnf;
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 209
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MiniappPermissionUtil"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 212
    .local v2, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_2

    .line 213
    const-string/jumbo v3, "H5_PERMISSION_FILE_PARSE_FAIL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "appId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "^error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 214
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "H-EM"

    .line 213
    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v2    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v19, 0x0

    :goto_1
    return-object v19

    .line 57
    .restart local v11    # "JSAPI_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v17    # "enableProxy":Ljava/lang/String;
    .restart local v19    # "h5ApiPermissionInfo":Lhnf;
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v3, "JSAPI_List"

    .line 58
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 62
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v3, "DD_JSAPI_List"

    const/4 v4, 0x0

    .line 63
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 65
    .local v9, "DD_JSAPI_List":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 66
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 68
    .restart local v13    # "api":Ljava/lang/Object;
    if-eqz v13, :cond_5

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 69
    check-cast v13, Ljava/lang/String;

    .end local v13    # "api":Ljava/lang/Object;
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_6
    const-string/jumbo v3, "DD_JSAPI_List"

    .line 73
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_2
    const-string/jumbo v3, "openAppPermission"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v25

    .line 79
    .local v25, "openAppPermission":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v25, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 80
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 82
    .local v14, "app":Ljava/lang/Object;
    if-eqz v14, :cond_8

    instance-of v4, v14, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_8

    .line 83
    check-cast v14, Lcom/alibaba/fastjson/JSONObject;

    .end local v14    # "app":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 88
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    .end local v25    # "openAppPermission":Lcom/alibaba/fastjson/JSONArray;
    :catch_1
    move-exception v32

    .line 89
    .local v32, "throwable":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .end local v32    # "throwable":Ljava/lang/Throwable;
    :cond_9
    :goto_4
    const-string/jumbo v3, "EVENT_List"

    const/4 v4, 0x0

    .line 94
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 96
    .local v10, "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 97
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 99
    .local v18, "event":Ljava/lang/Object;
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 100
    check-cast v18, Ljava/lang/String;

    .end local v18    # "event":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 2030
    .end local v10    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    .restart local v25    # "openAppPermission":Lcom/alibaba/fastjson/JSONArray;
    :cond_b
    :try_start_4
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lhnf;->c:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 103
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    .end local v25    # "openAppPermission":Lcom/alibaba/fastjson/JSONArray;
    .restart local v10    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    :try_start_5
    const-string/jumbo v3, "EVENT_List"

    .line 104
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 108
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    const-string/jumbo v3, "validDomain"

    const/4 v4, 0x0

    .line 109
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v33

    .line 110
    .local v33, "validDomain":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v33, :cond_10

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 111
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 113
    .local v15, "domain":Ljava/lang/Object;
    if-eqz v15, :cond_e

    instance-of v4, v15, Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 114
    check-cast v15, Ljava/lang/String;

    .end local v15    # "domain":Ljava/lang/Object;
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 117
    :cond_f
    const-string/jumbo v3, "validDomain"

    .line 118
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 122
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    const-string/jumbo v3, "Webview_Config"

    const/4 v4, 0x0

    .line 123
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v35

    .line 124
    .local v35, "webview_config":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v35, :cond_14

    invoke-virtual/range {v35 .. v35}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 125
    invoke-virtual/range {v35 .. v35}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 126
    .local v21, "key":Ljava/lang/String;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v27, "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v34

    .line 128
    .local v34, "value":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v34, :cond_11

    .line 129
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    .line 130
    .local v28, "paramRegex":Ljava/lang/Object;
    if-eqz v28, :cond_12

    move-object/from16 v0, v28

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 131
    check-cast v28, Ljava/lang/String;

    .end local v28    # "paramRegex":Ljava/lang/Object;
    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 135
    :cond_13
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Webview_Config"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v21, v4, v5

    .line 136
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    .line 143
    .end local v21    # "key":Ljava/lang/String;
    .end local v27    # "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_14
    const-string/jumbo v3, "JSAPI_SP_Config"

    const/4 v4, 0x0

    .line 144
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v30

    .line 145
    .local v30, "sp_config":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v30, :cond_1a

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 146
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 147
    .restart local v21    # "key":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v34

    .line 148
    .local v34, "value":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v34, :cond_15

    .line 149
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v31, "subParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 152
    .local v26, "paramKey":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-static {v0, v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v29

    .line 155
    .local v29, "paramValue":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v29, :cond_16

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    .line 156
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    .line 158
    .restart local v28    # "paramRegex":Ljava/lang/Object;
    if-eqz v28, :cond_17

    move-object/from16 v0, v28

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 159
    check-cast v28, Ljava/lang/String;

    .end local v28    # "paramRegex":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 162
    :cond_18
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "JSAPI_SP_Config"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v21, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "_"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v26, v5, v6

    .line 163
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_a

    .line 168
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "paramKey":Ljava/lang/String;
    .end local v29    # "paramValue":Lcom/alibaba/fastjson/JSONArray;
    :cond_19
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "JSAPI_SP_Config"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v21, v4, v5

    .line 169
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_9

    .line 176
    .end local v21    # "key":Ljava/lang/String;
    .end local v31    # "subParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "value":Lcom/alibaba/fastjson/JSONObject;
    :cond_1a
    const-string/jumbo v3, "Valid_SubResMimeList"

    const/4 v4, 0x0

    .line 177
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    .line 179
    .local v12, "alid_SubResMimeList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v12, :cond_1d

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 180
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 182
    .local v24, "mimeRegex":Ljava/lang/Object;
    if-eqz v24, :cond_1b

    move-object/from16 v0, v24

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 183
    check-cast v24, Ljava/lang/String;

    .end local v24    # "mimeRegex":Ljava/lang/Object;
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 186
    :cond_1c
    const-string/jumbo v3, "Valid_SubResMimeList"

    .line 187
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 190
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    const-string/jumbo v3, "HttpLink_SubResMimeList"

    const/4 v4, 0x0

    .line 191
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v20

    .line 193
    .local v20, "http":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v20, :cond_20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    .line 194
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 196
    .restart local v24    # "mimeRegex":Ljava/lang/Object;
    if-eqz v24, :cond_1e

    move-object/from16 v0, v24

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 197
    check-cast v24, Ljava/lang/String;

    .end local v24    # "mimeRegex":Ljava/lang/Object;
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 200
    :cond_1f
    const-string/jumbo v3, "HttpLink_SubResMimeList"

    .line 201
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lhnf;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 204
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    const/4 v3, 0x1

    .line 3022
    move-object/from16 v0, v19

    iput-boolean v3, v0, Lhnf;->a:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;[B)Lhnf;
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 25
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 27
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p0, v2}, Lhng;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lhnf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 33
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v3

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MiniappPermissionUtil"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
