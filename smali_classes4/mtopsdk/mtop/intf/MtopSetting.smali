.class public final Lmtopsdk/mtop/intf/MtopSetting;
.super Ljava/lang/Object;
.source "MtopSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopSetting"

.field private static sdkConfig:Lmtopsdk/mtop/global/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-object v0
.end method

.method public static setAntiAttackHandler(Lmtopsdk/mtop/antiattack/AntiAttackHandler;)V
    .locals 2
    .param p0, "antiAttackHandler"    # Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    sput-object p0, Lmtopsdk/mtop/MtopProxyBase;->antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    .line 100
    const-string/jumbo v0, "mtopsdk.MtopSetting"

    const-string/jumbo v1, "[setAntiAttackHandler] set antiAttackHandler succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static setAppKeyIndex(II)V
    .locals 1
    .param p0, "onlineIndex"    # I
    .param p1, "dailyIndex"    # I

    .prologue
    .line 39
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalOnlineAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;

    .line 40
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalDailyAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;

    .line 41
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalAppVersion(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 59
    return-void
.end method

.method public static setAuthCode(Ljava/lang/String;)V
    .locals 1
    .param p0, "authCode"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalAuthCode(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 50
    return-void
.end method

.method public static setCacheImpl(Lnd;)V
    .locals 3
    .param p0, "cacheImpl"    # Lnd;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    .line 173
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalCacheImpl(Lnd;)Lmtopsdk/mtop/global/SDKConfig;

    .line 174
    const-string/jumbo v0, "mtopsdk.MtopSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setCacheImpl] set setCacheImpl succeed.cacheImpl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static setISecurityBodyDataEx(Lkki;)V
    .locals 1
    .param p0, "securityBodyDataEx"    # Lkki;

    .prologue
    .line 165
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalSecurityBodyDataEx(Lkki;)Lmtopsdk/mtop/global/SDKConfig;

    .line 166
    return-void
.end method

.method public static setMtopConfigListener(Lkkh;)V
    .locals 3
    .param p0, "mtopConfigListener"    # Lkkh;

    .prologue
    .line 144
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmtopsdk/mtop/global/SwitchConfig;->setMtopConfigListener(Lkkh;)V

    .line 145
    invoke-static {p0}, Lmtopsdk/common/util/SwitchConfigUtil;->setMtopConfigListener(Lkkh;)V

    .line 146
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    const-string/jumbo v2, "[setMtopConfigListener] set setMtopConfigListener succeed."

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lmtopsdk/mtop/intf/MtopSetting$1;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/intf/MtopSetting$1;-><init>(Lkkh;)V

    .line 156
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 157
    return-void
.end method

.method public static setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "onlineDomain"    # Ljava/lang/String;
    .param p1, "preDomain"    # Ljava/lang/String;
    .param p2, "dailyDomain"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    :cond_0
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    :cond_1
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 89
    :cond_2
    return-void
.end method

.method public static setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V
    .locals 0
    .param p0, "feature"    # Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .param p1, "openFlag"    # Z

    .prologue
    .line 112
    invoke-static {p0, p1}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V

    .line 113
    return-void
.end method

.method public static setSecurityAppKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "securityAppKey"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalSecurityAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 69
    return-void
.end method

.method public static setXOrangeQ(Ljava/lang/String;)V
    .locals 1
    .param p0, "xOrangeQ"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalXOrangeQ(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 136
    :cond_0
    return-void
.end method

.method public static setXcmdVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "version"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalXcmdVersion(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 125
    :cond_0
    return-void
.end method
