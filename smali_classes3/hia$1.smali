.class public final Lhia$1;
.super Ljava/lang/Object;
.source "HpmConfigDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lhia;


# direct methods
.method public constructor <init>(Lhia;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lhia;

    .prologue
    .line 77
    iput-object p1, p0, Lhia$1;->b:Lhia;

    iput-object p2, p0, Lhia$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    .prologue
    .line 80
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v24, "testApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhic;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v10, "betaApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhic;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v11, "configApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhic;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v18

    .line 85
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 88
    .local v8, "appId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 89
    .local v19, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "hpm_info"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 90
    .local v20, "jsonArr":Lorg/json/JSONArray;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 92
    .local v21, "jsonInfo":Lorg/json/JSONObject;
    new-instance v17, Lhic;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lhic;-><init>(Lorg/json/JSONObject;)V

    .line 93
    .local v17, "hpmInfo":Lhic;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "receive: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v6, v0, Lhic;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v17

    iget-object v4, v0, Lhic;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v17

    iget-object v4, v0, Lhic;->f:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 94
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "_test"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 102
    .end local v17    # "hpmInfo":Lhic;
    .end local v19    # "json":Lorg/json/JSONObject;
    .end local v20    # "jsonArr":Lorg/json/JSONArray;
    .end local v21    # "jsonInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .line 103
    .local v14, "e":Lorg/json/JSONException;
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v17    # "hpmInfo":Lhic;
    .restart local v19    # "json":Lorg/json/JSONObject;
    .restart local v20    # "jsonArr":Lorg/json/JSONArray;
    .restart local v21    # "jsonInfo":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "_beta"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 99
    :cond_2
    move-object/from16 v0, v17

    invoke-interface {v11, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 107
    .end local v8    # "appId":Ljava/lang/String;
    .end local v17    # "hpmInfo":Lhic;
    .end local v19    # "json":Lorg/json/JSONObject;
    .end local v20    # "jsonArr":Lorg/json/JSONArray;
    .end local v21    # "jsonInfo":Lorg/json/JSONObject;
    :cond_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 108
    .local v23, "testAppId":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhic;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhic;

    invoke-virtual {v2, v3}, Lhic;->a(Lhic;)I

    move-result v2

    if-gez v2, :cond_4

    .line 110
    :cond_5
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_6

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lhia$1;->b:Lhia;

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "test app "

    aput-object v7, v6, v2

    const/4 v2, 0x1

    aput-object v23, v6, v2

    const/4 v2, 0x2

    const-string/jumbo v7, ", version: "

    aput-object v7, v6, v2

    const/4 v7, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhic;

    iget-object v2, v2, Lhic;->c:Ljava/lang/String;

    aput-object v2, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lhia$2;

    invoke-direct {v7, v3, v2}, Lhia$2;-><init>(Lhia;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_6
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 117
    .end local v23    # "testAppId":Ljava/lang/String;
    :cond_7
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 118
    .local v9, "betaAppId":Ljava/lang/String;
    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhic;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhic;

    invoke-virtual {v2, v3}, Lhic;->a(Lhic;)I

    move-result v2

    if-gez v2, :cond_8

    .line 120
    :cond_9
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 124
    .end local v9    # "betaAppId":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->b:Lhia;

    .line 2038
    iget-object v2, v2, Lhia;->b:Lhia$a;

    .line 124
    invoke-virtual {v2, v11}, Lhia$a;->a(Ljava/util/Map;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->b:Lhia;

    .line 3038
    iget-object v2, v2, Lhia;->a:Lhif;

    .line 126
    if-eqz v2, :cond_e

    .line 127
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v12, "data":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->b:Lhia;

    .line 4038
    iget-object v2, v2, Lhia;->b:Lhia$a;

    .line 128
    invoke-virtual {v2}, Lhia$a;->a()Ljava/util/Map;

    move-result-object v22

    .line 129
    .local v22, "localInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhic;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v16, "hostToMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_b
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 131
    .restart local v8    # "appId":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lhic;

    .line 132
    .restart local v17    # "hpmInfo":Lhic;
    if-eqz v17, :cond_b

    .line 133
    invoke-virtual/range {v17 .. v17}, Lhic;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 134
    move-object/from16 v0, v17

    iget-object v2, v0, Lhic;->f:Lorg/json/JSONObject;

    if-eqz v2, :cond_b

    move-object/from16 v0, v17

    iget-object v2, v0, Lhic;->f:Lorg/json/JSONObject;

    const-string/jumbo v3, "home"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 135
    move-object/from16 v0, v17

    iget-object v2, v0, Lhic;->f:Lorg/json/JSONObject;

    const-string/jumbo v3, "home"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 136
    .local v15, "home":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->b:Lhia;

    .line 5038
    iget-object v2, v2, Lhia;->a:Lhif;

    .line 136
    move-object/from16 v0, v17

    iget-object v3, v0, Lhic;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v15, v0}, Lhif;->a(Ljava/lang/String;Ljava/lang/String;Lhic;)V

    .line 137
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 139
    .local v25, "uri":Landroid/net/Uri;
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v26

    .line 140
    .local v26, "uriHost":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 141
    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v26, v3, v2

    const/4 v2, 0x1

    const-string/jumbo v4, ","

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object v15, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, ","

    aput-object v4, v3, v2

    const/4 v4, 0x4

    .line 142
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v4

    const/4 v2, 0x5

    const-string/jumbo v4, ","

    aput-object v4, v3, v2

    const/4 v2, 0x6

    move-object/from16 v0, v17

    iget-object v4, v0, Lhic;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 141
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "args":Ljava/lang/String;
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "hpm"

    const-string/jumbo v4, "hpm_open_hpm_app_package_invalid"

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 148
    .end local v5    # "args":Ljava/lang/String;
    .end local v26    # "uriHost":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 149
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 146
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v26    # "uriHost":Ljava/lang/String;
    :cond_c
    :try_start_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lhic;->a:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 154
    .end local v8    # "appId":Ljava/lang/String;
    .end local v15    # "home":Ljava/lang/String;
    .end local v17    # "hpmInfo":Lhic;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "uriHost":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->b:Lhia;

    .line 6038
    iget-object v2, v2, Lhia;->a:Lhif;

    .line 154
    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lhif;->a(Ljava/util/Map;)V

    .line 155
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "dataStr":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onResult: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lhia$1;->b:Lhia;

    .line 7038
    iget-object v2, v2, Lhia;->a:Lhif;

    .line 157
    invoke-interface {v2, v13}, Lhif;->g(Ljava/lang/String;)V

    .line 159
    .end local v12    # "data":Lorg/json/JSONArray;
    .end local v13    # "dataStr":Ljava/lang/String;
    .end local v16    # "hostToMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "localInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhic;>;"
    :cond_e
    return-void
.end method
