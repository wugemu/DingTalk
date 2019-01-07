.class public final Leit;
.super Ljava/lang/Object;
.source "ScreenConfigHandler.java"

# interfaces
.implements Leij;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JLorg/json/JSONObject;)V
    .locals 12
    .param p0, "orgId"    # J
    .param p2, "orgData"    # Lorg/json/JSONObject;

    .prologue
    .line 160
    if-nez p2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v11, 0x0

    .line 166
    .local v11, "themeConfigStr":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "themeConfig"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "encodedThemeConfigStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Leim;->a(J)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v8    # "encodedThemeConfigStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Leim;->a(J)V

    goto :goto_0

    .line 171
    .restart local v8    # "encodedThemeConfigStr":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "UTF-8"

    invoke-static {v8, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_1

    .line 181
    .end local v8    # "encodedThemeConfigStr":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    .line 183
    .local v9, "themeConfig":Lorg/json/JSONObject;
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v9    # "themeConfig":Lorg/json/JSONObject;
    .local v10, "themeConfig":Lorg/json/JSONObject;
    move-object v9, v10

    .line 188
    .end local v10    # "themeConfig":Lorg/json/JSONObject;
    .restart local v9    # "themeConfig":Lorg/json/JSONObject;
    :goto_2
    if-nez v9, :cond_3

    .line 189
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Leim;->a(J)V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 193
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string/jumbo v1, "md5"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "md5":Ljava/lang/String;
    const-string/jumbo v1, "url"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "mediaId":Ljava/lang/String;
    const-string/jumbo v1, "priority"

    const-wide/16 v2, 0x0

    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 197
    .local v6, "priority":J
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    :cond_4
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Leim;->a(J)V

    goto :goto_0

    .line 202
    :cond_5
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    move-wide v2, p0

    invoke-virtual/range {v1 .. v7}, Leim;->a(JLjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lekr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "newSplashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    new-instance v4, Lekz;

    invoke-direct {v4}, Lekz;-><init>()V

    .line 261
    .local v4, "splashDataSource":Leky;
    const/16 v5, 0x3e8

    invoke-interface {v4, v5}, Leky;->a(I)Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "oldSplashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 263
    :cond_0
    invoke-interface {v4}, Leky;->a()I

    .line 264
    invoke-interface {v4, p0}, Leky;->a(Ljava/util/List;)I

    .line 265
    invoke-static {}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a()V

    .line 300
    :goto_0
    return-void

    .line 269
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v3, "splashDataObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lekr;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lekr;

    .line 271
    .local v2, "splashDataObject":Lekr;
    if-eqz v2, :cond_2

    iget-object v6, v2, Lekr;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 275
    iget-object v6, v2, Lekr;->a:Ljava/lang/String;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 278
    .end local v2    # "splashDataObject":Lekr;
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lekr;

    .line 279
    .restart local v2    # "splashDataObject":Lekr;
    if-eqz v2, :cond_4

    .line 283
    iget-object v6, v2, Lekr;->a:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekr;

    .line 284
    .local v0, "oldSplashDataObject":Lekr;
    if-eqz v0, :cond_4

    .line 288
    iget-wide v6, v2, Lekr;->l:J

    iget-wide v8, v0, Lekr;->l:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget-object v6, v2, Lekr;->c:Ljava/lang/String;

    iget-object v7, v0, Lekr;->c:Ljava/lang/String;

    .line 289
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 293
    iget v6, v0, Lekr;->m:I

    iput v6, v2, Lekr;->m:I

    goto :goto_2

    .line 296
    .end local v0    # "oldSplashDataObject":Lekr;
    .end local v2    # "splashDataObject":Lekr;
    :cond_5
    invoke-interface {v4}, Leky;->a()I

    .line 297
    invoke-interface {v4, p0}, Leky;->a(Ljava/util/List;)I

    .line 299
    invoke-static {}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a()V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 16
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    const-string/jumbo v13, "splashConfig"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcoz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 208
    .local v6, "orgScreenSubJsonObject":Lorg/json/JSONObject;
    if-nez v6, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string/jumbo v13, "version"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 213
    .local v10, "orgSplashVersion":J
    const-string/jumbo v13, "orgId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 214
    .local v4, "orgId":J
    const-string/jumbo v13, "list"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 215
    .local v7, "orgSplashJsonArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    .line 219
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v12, "splashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 221
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 222
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 223
    .local v8, "orgSplashJsonObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    .line 227
    new-instance v9, Lekr;

    invoke-direct {v9}, Lekr;-><init>()V

    .line 228
    .local v9, "splashDataObject":Lekr;
    const-string/jumbo v13, "splashId"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lekr;->a:Ljava/lang/String;

    .line 229
    const-string/jumbo v13, "type"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lekr;->b:I

    .line 230
    const-string/jumbo v13, "mediaId"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lekr;->c:Ljava/lang/String;

    .line 231
    const-string/jumbo v13, "jumpUrl"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lekr;->d:Ljava/lang/String;

    .line 232
    const-string/jumbo v13, "startTime"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v9, Lekr;->e:J

    .line 233
    const-string/jumbo v13, "endTime"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v9, Lekr;->f:J

    .line 234
    const-string/jumbo v13, "startLoadTime"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v9, Lekr;->g:J

    .line 235
    const-string/jumbo v13, "duration"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v9, Lekr;->h:J

    .line 236
    const-string/jumbo v13, "priority"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lekr;->i:I

    .line 237
    const-string/jumbo v13, "attachmentMediaId"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lekr;->j:Ljava/lang/String;

    .line 238
    const-string/jumbo v13, "textColor"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lekr;->k:Ljava/lang/String;

    .line 239
    iput-wide v4, v9, Lekr;->l:J

    .line 240
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-gtz v13, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2109
    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v14

    .line 241
    iput-wide v14, v9, Lekr;->l:J

    .line 244
    :cond_2
    iget-object v13, v9, Lekr;->a:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v9, Lekr;->c:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 248
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v9    # "splashDataObject":Lekr;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 252
    .end local v8    # "orgSplashJsonObject":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v13, "pref_key_org_splash_version"

    invoke-static {v13}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v13, v10, v14

    if-lez v13, :cond_0

    .line 253
    const-string/jumbo v13, "pref_key_org_splash_version"

    invoke-static {v13, v10, v11}, Lcpk;->b(Ljava/lang/String;J)V

    .line 254
    invoke-static {v12}, Leit;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 61
    .line 1076
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1080
    const/4 v1, 0x0

    .line 1082
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 1086
    :goto_0
    if-eqz v6, :cond_4

    .line 1091
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1093
    const-string/jumbo v0, "org_screen_sub"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1096
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_5

    .line 1098
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide v2, v0

    .line 1100
    :goto_1
    if-eqz v8, :cond_2

    .line 1102
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 1103
    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1106
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1107
    if-eqz v10, :cond_0

    .line 1112
    const-string/jumbo v1, "orgId"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1113
    cmp-long v1, v12, v2

    if-nez v1, :cond_1

    .line 1114
    invoke-direct {p0, v10, v0}, Leit;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1120
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v10}, Leit;->a(JLorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1126
    :goto_3
    const-string/jumbo v1, "extraConfig"

    invoke-static {v10, v1}, Lcoz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1127
    if-eqz v1, :cond_0

    .line 1132
    :try_start_2
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1083
    :catch_1
    move-exception v0

    .line 1084
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v6, v1

    goto :goto_0

    .line 1121
    :catch_2
    move-exception v1

    .line 1122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1140
    :cond_2
    const-string/jumbo v0, "extraConfig"

    invoke-static {v6, v0}, Lcoz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1141
    if-eqz v0, :cond_3

    .line 1143
    :try_start_3
    const-string/jumbo v1, "global"

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1150
    :cond_3
    :goto_4
    const-string/jumbo v0, "pref_key_org_config_data"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->B()V

    .line 2102
    const-string/jumbo v0, "pref_key_last_check_splash_time"

    invoke-static {v0, v4, v5}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1156
    invoke-static {}, Lela;->b()V

    .line 62
    :cond_4
    return-void

    .line 1144
    :catch_3
    move-exception v0

    .line 1145
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_5
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
