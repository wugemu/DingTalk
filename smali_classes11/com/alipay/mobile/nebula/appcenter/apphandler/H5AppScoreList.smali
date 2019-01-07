.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
.super Ljava/lang/Object;
.source "H5AppScoreList.java"


# static fields
.field private static final H5_LIMIT_CODE:I = 0x18769

.field public static final PRE_DOWNLOAD_IN_WIFI_STRATEGY:I = 0x4

.field public static final PRE_ZIP_STRATEGY:I = 0x1

.field private static final RPC_LIMIT_TAG:Ljava/lang/String; = "limit_tag"

.field private static final SCORE_RPC_TYPE:Ljava/lang/String; = "com.alipay.hpmweb.queryAppCredit"

.field public static final STRONG_REQ_STRATEGY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "H5AppScoreList"

.field private static instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;


# instance fields
.field private appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

.field private enable:Z

.field private limitRate:J

.field private reqRate:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initSwitchConfig()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enableSendRpc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->invokeCallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->saveResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initAppCreditInfo(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    return-object v0
.end method

.method private enableSendRpc()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    .line 260
    const-string/jumbo v7, "h5_app_score_rpc_time"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getLongData(Ljava/lang/String;)J

    move-result-wide v2

    .line 261
    .local v2, "lastTime":J
    cmp-long v7, v2, v12

    if-lez v7, :cond_1

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    .local v0, "currentTime":J
    const-string/jumbo v7, "H5AppScoreList"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "currentTime : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " lastTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " reqRate : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " limitRate : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->rpcLimit()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-wide v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    .line 266
    .local v4, "rate":J
    :goto_0
    cmp-long v7, v2, v12

    if-lez v7, :cond_2

    sub-long v8, v0, v2

    cmp-long v7, v8, v4

    if-lez v7, :cond_2

    .line 274
    .end local v0    # "currentTime":J
    .end local v4    # "rate":J
    :goto_1
    return v6

    .line 265
    .restart local v0    # "currentTime":J
    :cond_0
    iget-wide v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    goto :goto_0

    .line 271
    .end local v0    # "currentTime":J
    :cond_1
    const-string/jumbo v7, "h5_app_score_rpc_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->saveLongData(Ljava/lang/String;J)V

    goto :goto_1

    .line 274
    .restart local v0    # "currentTime":J
    .restart local v4    # "rate":J
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getCreditStrategy(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)I
    .locals 6
    .param p1, "credit"    # Ljava/lang/String;
    .param p2, "configObj"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "strategyStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, "strategy":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 255
    :goto_1
    const-string/jumbo v3, "H5AppScoreList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " strategy : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5AppScoreList"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .line 56
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized initAppCreditInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 14
    .param p1, "responseObj"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 197
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 198
    :cond_0
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;-><init>()V

    .line 202
    .local v4, "creditInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    const-string/jumbo v11, "data"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 203
    .local v0, "appArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 204
    :cond_2
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "appArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "creditInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 207
    .restart local v0    # "appArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v4    # "creditInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :cond_3
    :try_start_2
    const-string/jumbo v11, "config"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 208
    .local v2, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 209
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    goto :goto_0

    .line 212
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    if-ge v6, v11, :cond_6

    .line 213
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 214
    .local v9, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "credit"

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "credit":Ljava/lang/String;
    const-string/jumbo v11, "appId"

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "appId":Ljava/lang/String;
    invoke-virtual {v4, v3, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addCreditAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    .end local v1    # "appId":Ljava/lang/String;
    .end local v3    # "credit":Ljava/lang/String;
    .end local v9    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v5

    .line 219
    .local v5, "creditMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 220
    :cond_7
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    goto :goto_0

    .line 223
    :cond_8
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 224
    .local v8, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    .restart local v3    # "credit":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 226
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getCreditStrategy(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)I

    move-result v10

    .line 228
    .local v10, "strategy":I
    and-int/lit8 v12, v10, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 229
    const/4 v12, 0x1

    invoke-virtual {v4, v12, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addStrategyInfo(ILjava/util/List;)V

    .line 232
    :cond_a
    and-int/lit8 v12, v10, 0x2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    .line 233
    const/4 v12, 0x2

    invoke-virtual {v4, v12, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addStrategyInfo(ILjava/util/List;)V

    .line 236
    :cond_b
    and-int/lit8 v12, v10, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_9

    .line 237
    const/4 v12, 0x4

    invoke-virtual {v4, v12, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addStrategyInfo(ILjava/util/List;)V

    goto :goto_2

    .line 240
    .end local v3    # "credit":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "strategy":I
    :cond_c
    const-string/jumbo v11, "H5AppScoreList"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "creditInfo : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iput-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v1, "h5_app_score_info"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "creditStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initAppCreditInfo(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private initSwitchConfig()V
    .locals 10

    .prologue
    .line 283
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 284
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    .line 285
    if-nez v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const-string/jumbo v5, "h5_nbcredit"

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 292
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 293
    .local v1, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 294
    const-string/jumbo v5, "YES"

    const-string/jumbo v6, "switch"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    .line 295
    const-string/jumbo v5, "reqrate"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 296
    .local v4, "req":I
    if-lez v4, :cond_3

    .line 297
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    .line 301
    :goto_1
    const-string/jumbo v5, "limitrate"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, "limit":I
    if-lez v2, :cond_4

    .line 303
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    .line 308
    .end local v2    # "limit":I
    .end local v4    # "req":I
    :cond_2
    :goto_2
    const-string/jumbo v5, "H5AppScoreList"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " enable : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " reqRate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " limitRate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    .restart local v4    # "req":I
    :cond_3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    goto :goto_1

    .line 305
    .restart local v2    # "limit":I
    :cond_4
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    goto :goto_2
.end method

.method private invokeCallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V
    .locals 0
    .param p1, "rpcListener"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;
    .param p2, "success"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;->onFinish(Z)V

    .line 186
    :cond_0
    return-void
.end method

.method private rpcLimit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    const-string/jumbo v1, "h5_score_rpc_limit"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "limitStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "h5_score_rpc_limit"

    .line 314
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "h5_app_score_rpc_time"

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "h5_app_score_info"

    .line 316
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AppScoreList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkPreInstallApp()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearAppScoreInfo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 325
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    .line 326
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "h5_score_rpc_limit"

    .line 327
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "h5_app_score_rpc_time"

    .line 328
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "h5_app_score_info"

    .line 329
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 330
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AppScoreList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAppCredit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    .line 84
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    const-string/jumbo v2, "0"

    .line 93
    :goto_0
    return-object v2

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 93
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method public getAppListWithStrategy(I)Ljava/util/List;
    .locals 2
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public isInStrategy(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "strategy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    .line 62
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    .local v0, "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public updateAppScoreInfo(ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V
    .locals 2
    .param p1, "forceRequest"    # Z
    .param p2, "rpcListener"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->invokeCallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V

    .line 141
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string/jumbo v0, "NORMAL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
