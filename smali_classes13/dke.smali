.class public Ldke;
.super Ljava/lang/Object;
.source "MicroAppRedDotManager.java"


# static fields
.field private static volatile b:Ldke;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldke;->a:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public static a()Ldke;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Ldke;->b:Ldke;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Ldke;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Ldke;->b:Ldke;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ldke;

    invoke-direct {v0}, Ldke;-><init>()V

    sput-object v0, Ldke;->b:Ldke;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Ldke;->b:Ldke;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "appId"    # J

    .prologue
    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sp_key_micro_app_old_ver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 8
    .param p1, "appObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 135
    .local v0, "currentId":J
    iget-object v4, p0, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 136
    .local v2, "userMicroApp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 140
    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 142
    .local v3, "verServer":I
    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ldke;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcpk;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 19
    .param p1, "reload"    # Z

    .prologue
    .line 59
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v6

    .line 60
    .local v6, "currentUid":J
    move-object/from16 v0, p0

    iget-object v14, v0, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string/jumbo v14, "sp_key_micro_app_new_ver"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "value":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 66
    const-string/jumbo v14, "im"

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "MicroAppRedDotManager load data is empty"

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 68
    move-object/from16 v0, p0

    iget-object v14, v0, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_2
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 77
    .local v9, "jsonArray":Lorg/json/JSONArray;
    const-string/jumbo v14, "dt_micro_app_new_reddot"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "contentValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 79
    new-instance v9, Lorg/json/JSONArray;

    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v9, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v9    # "jsonArray":Lorg/json/JSONArray;
    const-string/jumbo v14, "im"

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "MicroAppRedDotManager load data value: "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 86
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v4, "appMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_5

    .line 88
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 89
    .local v11, "object":Lorg/json/JSONObject;
    if-eqz v11, :cond_3

    .line 90
    const-string/jumbo v14, "appId"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 91
    .local v2, "appId":J
    const-string/jumbo v14, "ver"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 92
    .local v13, "ver":I
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-eqz v14, :cond_3

    if-lez v13, :cond_3

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v2    # "appId":J
    .end local v13    # "ver":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 82
    .end local v4    # "appMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v11    # "object":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v14, "im"

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "MicroAppRedDotManager load data content is null: "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v12, v16, v17

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    .end local v5    # "contentValue":Ljava/lang/String;
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    const-string/jumbo v14, "im"

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "MicroAppRedDotManager load data fail: "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v12, v16, v17

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 97
    .restart local v4    # "appMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v5    # "contentValue":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "jsonArray":Lorg/json/JSONArray;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
