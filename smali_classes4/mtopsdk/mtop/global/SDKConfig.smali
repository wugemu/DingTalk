.class public Lmtopsdk/mtop/global/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKConfig"

.field private static volatile apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

.field private static appKey:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static authCode:Ljava/lang/String;

.field private static cacheImpl:Lnd;

.field private static final config:Lmtopsdk/mtop/global/SDKConfig;

.field private static context:Landroid/content/Context;

.field private static dailyAppkeyIndex:I

.field private static deviceId:Ljava/lang/String;

.field private static envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private static globalProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onlineAppKeyIndex:I

.field private static processId:I

.field private static saveFileRootDir:Ljava/lang/String;

.field private static securityAppKey:Ljava/lang/String;

.field private static securityBodyDataEx:Lkki;

.field private static sign:Lkkj;

.field private static ttid:Ljava/lang/String;

.field private static utdid:Ljava/lang/String;

.field private static xOrangeQ:Ljava/lang/String;

.field private static xcmdVersion:Ljava/lang/String;


# instance fields
.field private updateUnitInfolock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Lmtopsdk/mtop/global/SDKConfig;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SDKConfig;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->config:Lmtopsdk/mtop/global/SDKConfig;

    .line 42
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 48
    sput v1, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    .line 50
    sput v1, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    .line 83
    const-string/jumbo v0, "apicache"

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->saveFileRootDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    .line 35
    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->config:Lmtopsdk/mtop/global/SDKConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    return-object v0
.end method

.method public getGlobalAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalCacheImpl()Lnd;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->cacheImpl:Lnd;

    return-object v0
.end method

.method public getGlobalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGlobalDailyAppKeyIndex()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    return v0
.end method

.method public getGlobalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object v0
.end method

.method public getGlobalOnlineAppKeyIndex()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    return v0
.end method

.method public getGlobalProcessId()I
    .locals 1

    .prologue
    .line 389
    sget v0, Lmtopsdk/mtop/global/SDKConfig;->processId:I

    return v0
.end method

.method public getGlobalProperties()Ljava/util/Hashtable;
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
    .line 310
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->globalProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 311
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/common/util/GlobalPropertyMgr;->getInstance(Landroid/content/Context;)Lmtopsdk/common/util/GlobalPropertyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/common/util/GlobalPropertyMgr;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->globalProperties:Ljava/util/Hashtable;

    .line 313
    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->globalProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getGlobalSaveFileRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->saveFileRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalSecurityAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->securityAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalSecurityBodyDataEx()Lkki;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->securityBodyDataEx:Lkki;

    return-object v0
.end method

.method public getGlobalSign()Lkkj;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->sign:Lkkj;

    return-object v0
.end method

.method public getGlobalTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalXOrangeQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->xOrangeQ:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalXcmdVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->xcmdVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isGlobalSpdySwitchOpen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySwitchOpen()Z

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public setGlobalApiUnit(Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 4
    .param p1, "apiUnit"    # Lmtopsdk/mtop/unit/ApiUnit;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 370
    if-eqz p1, :cond_1

    .line 372
    iget-object v1, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 374
    :try_start_0
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    .line 375
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const-string/jumbo v1, "mtopsdk.SDKConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setGlobalApiUnit] set apiUnit succeed,apiUnit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmtopsdk/mtop/unit/ApiUnit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    :cond_1
    :goto_0
    return-object p0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "mtopsdk.SDKConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setGlobalApiUnit] set apiUnit error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    iget-object v1, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setGlobalAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 157
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->appKey:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "appKey"

    invoke-static {v0, p1}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-object p0
.end method

.method public setGlobalAppVersion(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3
    .param p1, "appVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 282
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->appVersion:Ljava/lang/String;

    .line 283
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalAppVersion]set appVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    return-object p0
.end method

.method public setGlobalAuthCode(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3
    .param p1, "authCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 240
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->authCode:Ljava/lang/String;

    .line 241
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalAuthCode]set authCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    return-object p0
.end method

.method public setGlobalCacheImpl(Lnd;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0
    .param p1, "cacheImpl"    # Lnd;

    .prologue
    .line 403
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->cacheImpl:Lnd;

    .line 404
    return-object p0
.end method

.method public setGlobalContext(Landroid/content/Context;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    .line 109
    :cond_0
    return-object p0
.end method

.method public setGlobalDailyAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0
    .param p1, "appKeyIndex"    # I

    .prologue
    .line 132
    sput p1, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    .line 133
    return-object p0
.end method

.method public setGlobalDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 192
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->deviceId:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, "deviceId"

    invoke-static {v0, p1}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object p0
.end method

.method public setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0
    .param p1, "envMode"    # Lmtopsdk/mtop/domain/EnvModeEnum;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 273
    :cond_0
    return-object p0
.end method

.method public setGlobalOnlineAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0
    .param p1, "appKeyIndex"    # I

    .prologue
    .line 142
    sput p1, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    .line 143
    return-object p0
.end method

.method public setGlobalProcessId(I)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0
    .param p1, "processId"    # I

    .prologue
    .line 393
    sput p1, Lmtopsdk/mtop/global/SDKConfig;->processId:I

    .line 394
    return-object p0
.end method

.method public setGlobalSaveFileRootDir(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1
    .param p1, "saveFileRootDir"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->saveFileRootDir:Ljava/lang/String;

    .line 301
    :cond_0
    return-object p0
.end method

.method public setGlobalSecurityAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3
    .param p1, "securityAppKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->securityAppKey:Ljava/lang/String;

    .line 175
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalSecurityAppKey] securityAppKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-object p0
.end method

.method public setGlobalSecurityBodyDataEx(Lkki;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3
    .param p1, "securityBodyDataEx"    # Lkki;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 252
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->securityBodyDataEx:Lkki;

    .line 253
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalSecurityBodyDataEx]set ISecurityBodyDataEx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    return-object p0
.end method

.method public setGlobalSign(Lkkj;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0
    .param p1, "sign"    # Lkkj;

    .prologue
    .line 123
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->sign:Lkkj;

    .line 124
    return-object p0
.end method

.method public setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1
    .param p1, "spdySwitchOpen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/global/SwitchConfig;->setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;

    .line 361
    return-object p0
.end method

.method public setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 229
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->ttid:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "ttid"

    invoke-static {v0, p1}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p1}, Lic;->b(Ljava/lang/String;)V

    .line 232
    return-object p0
.end method

.method public setGlobalUtdid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3
    .param p1, "utdid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 209
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->utdid:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "utdid"

    invoke-static {v0, p1}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p1}, Lic;->e(Ljava/lang/String;)V

    .line 212
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalUtdid] utdid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    return-object p0
.end method

.method public setGlobalXOrangeQ(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3
    .param p1, "xOrangeQ"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 336
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->xOrangeQ:Ljava/lang/String;

    .line 337
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalXOrangeQ] xOrangeQ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-object p0
.end method

.method public setGlobalXcmdVersion(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3
    .param p1, "xcmdVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 323
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->xcmdVersion:Ljava/lang/String;

    .line 324
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setXcmdVersion] xcmdVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    return-object p0
.end method
