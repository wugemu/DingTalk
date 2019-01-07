.class public final Lhie;
.super Ljava/lang/Object;
.source "HpmUpdateHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhie;->c:Ljava/util/Map;

    .line 54
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lhie;->a:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lhie;->a()V

    .line 56
    return-void
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 230
    iget-object v5, p0, Lhie;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 231
    iget-object v5, p0, Lhie;->a:Landroid/content/Context;

    const-string/jumbo v6, "dt_hpm_update_timestamp"

    invoke-static {v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "hpmJsonStr":Ljava/lang/String;
    const-string/jumbo v5, "HpmUpdateHelper"

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "deserializeUpdateMap==="

    aput-object v7, v6, v8

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 235
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "hpmJson":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 239
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, "appId":Ljava/lang/String;
    iget-object v5, p0, Lhie;->c:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "hpmJson":Lorg/json/JSONObject;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 250
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "hpmJsonStr":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 243
    .restart local v2    # "hpmJson":Lorg/json/JSONObject;
    .restart local v3    # "hpmJsonStr":Ljava/lang/String;
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v5, "HpmUpdateHelper"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "deserializeUpdateMap==="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lhie;->c:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 11
    .param p1, "appsUpdateTimeJson"    # Lorg/json/JSONObject;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "currentTime"    # J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    iget-object v4, p0, Lhie;->c:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v1, "appsUpdateTime":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lhie;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "dingTalkAppId":Ljava/lang/String;
    iget-object v5, p0, Lhie;->c:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v2    # "dingTalkAppId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Lorg/json/JSONException;
    if-nez p1, :cond_0

    .line 151
    :try_start_1
    iget-object v4, p0, Lhie;->a:Landroid/content/Context;

    const-string/jumbo v5, "dt_hpm_update_timestamp"

    invoke-static {v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "appsLastUpdateTime":Ljava/lang/String;
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v0    # "appsLastUpdateTime":Ljava/lang/String;
    .restart local p1    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    :goto_2
    const-string/jumbo v4, "HpmUpdateHelper"

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "appsUpdateTimeJson==="

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lhie;->a:Landroid/content/Context;

    const-string/jumbo v5, "dt_hpm_update_timestamp"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 170
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    const-string/jumbo v4, "HpmUpdateHelper"

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "deserializeUpdateMap==="

    aput-object v6, v5, v7

    iget-object v6, p0, Lhie;->c:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    return-void

    .line 147
    :cond_1
    :try_start_3
    iget-object v4, p0, Lhie;->a:Landroid/content/Context;

    const-string/jumbo v5, "dt_hpm_update_timestamp"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 155
    .end local p1    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    .restart local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .restart local p1    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 162
    :catch_2
    move-exception v4

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "dd_hpm_update"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 17
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    .line 136
    :goto_0
    return v12

    .line 114
    :cond_0
    const-wide/16 v8, 0x0

    .line 115
    .local v8, "timestamp":J
    const/4 v3, 0x0

    .line 116
    .local v3, "appsUpdateTimeJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lhie;->c:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lhie;->c:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 118
    const-string/jumbo v12, "HpmUpdateHelper"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "checkDtHpmUpdateTimestamp==="

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lhie;->c:Ljava/util/Map;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "====timestamp==="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1254
    .local v6, "current":J
    const/4 v12, 0x0

    invoke-static {v12}, Lcms;->k(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1255
    const-wide/32 v10, 0x1b7740

    .line 131
    .local v10, "updateInterval":J
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-eqz v12, :cond_1

    sub-long v12, v6, v8

    cmp-long v12, v12, v10

    if-lez v12, :cond_4

    .line 133
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v6, v7}, Lhie;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 134
    const/4 v12, 0x1

    goto :goto_0

    .line 121
    .end local v6    # "current":J
    .end local v10    # "updateInterval":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lhie;->a:Landroid/content/Context;

    const-string/jumbo v13, "dt_hpm_update_timestamp"

    invoke-static {v12, v13}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "appsLastUpdateTime":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v3    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    .local v4, "appsUpdateTimeJson":Lorg/json/JSONObject;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    move-object v3, v4

    .line 127
    .end local v4    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    .restart local v3    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    goto :goto_1

    .line 125
    :catch_0
    move-exception v5

    .line 126
    .local v5, "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1257
    .end local v2    # "appsLastUpdateTime":Ljava/lang/String;
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v6    # "current":J
    :cond_3
    const-wide/32 v10, 0xdbba00

    goto :goto_2

    .line 136
    .restart local v10    # "updateInterval":J
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 125
    .end local v3    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    .end local v6    # "current":J
    .end local v10    # "updateInterval":J
    .restart local v2    # "appsLastUpdateTime":Ljava/lang/String;
    .restart local v4    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    .restart local v3    # "appsUpdateTimeJson":Lorg/json/JSONObject;
    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    const-string/jumbo v1, "HpmUpdateHelper"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkAppUpdate: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 61
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lhie$1;

    invoke-direct {v1, p0, p1, p2}, Lhie$1;-><init>(Lhie;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lhie;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-direct {p0, p1}, Lhie;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string/jumbo v0, "HpmUpdateHelper"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "checkSingleAppUpdate====in=====: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/H5AppManager;->queryAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "appVersion":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "hpm"

    const-string/jumbo v1, "hpmAttemptUpdate"

    const-string/jumbo v4, "appVersion is empty"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v0

    invoke-interface {v0, p2}, Lhqw;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string/jumbo v0, "hpm"

    const-string/jumbo v1, "hpmAttemptUpdate"

    const-string/jumbo v4, "empty appVersion, but app is on SafeMode"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v5, "0.0.0.0"

    .line 84
    :cond_0
    const-string/jumbo v0, "HpmUpdateHelper"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "checkSingleAppUpdate====in==appVersion===: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Lhrq;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1223
    .local v2, "appIdLong":J
    :try_start_2
    iget-object v0, p0, Lhie;->b:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    if-nez v0, :cond_1

    .line 1224
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    iput-object v0, p0, Lhie;->b:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    .line 1226
    :cond_1
    iget-object v7, p0, Lhie;->b:Lcom/alibaba/lightapp/runtime/idl/HpmIService;

    .line 1176
    new-instance v0, Lhie$2;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lhie$2;-><init>(Lhie;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2, v3, v5, v0}, Lcom/alibaba/lightapp/runtime/idl/HpmIService;->hpmAttemptUpdate(JLjava/lang/String;Liyv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v2    # "appIdLong":J
    .end local v5    # "appVersion":Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    .restart local v5    # "appVersion":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v0, "hpm"

    const-string/jumbo v1, "hpmAttemptUpdate"

    const-string/jumbo v4, "empty appVersion"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 70
    .end local v5    # "appVersion":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    .restart local v5    # "appVersion":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 89
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
