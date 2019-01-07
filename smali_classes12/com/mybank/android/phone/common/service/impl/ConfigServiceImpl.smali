.class Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;
.super Lcom/mybank/android/phone/common/service/api/ConfigService;
.source "ConfigServiceImpl.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:J

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/ConfigService;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->g:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    iget-object v5, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a:Ljava/lang/Object;

    monitor-enter v5

    .line 345
    :try_start_0
    const-string/jumbo v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    .local v2, "strContent":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 350
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 351
    .local v0, "read":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 352
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "strLine":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 356
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    if-eqz p1, :cond_1

    .line 362
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    .end local v0    # "read":Ljava/io/InputStreamReader;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "strLine":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v2

    .line 360
    :catch_0
    move-exception v4

    if-eqz p1, :cond_1

    .line 362
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 365
    :catch_1
    move-exception v4

    goto :goto_1

    .line 360
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_2

    .line 362
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 365
    :cond_2
    :goto_2
    :try_start_6
    throw v4

    .line 371
    .end local v2    # "strContent":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 365
    .restart local v0    # "read":Ljava/io/InputStreamReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "strContent":Ljava/lang/String;
    .restart local v3    # "strLine":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v0    # "read":Ljava/io/InputStreamReader;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "strLine":Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "fileFlolderPath"    # Ljava/lang/String;
    .param p2, "configPath"    # Ljava/lang/String;
    .param p3, "configName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 297
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    move-object v2, v3

    .line 301
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-direct {p0, v2}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v0

    .line 303
    .local v5, "jsonString":Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 304
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    .line 308
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonString":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 1426
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v7

    .line 1427
    if-eqz v7, :cond_2

    .line 1429
    invoke-virtual {v7}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v7

    .line 1430
    if-eqz v7, :cond_2

    .line 1431
    invoke-interface {v7, v0}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 1434
    goto :goto_0

    .line 308
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 316
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 325
    :cond_0
    return-object v2
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;)V
    .locals 8
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;

    .prologue
    const/4 v2, 0x0

    .line 48
    .line 2135
    const-class v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 2136
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 2137
    const-class v1, Lcom/alipay/bkmobileappcommon/biz/rpc/switches/ClientSwitchConfigService;

    .line 2138
    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/api/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bkmobileappcommon/biz/rpc/switches/ClientSwitchConfigService;

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->d:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2143
    new-instance v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;

    invoke-direct {v3}, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;-><init>()V

    .line 2144
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->g:Landroid/content/Context;

    .line 2145
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2144
    invoke-static {v1}, Lijn;->a(Landroid/content/Context;)Lijn;

    move-result-object v4

    .line 3218
    iget-object v1, v4, Lijn;->b:Ljava/lang/String;

    .line 2146
    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    .line 2147
    :goto_0
    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->clientVersion:Ljava/lang/String;

    .line 4222
    iget-object v1, v4, Lijn;->c:Ljava/lang/String;

    .line 2148
    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->channelId:Ljava/lang/String;

    .line 2149
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->g:Landroid/content/Context;

    .line 2150
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2149
    invoke-static {v1}, Lijo;->a(Landroid/content/Context;)Lijo;

    move-result-object v1

    .line 4683
    iget-object v1, v1, Lijo;->b:Ljava/lang/String;

    .line 2151
    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->imei:Ljava/lang/String;

    .line 2152
    const-string/jumbo v1, "mybank"

    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->clientId:Ljava/lang/String;

    .line 2153
    const-string/jumbo v1, "android"

    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->systemType:Ljava/lang/String;

    .line 2154
    const-string/jumbo v1, "dingtalk"

    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->business:Ljava/lang/String;

    .line 5232
    const-class v1, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 5233
    if-nez v1, :cond_5

    move-object v1, v2

    .line 2156
    :goto_1
    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->userId:Ljava/lang/String;

    .line 2157
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;->utdid:Ljava/lang/String;

    .line 2159
    :try_start_0
    invoke-interface {v0, v3}, Lcom/alipay/bkmobileappcommon/biz/rpc/switches/ClientSwitchConfigService;->getAllSwitches(Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoReq;)Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;

    move-result-object v0

    .line 2160
    iget-boolean v1, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->success:Z

    if-eqz v1, :cond_b

    .line 2163
    iget-object v1, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->responseTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->d:J

    .line 2164
    iget-boolean v1, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->increment:Z

    if-nez v1, :cond_0

    .line 2165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->f:J

    .line 2167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseTime:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->d:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lastFullUpdateTime:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->f:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2170
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "shared_config_name"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2172
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2173
    const-string/jumbo v4, "config_response_time"

    iget-wide v6, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->d:J

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2174
    const-string/jumbo v4, "config_last_full_response_time"

    iget-wide v6, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->f:J

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2175
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2177
    const-string/jumbo v3, "config_response_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 2180
    iget-boolean v1, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->increment:Z

    if-eqz v1, :cond_6

    .line 2182
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 2183
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2186
    :cond_1
    iget-object v1, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 2187
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 2189
    :cond_2
    iget-object v1, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 2190
    iget-object v0, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get config deleteKey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    iget-object v3, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2219
    :goto_3
    const-string/jumbo v0, "hybrid_allow_reportConfigInfo"

    invoke-virtual {p0, v0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2221
    const-string/jumbo v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_3
    return-void

    .line 4218
    :cond_4
    iget-object v1, v4, Lijn;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 5236
    :cond_5
    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getRoleId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2196
    :cond_6
    :try_start_1
    iget-object v1, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 2197
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2201
    :cond_7
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a(Ljava/util/Map;)V

    .line 2203
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 5408
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 5409
    if-eqz v1, :cond_8

    .line 5411
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v1

    .line 5412
    if-eqz v1, :cond_8

    .line 5413
    invoke-interface {v1, v0}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2205
    :cond_8
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2206
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6398
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2205
    const-string/jumbo v1, "mybank"

    const-string/jumbo v3, "Config.json"

    .line 7377
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7379
    :try_start_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7380
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7381
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 7383
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7384
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 7385
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 7387
    :cond_a
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 7388
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 7389
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 7390
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7394
    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7402
    :try_start_4
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 7403
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.mybank.android.phone.common.service.ConfigService.ACTION_CONFIG_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2214
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->c:J
    :try_end_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 7394
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private static a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v3

    goto :goto_0

    .line 340
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic b(Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConfig key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const-string/jumbo v0, ""

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    .end local v0    # "ret":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    move-object v0, p2

    .line 103
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1398
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 256
    const-string/jumbo v3, "mybank"

    const-string/jumbo v4, "Config.json"

    .line 255
    invoke-direct {p0, v2, v3, v4}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 258
    .local v1, "store":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 259
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 260
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a(Ljava/util/Map;)V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "shared_config_name"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 265
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "config_response_time"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->d:J

    .line 266
    const-string/jumbo v2, "config_last_full_response_time"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->f:J

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->updateImmediately()V

    .line 283
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 288
    return-void
.end method

.method public update()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, "nowTime":J
    iget-wide v2, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->c:J

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->updateImmediately()V

    .line 115
    :cond_0
    return-void
.end method

.method public updateImmediately()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateImmediately:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl$1;-><init>(Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
