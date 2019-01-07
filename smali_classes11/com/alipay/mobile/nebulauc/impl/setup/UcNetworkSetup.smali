.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;
.super Ljava/lang/Object;
.source "UcNetworkSetup.java"


# static fields
.field private static final LAST_CLEAR_CACHE_SWITCH_VALUE:Ljava/lang/String; = "lastClearCacheSwitchValue"

.field private static final TAG:Ljava/lang/String; = "H5UcService::UcNetworkSetup"

.field public static sH2AppIdBlackList:Lcom/alibaba/fastjson/JSONArray;

.field private static sInitUcNetworkNewTiming:Ljava/lang/Boolean;

.field public static sMaxRequestPerClient:I

.field public static sMaxRequestPerHost:I

.field public static sUcRequestSettingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sUcRequestSettingEnabled:Z

    .line 28
    const/16 v0, 0xd

    sput v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerClient:I

    .line 29
    const/4 v0, 0x6

    sput v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerHost:I

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sH2AppIdBlackList:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearUcHttpCache()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    .local v0, "currentClearCacheSwitchValue":Ljava/lang/String;
    .local v1, "lastClearCacheSwitchValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 71
    .end local v0    # "currentClearCacheSwitchValue":Ljava/lang/String;
    .end local v1    # "lastClearCacheSwitchValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "lastClearCacheSwitchValue"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1    # "lastClearCacheSwitchValue":Ljava/lang/String;
    const-string/jumbo v2, "h5_clearUcHttpCache"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "currentClearCacheSwitchValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$2;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$2;-><init>()V

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 88
    :cond_1
    const-string/jumbo v2, "lastClearCacheSwitchValue"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initNetworkConfig()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$1;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public static useNewInitTiming()Z
    .locals 4

    .prologue
    .line 39
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sInitUcNetworkNewTiming:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 40
    const-string/jumbo v1, "h5_initUcNetworkNewTiming"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "configValue":Ljava/lang/String;
    const-string/jumbo v1, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sInitUcNetworkNewTiming:Ljava/lang/Boolean;

    .line 43
    :cond_0
    const-string/jumbo v1, "H5UcService::UcNetworkSetup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[UcNetworkSetup] useNewInitTiming: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sInitUcNetworkNewTiming:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sInitUcNetworkNewTiming:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 41
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
