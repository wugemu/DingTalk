.class public Lmtopsdk/mtop/global/SwitchConfig;
.super Ljava/lang/Object;
.source "SwitchConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfig"

.field private static apiLockInterval:J

.field private static final config:Lmtopsdk/mtop/global/SwitchConfig;

.field private static gzipThresholdSwitch:I

.field private static individualApiLockIntervalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localConfig:Lmtopsdk/common/util/LocalConfig;

.field private static mtopConfigListener:Lkkh;

.field private static final remoteConfig:Lmtopsdk/common/util/RemoteConfig;

.field private static securityApiSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lmtopsdk/mtop/global/SwitchConfig;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SwitchConfig;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    .line 41
    invoke-static {}, Lmtopsdk/common/util/RemoteConfig;->getInstance()Lmtopsdk/common/util/RemoteConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    .line 43
    invoke-static {}, Lmtopsdk/common/util/LocalConfig;->getInstance()Lmtopsdk/common/util/LocalConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lkkh;

    .line 49
    const v0, 0x19000

    sput v0, Lmtopsdk/mtop/global/SwitchConfig;->gzipThresholdSwitch:I

    .line 54
    const-wide/16 v0, 0xa

    sput-wide v0, Lmtopsdk/mtop/global/SwitchConfig;->apiLockInterval:J

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    .line 69
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.wlp.award.doAwardCustom$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.taobao.aplatform.new.securySet$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.taobao.ferrari.game.solitaire$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.taobao.ferrari.game.chest$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/global/SwitchConfig;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    return-object v0
.end method

.method public static getMtopConfigListener()Lkkh;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lkkh;

    return-object v0
.end method


# virtual methods
.method public getGlobalApiLockInterval()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 144
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-wide v0, v0, Lmtopsdk/common/util/RemoteConfig;->apiLockInterval:J

    .line 145
    sput-wide v0, Lmtopsdk/mtop/global/SwitchConfig;->apiLockInterval:J

    return-wide v0
.end method

.method public getGlobalGzipThresholdSwitch()I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget v0, v0, Lmtopsdk/common/util/RemoteConfig;->gzipThresHold:I

    .line 136
    sput v0, Lmtopsdk/mtop/global/SwitchConfig;->gzipThresholdSwitch:I

    return v0
.end method

.method public getIndividualApiLockInterval(Ljava/lang/String;)J
    .locals 7
    .param p1, "apiKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 244
    const-wide/16 v2, 0x0

    .line 245
    .local v2, "interval":J
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-wide v4

    .line 248
    :cond_1
    sget-object v6, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    .local v1, "intervalStr":Ljava/lang/String;
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 253
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "mtopsdk.SwitchConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[getIndividualApiLockInterval]parse individual apiLock interval error.apiKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getIndividualApiLockIntervalMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurityApiSets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    return-void
.end method

.method public isGlobalCacheSwitchOpen()Z
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableCache:Z

    return v0
.end method

.method public isGlobalSpdySslSwitchOpen()Z
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableSsl:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableSsl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSpdySwitchOpen()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableSpdy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableSpdy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalUnitSwitchOpen()Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableUnit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableUnit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMtopsdkPropertySwitchOpen()Z
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableProperty:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableProperty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoteNetworkServiceOpen()Z
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableRemoteNetworkService:Z

    return v0
.end method

.method public isSecurityAppKeyApi(Ljava/lang/String;)Z
    .locals 5
    .param p1, "apiKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 212
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSecurityAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    .line 215
    .local v1, "env":I
    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 218
    :cond_0
    :try_start_0
    sget-object v2, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const/4 v2, 0x1

    .line 226
    .end local v1    # "env":I
    :goto_0
    return v2

    .line 221
    .restart local v1    # "env":I
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.SwitchConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[isSecurityAppKeyApi] decideSecurityApi error. apiKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "env":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setGlobalSpdySslSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3
    .param p1, "spdySwlSwitchOpen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableSsl:Z

    .line 125
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalSpdySslSwitchOpen]set local spdySslSwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-object p0
.end method

.method public setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3
    .param p1, "spdySwitchOpen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableSpdy:Z

    .line 106
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalSpdySwitchOpen]set local spdySwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-object p0
.end method

.method public setGlobalUnitSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3
    .param p1, "unitSwitchOpen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableUnit:Z

    .line 172
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalUnitSwitchOpen]set local unitSwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-object p0
.end method

.method public setMtopConfigListener(Lkkh;)V
    .locals 0
    .param p1, "mtopConfigListener"    # Lkkh;

    .prologue
    .line 84
    sput-object p1, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lkkh;

    .line 85
    return-void
.end method

.method public setMtopsdkPropertySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3
    .param p1, "mtopsdkPropertySwitchOpen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableProperty:Z

    .line 192
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setMtopsdkPropertySwitchOpen]set local mtopsdkPropertySwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-object p0
.end method

.method public setRemoteNetworkServiceOpen(Z)V
    .locals 1
    .param p1, "bEnable"    # Z

    .prologue
    .line 265
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableRemoteNetworkService:Z

    .line 266
    return-void
.end method
