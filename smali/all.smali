.class public final Lall;
.super Ljava/lang/Object;
.source "SelfChecker.java"

# interfaces
.implements Lajz$a;


# static fields
.field private static a:Lall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lall;

    invoke-direct {v0}, Lall;-><init>()V

    sput-object v0, Lall;->a:Lall;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lall;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lall;->a:Lall;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v9, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v12, "current_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v12, "is_init"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v14

    .line 1629
    iget-boolean v14, v14, Lajw;->l:Z

    .line 68
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v12, "sdk_version"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v12, "appkey"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v14

    .line 2309
    iget-object v14, v14, Lajw;->d:Ljava/lang/String;

    .line 70
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v12, "secret"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lajw;->a()Lajw;

    .line 2313
    const/4 v14, 0x0

    .line 71
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v12

    .line 2342
    iget-object v2, v12, Lajw;->e:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .line 73
    .local v2, "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    if-eqz v2, :cond_c

    .line 74
    instance-of v12, v2, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    if-eqz v12, :cond_8

    .line 75
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "1"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_0
    :goto_0
    const-string/jumbo v12, "run_process"

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v13

    .line 3305
    iget-object v13, v13, Lajw;->c:Landroid/content/Context;

    .line 84
    invoke-static {v13}, Laml;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v12, "ut_realtime_debug_switch"

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v13

    invoke-virtual {v13}, Lajw;->j()Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v12, "ap_realtime_debug_switch"

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v13

    .line 3468
    iget-boolean v13, v13, Lajw;->q:Z

    .line 86
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v12, "ap_sampling_seed"

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v13

    .line 4332
    iget v13, v13, Lfzf;->b:I

    .line 88
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v12, "upload_interval"

    invoke-static {}, Lame;->a()Lame;

    move-result-object v13

    .line 5319
    iget-wide v14, v13, Lame;->b:J

    .line 89
    invoke-virtual {v9, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6124
    const/16 v16, 0x0

    .line 6125
    const/4 v15, 0x0

    .line 6126
    const/4 v14, 0x0

    .line 6127
    const/4 v13, 0x0

    .line 6128
    const/4 v12, 0x0

    .line 6129
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result v17

    if-nez v17, :cond_5

    .line 6131
    :try_start_2
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6133
    const-string/jumbo v18, "cp"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 6134
    if-eqz v17, :cond_2

    .line 6135
    const-string/jumbo v18, "ap"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 6136
    if-eqz v18, :cond_1

    .line 6137
    const-string/jumbo v14, "type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6138
    const-string/jumbo v14, "module"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6139
    const-string/jumbo v15, "point"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6141
    :cond_1
    const-string/jumbo v18, "ut"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 6142
    if-eqz v17, :cond_2

    .line 6143
    const-string/jumbo v12, "eventId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6144
    const-string/jumbo v12, "arg1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 6147
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 6148
    const-string/jumbo v17, "ap_sampling_result"

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Lcom/alibaba/appmonitor/event/EventType;->getEventTypeByNameSpace(Ljava/lang/String;)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v16

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14, v15}, Lfzf;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6150
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 6151
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 6152
    sget-object v15, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v15}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6153
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 6154
    sget-object v13, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v13}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6156
    :cond_4
    const-string/jumbo v12, "ut_sampling_result"

    invoke-static {}, Laki;->a()Laki;

    move-result-object v13

    invoke-virtual {v13, v14}, Laki;->a(Ljava/util/Map;)Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 91
    :cond_5
    :goto_1
    :try_start_3
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v12

    .line 7051
    iget-boolean v11, v12, Lamd;->d:Z

    .line 92
    .local v11, "uploadSuccess":Z
    const-string/jumbo v12, "upload_success"

    invoke-virtual {v9, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v12, "upload_mode"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lame;->a()Lame;

    move-result-object v14

    .line 7323
    iget-object v14, v14, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 93
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v12

    invoke-virtual {v12}, Lajw;->b()Z

    move-result v8

    .line 95
    .local v8, "isDegradeToHttp":Z
    const-string/jumbo v12, "tnet_degrade"

    invoke-virtual {v9, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    if-eqz v8, :cond_6

    .line 97
    const-string/jumbo v12, "tnet_error_code"

    sget v13, Lamb;->b:I

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    :cond_6
    if-nez v11, :cond_7

    .line 100
    const-string/jumbo v12, "http_error_code"

    sget v13, Lamh;->a:I

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    :cond_7
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v12

    .line 7621
    iget-object v12, v12, Lajw;->m:Lako;

    .line 103
    const-class v13, Lakd;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-virtual/range {v12 .. v16}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 104
    .local v6, "entitys":Ljava/util/List;, "Ljava/util/List<+Lakd;>;"
    if-eqz v6, :cond_9

    .line 105
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_9

    .line 106
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lakd;

    .line 107
    .local v5, "entity":Lakd;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "entity.getGroupname()"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8027
    iget-object v13, v5, Lakd;->a:Ljava/lang/String;

    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 8039
    iget-object v13, v5, Lakd;->b:Ljava/lang/String;

    .line 107
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 76
    .end local v5    # "entity":Lakd;
    .end local v6    # "entitys":Ljava/util/List;, "Ljava/util/List<+Lakd;>;"
    .end local v7    # "i":I
    .end local v8    # "isDegradeToHttp":Z
    .end local v11    # "uploadSuccess":Z
    :cond_8
    instance-of v12, v2, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    if-eqz v12, :cond_b

    .line 77
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "2"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 110
    .end local v2    # "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v12, "resport_error"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 117
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_9
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 8169
    .local v10, "ret":Ljava/lang/String;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v12

    .line 8305
    iget-object v12, v12, Lajw;->c:Landroid/content/Context;

    .line 8169
    const-string/jumbo v13, "logs"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 8170
    if-eqz v12, :cond_a

    .line 8171
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "analytics.log"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8172
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 8173
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 8185
    :goto_4
    :try_start_5
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8186
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 8187
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 8188
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    :cond_a
    :goto_5
    return-object v10

    .line 78
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v2    # "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :cond_b
    :try_start_6
    instance-of v12, v2, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    if-eqz v12, :cond_0

    .line 79
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "3"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 82
    :cond_c
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "-1"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v2    # "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .restart local v3    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 114
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 8176
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "e1":Lorg/json/JSONException;
    .restart local v10    # "ret":Ljava/lang/String;
    :cond_d
    :try_start_7
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_e

    .line 8177
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 8179
    :cond_e
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 8180
    :catch_2
    move-exception v12

    .line 8181
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 8190
    :catch_3
    move-exception v12

    invoke-static {}, Lamu;->d()V

    goto :goto_5

    .end local v10    # "ret":Ljava/lang/String;
    .restart local v2    # "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :catch_4
    move-exception v12

    goto/16 :goto_1

    :catch_5
    move-exception v12

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 54
    const-string/jumbo v1, "SelfChecker"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lall$1;

    invoke-direct {v0, p0, p1, p2}, Lall$1;-><init>(Lall;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "selfCheckTask":Ljava/lang/Runnable;
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-static {v1, v0, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 62
    return-void
.end method
