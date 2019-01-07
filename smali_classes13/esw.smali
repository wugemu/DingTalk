.class public final Lesw;
.super Ljava/lang/Object;
.source "FunctionDbInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 242
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_search_function_server_data"

    invoke-static {v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-wide v4

    .line 248
    :cond_1
    const/4 v2, 0x0

    .line 250
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 254
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v2, :cond_0

    .line 258
    const-string/jumbo v6, "ver"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 260
    .local v4, "version":J
    goto :goto_0

    .line 251
    .end local v4    # "version":J
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const-string/jumbo v1, "zh_CN"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const-string/jumbo v1, "zh_TW"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "zh_HK"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    const-string/jumbo v1, "ja_JP"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v0    # "text":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "en_US"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/search/model/FunctionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "functionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/android/search/model/FunctionModel;>;"
    invoke-static {}, Lcom/alibaba/android/search/utils/FunctionLocalData;->values()[Lcom/alibaba/android/search/utils/FunctionLocalData;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 130
    .local v1, "localFunctionData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    if-eqz v1, :cond_0

    .line 133
    new-instance v0, Lcom/alibaba/android/search/model/FunctionModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/FunctionModel;-><init>()V

    .line 134
    .local v0, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    iget v5, v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->mId:I

    invoke-virtual {v0, v5}, Lcom/alibaba/android/search/model/FunctionModel;->setFunctionId(I)V

    .line 135
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lcom/alibaba/android/search/utils/FunctionLocalData;->mNameResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/search/model/FunctionModel;->setName(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v0    # "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "localFunctionData":Lcom/alibaba/android/search/utils/FunctionLocalData;
    :cond_1
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/search/model/FunctionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "functionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/android/search/model/FunctionModel;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    const-string/jumbo v18, "pref_key_search_function_server_data"

    invoke-static/range {v17 .. v18}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 152
    const-string/jumbo v17, "data is empty"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 2069
    const-string/jumbo v19, "search_func"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v13, 0x0

    .line 158
    .local v13, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .local v14, "jsonObject":Lorg/json/JSONObject;
    move-object v13, v14

    .line 162
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-nez v13, :cond_2

    .line 163
    const-string/jumbo v17, "jsonObject is null"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 3069
    const-string/jumbo v19, "search_func"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :catch_0
    move-exception v9

    .line 160
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 168
    .local v7, "dataJSONArray":Lorg/json/JSONArray;
    if-nez v7, :cond_3

    .line 169
    const-string/jumbo v17, "dataJSONArray is null"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 4069
    const-string/jumbo v19, "search_func"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_3
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 174
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 175
    .local v10, "functionData":Lorg/json/JSONObject;
    if-eqz v10, :cond_4

    .line 179
    const-string/jumbo v17, "platform"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 180
    .local v16, "platformData":Lorg/json/JSONObject;
    if-eqz v16, :cond_4

    .line 184
    const-string/jumbo v17, "android"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 185
    .local v4, "androidPlatformObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 190
    const-string/jumbo v17, "ver"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "androidMinVer":Ljava/lang/String;
    invoke-static {v3}, Lcqa;->a(Ljava/lang/String;)I

    move-result v5

    .line 192
    .local v5, "compareResult":I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    .line 196
    new-instance v11, Lcom/alibaba/android/search/model/FunctionModel;

    invoke-direct {v11}, Lcom/alibaba/android/search/model/FunctionModel;-><init>()V

    .line 197
    .local v11, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    const-string/jumbo v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setFunctionId(I)V

    .line 198
    const-string/jumbo v17, "avatar"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setMediaId(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setUrl(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 201
    .local v15, "nameJSONObject":Lorg/json/JSONObject;
    invoke-static {v15}, Lesw;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setName(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v17, "desc"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 203
    .local v8, "descJSONObject":Lorg/json/JSONObject;
    invoke-static {v8}, Lesw;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/alibaba/android/search/model/FunctionModel;->setDesc(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v11}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v17

    const/16 v18, 0x1f4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 209
    const-string/jumbo v17, "map size: %d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    .line 5069
    const-string/jumbo v19, "search_func"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "androidMinVer":Ljava/lang/String;
    .end local v4    # "androidPlatformObj":Lorg/json/JSONObject;
    .end local v5    # "compareResult":I
    .end local v8    # "descJSONObject":Lorg/json/JSONObject;
    .end local v11    # "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    .end local v15    # "nameJSONObject":Lorg/json/JSONObject;
    .end local v16    # "platformData":Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Z)Z
    .locals 10
    .param p1, "deleteFirst"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v1, "functionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/android/search/model/FunctionModel;>;"
    invoke-static {v1}, Lesw;->a(Ljava/util/Map;)V

    .line 93
    invoke-direct {p0, v1}, Lesw;->b(Ljava/util/Map;)V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, "functionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/FunctionModel;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 97
    .local v5, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 99
    .local v4, "key":Ljava/lang/Integer;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/FunctionModel;

    .line 101
    .local v2, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v2    # "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    .end local v4    # "key":Ljava/lang/Integer;
    :cond_1
    invoke-static {}, Lenn;->a()Lenn;

    move-result-object v7

    invoke-virtual {v7}, Lenn;->b()Lenm;

    move-result-object v0

    .line 109
    .local v0, "fs":Lenm;
    if-nez v0, :cond_2

    .line 110
    const-string/jumbo v7, "FunctionSource is null"

    new-array v8, v6, [Ljava/lang/Object;

    .line 1069
    const-string/jumbo v9, "search_func"

    invoke-static {v9, v7, v8}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_1
    return v6

    .line 115
    :cond_2
    if-eqz p1, :cond_3

    .line 116
    invoke-interface {v0}, Lenm;->a()V

    .line 120
    :cond_3
    invoke-interface {v0, v3}, Lenm;->a(Ljava/util/List;)Z

    move-result v6

    goto :goto_1
.end method
