.class public final Lhnl;
.super Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;
.source "MiniAppBizRpcProviderImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lhob;
    .locals 6
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lhob;"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Lhob;

    invoke-direct {v1}, Lhob;-><init>()V

    .line 227
    .local v1, "miniAppMetaDataQueryModel":Lhob;
    iput-object p0, v1, Lhob;->a:Ljava/lang/String;

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "*"

    .line 229
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    iput-object p1, v1, Lhob;->b:Ljava/lang/String;

    .line 233
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 234
    .local v3, "orgJsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz p2, :cond_2

    .line 235
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 236
    .local v2, "orgId":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    .end local v2    # "orgId":Ljava/lang/Long;
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 242
    .local v0, "extendedJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "orgIdList"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lhob;->c:Ljava/lang/String;

    .line 245
    return-object v1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 166
    .local v0, "callbackObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "resultCode"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lhnl;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhnl;
    .param p1, "x1"    # I

    .prologue
    .line 34
    const/16 v0, 0x12c

    invoke-static {v0}, Lhnl;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lhnl;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lhnl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    const/16 v0, 0x190

    .line 2177
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2178
    const-string/jumbo v2, "resultCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    const-string/jumbo v0, "lwpErrorCode"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 34
    return-object v0
.end method


# virtual methods
.method public final rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
    .locals 20
    .param p1, "rpcName"    # Ljava/lang/String;
    .param p2, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .prologue
    .line 58
    const-string/jumbo v15, "MiniAppBizRpcProviderImpl"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "appReq="

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object p2, v16, v17

    .line 1071
    const-string/jumbo v17, "mini_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 62
    .local v2, "callbackObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v15, "resultCode"

    const/16 v16, 0x258

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/4 v15, 0x0

    const/16 v16, 0x258

    invoke-static/range {v15 .. v16}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPackageManageResult(II)V

    .line 64
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v15

    .line 161
    .end local v2    # "callbackObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v15

    .line 67
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v8, "miniAppMetaDataQueryModels":Ljava/util/List;, "Ljava/util/List<Lhob;>;"
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    .line 71
    .local v10, "queryJson":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 72
    .local v11, "queryObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 73
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 74
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 75
    .local v6, "entryObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_1

    .line 76
    const-string/jumbo v15, "app_id"

    invoke-virtual {v6, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "miniAppId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 80
    invoke-static {}, Lhmn;->a()Z

    move-result v15

    if-eqz v15, :cond_4

    const-string/jumbo v15, "2018030202303012"

    invoke-static {v7, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 81
    const-string/jumbo v15, "MiniAppBizRpcProviderImpl"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "exclude appx update"

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lhmv;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "entryObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "miniAppId":Ljava/lang/String;
    .end local v11    # "queryObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const-string/jumbo v15, "MiniAppBizRpcProviderImpl"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "MiniAppIService.getMiniAppMetaData"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string/jumbo v18, "parseObject exception="

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 97
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 96
    invoke-static/range {v15 .. v16}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/String;

    .line 101
    .local v12, "result":[Ljava/lang/String;
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 102
    .local v3, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    const-class v15, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v15}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 103
    .local v13, "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    new-instance v15, Lhnl$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v3}, Lhnl$1;-><init>(Lhnl;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v13, v8, v15}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->getMiniAppMetaData(Ljava/util/List;Liyv;)V

    .line 148
    const-wide/16 v16, 0x1e

    :try_start_1
    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v15}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_3
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_2

    .line 156
    const/4 v15, 0x0

    const/16 v16, 0x384

    invoke-static/range {v16 .. v16}, Lhnl;->a(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v15

    .line 159
    :cond_2
    const/4 v15, 0x0

    aget-object v15, v12, v15

    .line 1184
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1186
    :try_start_2
    invoke-static {v15}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 1187
    if-eqz v15, :cond_3

    .line 1188
    const-string/jumbo v16, "resultCode"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v16

    .line 1189
    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 1190
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgvi;->fetchAlipayPackageConfigError(I)V

    .line 1191
    const-string/jumbo v17, "lwpErrorCode"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1192
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1193
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPackageManageResult(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1199
    :goto_4
    :try_start_3
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1200
    const-string/jumbo v18, "lwpErrorCode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string/jumbo v15, "resultCode"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string/jumbo v15, "bizRpcFail"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 161
    :cond_3
    :goto_5
    const/4 v15, 0x0

    aget-object v15, v12, v15

    goto/16 :goto_0

    .line 85
    .end local v3    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v12    # "result":[Ljava/lang/String;
    .end local v13    # "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "entryObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "miniAppId":Ljava/lang/String;
    .restart local v11    # "queryObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    :try_start_4
    const-string/jumbo v15, "version"

    invoke-virtual {v6, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 86
    .local v14, "version":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v9

    .line 87
    .local v9, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v7, v14, v9}, Lhnl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lhob;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 92
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "entryObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "miniAppId":Ljava/lang/String;
    .end local v9    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "version":Ljava/lang/String;
    :cond_5
    const-string/jumbo v15, "MiniAppBizRpcProviderImpl"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "MiniAppIService.getMiniAppMetaData"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string/jumbo v18, "miniAppMetaDataQueryModels="

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v8, v16, v17

    invoke-static/range {v15 .. v16}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 149
    .end local v11    # "queryObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v12    # "result":[Ljava/lang/String;
    .restart local v13    # "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    :catch_1
    move-exception v4

    .line 150
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 152
    const/4 v15, 0x0

    const/16 v16, 0x1f4

    invoke-static/range {v16 .. v16}, Lhnl;->a(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v15

    goto/16 :goto_3

    .line 1195
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_6
    const/16 v17, 0x0

    :try_start_5
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v15, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPackageManageResult(Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 1212
    :catch_2
    move-exception v15

    .line 1213
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1204
    :catch_3
    move-exception v15

    .line 1205
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 1208
    :cond_7
    const/4 v15, 0x1

    invoke-static/range {v15 .. v16}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPackageManageResult(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5
.end method
