.class public Lmtopsdk/mtop/global/SDKUtils;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKUtils"

.field private static sdkConfig:Lmtopsdk/mtop/global/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCacheBlock(Ljava/lang/String;)Z
    .locals 2
    .param p0, "blockName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    sget-object v1, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalCacheImpl()Lnd;

    move-result-object v0

    .line 234
    .local v0, "cache":Lnd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnd;->e()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCorrectionTime()J
    .locals 6

    .prologue
    .line 32
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getTimeOffset()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCorrectionTimeMillis()J
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMtopSdkProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getMtopSdkProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTimeOffset()J
    .locals 5

    .prologue
    .line 52
    invoke-static {}, Lkkn;->c()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "t_offset":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 54
    .local v2, "time_offset":J
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 63
    :goto_0
    return-wide v2

    .line 58
    :catch_0
    move-exception v1

    const-string/jumbo v1, "mtopsdk.SDKUtils"

    const-string/jumbo v4, "[getTimeOffset]parse t_offset failed"

    invoke-static {v1, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    const-string/jumbo v1, "t_offset"

    const-string/jumbo v4, "0"

    invoke-static {v1, v4}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logOut()V
    .locals 3

    .prologue
    .line 161
    const-string/jumbo v1, "sid"

    invoke-static {v1}, Lkkn;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    const-string/jumbo v1, "userId"

    invoke-static {v1}, Lkkn;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    const-string/jumbo v1, "uid"

    invoke-static {v1}, Lkkn;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    new-instance v0, Lmtopsdk/mtop/global/SDKUtils$2;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SDKUtils$2;-><init>()V

    .line 171
    .local v0, "logOutTask":Ljava/lang/Runnable;
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 172
    const-string/jumbo v1, "mtopsdk.SDKUtils"

    const-string/jumbo v2, "[logOut] remove sessionInfo succeed."

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static registerDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p0, :cond_0

    .line 131
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 133
    :cond_0
    return-void
.end method

.method public static registerLat(Ljava/lang/String;)V
    .locals 1
    .param p0, "latitude"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string/jumbo v0, "lat"

    invoke-static {v0, p0}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static registerLng(Ljava/lang/String;)V
    .locals 1
    .param p0, "longitude"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string/jumbo v0, "lng"

    invoke-static {v0, p0}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static registerMtopSdkProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[registerMtopSdkProperty]register MtopSdk Property succeed,key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public static registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v2, "sid"

    invoke-static {v2, p0}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, "userId"

    invoke-static {v2, p1}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "uid"

    invoke-static {v2, p1}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lmtopsdk/mtop/global/SDKUtils$1;

    invoke-direct {v1, p1}, Lmtopsdk/mtop/global/SDKUtils$1;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "registeSessionTask":Ljava/lang/Runnable;
    invoke-static {v1}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 98
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[registerSessionInfo]register sessionInfo succeed"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, ",sid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v2, ",uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v2, "mtopsdk.SDKUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "ecode"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p2, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-static {p0, p2}, Lmtopsdk/mtop/global/SDKUtils;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static registerTtid(Ljava/lang/String;)V
    .locals 1
    .param p0, "ttid"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 144
    :cond_0
    return-void
.end method

.method public static registerUtdid(Ljava/lang/String;)V
    .locals 1
    .param p0, "utdid"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    .line 153
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalUtdid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 155
    :cond_0
    return-void
.end method

.method public static removeCacheBlock(Ljava/lang/String;)Z
    .locals 2
    .param p0, "blockName"    # Ljava/lang/String;

    .prologue
    .line 220
    sget-object v1, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalCacheImpl()Lnd;

    move-result-object v0

    .line 221
    .local v0, "cache":Lnd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnd;->e()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeCacheItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "blockName"    # Ljava/lang/String;
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const-string/jumbo v2, "mtopsdk.SDKUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[removeCacheItem] remove CacheItem failed,invalid cacheKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    sget-object v2, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalCacheImpl()Lnd;

    move-result-object v0

    .line 264
    .local v0, "cache":Lnd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnd;->c()Z

    move-result v1

    goto :goto_0
.end method

.method public static unintallCacheBlock(Ljava/lang/String;)Z
    .locals 2
    .param p0, "blockName"    # Ljava/lang/String;

    .prologue
    .line 245
    sget-object v1, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalCacheImpl()Lnd;

    move-result-object v0

    .line 246
    .local v0, "cache":Lnd;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnd;->d()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
