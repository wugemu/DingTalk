.class public Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;
    }
.end annotation


# static fields
.field private static final INIT_CONFIG_NOTIFY_CORE_EVENT:Ljava/lang/String; = "notifyCoreEvent"

.field private static final INIT_CONFIG_SET_GLOBAL_BOOL_VALUE:Ljava/lang/String; = "setGlobalBoolValue"

.field private static final INIT_CONFIG_UPDATE_BUSSINESS_INFO:Ljava/lang/String; = "updateBussinessInfo"

.field private static final IS_DIFF_BUNDLE:Z

.field static final KEY_LAST_SUCCESS_ODEX_VERSION:Ljava/lang/String; = "KEY_LAST_SUCCESS_ODEX_VERSION"

.field static final KEY_MAIN_UCODEX_INIT_SUCCESS:Ljava/lang/String; = "KEY_MAIN_UCODEX_INIT_SUCCESS"

.field private static final TAG:Ljava/lang/String; = "H5UcService"

.field private static final UC_CORE_VERSION_FOR_WOODPECKER:Ljava/lang/String; = "ucCoreVersion"

.field private static m7zPath:Ljava/lang/String;

.field static s7zInited:Z

.field private static sInitUcFromSdcardPath:Ljava/lang/String;

.field private static sOldDirCleared:Z

.field private static sOnWebViewPoolChange:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static sOtherInited:Z

.field static sUcInited:Z

.field static sWebViewCreateDelay:I

.field static sWebViewPoolKeep:Z

.field static sWebViewPoolReallyUse:Z

.field static sWebViewPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    sget-boolean v0, Lcom/alipay/mobile/nebulaucsdk/a;->d:Z

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->IS_DIFF_BUNDLE:Z

    .line 75
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 76
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 77
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOldDirCleared:Z

    .line 78
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->m7zPath:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    .line 83
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    .line 85
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    .line 87
    const/16 v0, 0xbb8

    sput v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    .line 89
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOtherInited:Z

    .line 90
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOnWebViewPoolChange:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->configureWebViewPool(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->dumpUCMSDKIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->IS_DIFF_BUNDLE:Z

    return v0
.end method

.method static synthetic access$400(Ljava/io/File;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->delete(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method private static cleanOldFilesIfNeed()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 980
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOldDirCleared:Z

    if-eqz v3, :cond_1

    .line 1021
    .local v0, "configSwitch":Z
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    :goto_0
    return-void

    .line 983
    .end local v0    # "configSwitch":Z
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOldDirCleared:Z

    .line 986
    const/4 v0, 0x1

    .line 987
    .restart local v0    # "configSwitch":Z
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 988
    .restart local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_2

    .line 989
    const-string/jumbo v3, "no"

    const-string/jumbo v4, "h5_clearOldUCCoreFiles"

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    .line 992
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 996
    const-string/jumbo v2, "IO"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$6;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$6;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 989
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static commonSetBeforeInit()V
    .locals 5

    .prologue
    .line 160
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "ucCoreVersion":Ljava/lang/String;
    const-string/jumbo v2, "ucCoreVersion"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "H5UcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setUCCoreVersion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v0

    .line 169
    .local v0, "isForeground":Z
    const-string/jumbo v2, "fgbg_start"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "H5UcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init start in foreground: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private static configureWebViewPool(Ljava/lang/String;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 175
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_0

    .line 201
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string/jumbo v4, "enable"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 180
    .local v1, "enable":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    :cond_1
    const/4 v4, 0x0

    sput v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    goto :goto_0

    .line 183
    :cond_2
    const-string/jumbo v4, "size"

    sget v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, "poolSize":I
    const/4 v4, 0x4

    if-gt v3, v4, :cond_3

    if-gtz v3, :cond_6

    .line 186
    :cond_3
    const/4 v4, 0x2

    sput v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    .line 190
    :goto_1
    const-string/jumbo v4, "delay"

    sget v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "delay":I
    if-lez v0, :cond_4

    .line 192
    sput v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    .line 194
    :cond_4
    const-string/jumbo v4, "use"

    sget-boolean v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    .line 196
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 197
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    .line 199
    :cond_5
    const-string/jumbo v4, "keep"

    sget-boolean v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    goto :goto_0

    .line 188
    .end local v0    # "delay":I
    :cond_6
    sput v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    goto :goto_1
.end method

.method private static delete(Ljava/io/File;Z)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "deleteDirItSelf"    # Z

    .prologue
    .line 1080
    const/4 v0, 0x1

    .line 1081
    .local v0, "bRet":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1082
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1083
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1084
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1085
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 1086
    .local v1, "child":Ljava/io/File;
    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->delete(Ljava/io/File;Z)Z

    move-result v6

    and-int/2addr v0, v6

    .line 1085
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1090
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .local v3, "path":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->checkPathValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1092
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    and-int/2addr v0, v4

    .line 1093
    const-string/jumbo v4, "H5UcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "delete file valid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    return v0

    .line 1095
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "H5UcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "delete file invalid or !deleteDirItSelf "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static dumpUCMSDKIfNeed(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 662
    if-eqz p0, :cond_0

    const-string/jumbo v2, "YES"

    const-string/jumbo v3, "h5_dumpUCMSDK"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 664
    .local v0, "start":J
    const-string/jumbo v2, "H5UcService"

    const-string/jumbo v3, "begin dump app_ucmsdk"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string/jumbo v2, "ucmsdk"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->dumpDir(Ljava/io/File;)V

    .line 666
    const-string/jumbo v2, "H5UcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "end dump app_ucmsdk used time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v0    # "start":J
    :cond_0
    return-void
.end method

.method private static getZipPathFromLibDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1025
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    new-instance v10, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$7;

    invoke-direct {v10}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$7;-><init>()V

    invoke-virtual {v8, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1031
    .local v3, "files":[Ljava/io/File;
    const-string/jumbo v8, "H5UcService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getZipPathFromLibDir recursiveDelete cache/alipay_temp_dec_ files length "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    if-eqz v3, :cond_0

    array-length v8, v3

    if-lez v8, :cond_0

    .line 1034
    array-length v10, v3

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v2, v3, v8

    .line 1035
    .local v2, "fil":Ljava/io/File;
    const/4 v11, 0x0

    invoke-static {v2, v9, v11}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 1034
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1039
    .end local v2    # "fil":Ljava/io/File;
    :cond_0
    const/4 v7, 0x0

    .line 1040
    .local v7, "zipPath":Ljava/lang/String;
    const-class v8, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1042
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v8, Ljava/lang/ClassLoader;

    const-string/jumbo v9, "findLibrary"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1043
    .local v4, "findMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1044
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/alipay/mobile/nebulaucsdk/a;->b:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 1045
    const-string/jumbo v8, "H5UcService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getZipPathFromLibDir from reflect "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v4    # "findMethod":Ljava/lang/reflect/Method;
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1051
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sget-object v9, Lcom/alipay/mobile/nebulaucsdk/a;->c:Ljava/lang/String;

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .local v5, "libFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1053
    const-string/jumbo v8, "H5UcService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getZipPathFromLibDir from android api "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 1057
    .end local v5    # "libFile":Ljava/io/File;
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1058
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "zip path empty."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1046
    :catch_0
    move-exception v6

    .line 1047
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5UcService"

    const-string/jumbo v9, "catch exception"

    invoke-static {v8, v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1060
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    return-object v7
.end method

.method private static getZipSoFromDiffBundle(Landroid/content/Context;)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 803
    const-string/jumbo v6, "plugins_lib"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 804
    .local v2, "ucmParentDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/alipay/mobile/nebulaucsdk/a;->c:Ljava/lang/String;

    invoke-direct {v3, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 806
    .local v3, "ucmTmpFile":Ljava/io/File;
    sget-object v6, Lcom/alipay/mobile/nebulaucsdk/a;->c:Ljava/lang/String;

    const-string/jumbo v7, "7z_uc.so"

    const-string/jumbo v8, "zip_uc.so"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "zipName":Ljava/lang/String;
    const-string/jumbo v6, "H5UcService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ucmTmpFile "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 809
    const-string/jumbo v6, "H5UcService"

    const-string/jumbo v7, "ucmTmpFile.exists()"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 812
    .local v4, "zipFile":Ljava/util/zip/ZipFile;
    const-string/jumbo v6, "H5UcService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ucmTmpFile is a zipfile "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 814
    .local v1, "ucmFinalFile":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 815
    const-string/jumbo v6, "H5UcService"

    const-string/jumbo v7, "ucmTmpFile renameto ucmFinalFile"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v4    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_0
    const-string/jumbo v6, "H5UcService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getZipSoFromDiffBundle "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ucmPath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-object v1

    .line 816
    .end local v1    # "ucmFinalFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5UcService"

    const-string/jumbo v7, "ucmTmpFile not a zipfile "

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    move-object v1, v3

    .line 819
    .restart local v1    # "ucmFinalFile":Ljava/io/File;
    goto :goto_0

    .line 821
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ucmFinalFile":Ljava/io/File;
    :cond_0
    const-string/jumbo v6, "H5UcService"

    const-string/jumbo v7, "!ucmTmpFile.exists()"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "ucmFinalFile":Ljava/io/File;
    goto :goto_0
.end method

.method static declared-synchronized init(Z)Z
    .locals 14
    .param p0, "enableHA"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 103
    const-class v13, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;

    monitor-enter v13

    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;

    .line 104
    .local v8, "h5UcInitProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;
    if-eqz v8, :cond_1

    .line 105
    invoke-interface {v8}, Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;->initUc()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 141
    :try_start_1
    const-string/jumbo v2, "UcServiceSetup"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v8    # "h5UcInitProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;
    :cond_0
    :goto_0
    monitor-exit v13

    return v1

    .line 108
    .restart local v8    # "h5UcInitProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;
    :cond_1
    :try_start_2
    const-string/jumbo v2, "UcServiceSetup"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    const-string/jumbo v2, "H5UcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s7zInited "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sUcInited:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->commonSetBeforeInit()V

    .line 112
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->IS_DIFF_BUNDLE:Z

    if-nez v2, :cond_3

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init7zSo()V

    .line 117
    :goto_1
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCore(Z)V

    .line 118
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->cleanOldFilesIfNeed()V

    .line 121
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v9

    .line 122
    .local v9, "isForeground":Z
    const-string/jumbo v2, "fgbg_end"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v2, "H5UcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init end in foreground: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :try_start_3
    const-string/jumbo v2, "UcServiceSetup"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOtherInited:Z

    if-nez v2, :cond_0

    .line 145
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOtherInited:Z

    .line 147
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 148
    .local v7, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v7, :cond_0

    .line 149
    const-string/jumbo v2, "h5_enableWebViewPool"

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOnWebViewPoolChange:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v7, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v11

    .line 151
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->configureWebViewPool(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v2, "H5UcService"

    const-string/jumbo v3, "h5ConfigProvider == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 103
    .end local v7    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v8    # "h5UcInitProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;
    .end local v9    # "isForeground":Z
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    .line 115
    .restart local v8    # "h5UcInitProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;
    :cond_3
    :try_start_4
    const-string/jumbo v2, "H5UcService"

    const-string/jumbo v3, "[bundle diff] unzip 7z so by uc core"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 124
    .end local v8    # "h5UcInitProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;
    :catch_0
    move-exception v10

    .line 125
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "init exception "

    invoke-static {v1, v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 127
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_4

    .line 128
    const-string/jumbo v1, "H5_UC_INIT_FAILED"

    sget-object v2, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    const-string/jumbo v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isTinyApp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^ucVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v10}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 128
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    const/16 v1, 0x7533

    invoke-static {v10, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->logUcInitException(Ljava/lang/Throwable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    :try_start_6
    const-string/jumbo v1, "UcServiceSetup"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move v1, v12

    .line 139
    goto/16 :goto_0

    .line 141
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    const-string/jumbo v2, "UcServiceSetup"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private static init7zSo()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 836
    sget-boolean v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    if-eqz v23, :cond_0

    .line 971
    .local v4, "context":Landroid/content/Context;
    .local v5, "coreDexFile":Ljava/io/File;
    .local v6, "delta":J
    .local v9, "h5Container":Ljava/io/File;
    .local v11, "mainSoFile":Ljava/io/File;
    .local v12, "mainSoParentDir":Ljava/io/File;
    .local v15, "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    .local v18, "time":J
    .local v21, "unzipTargetDir":Ljava/io/File;
    .local v22, "unzipTargetParentDir":Ljava/io/File;
    :goto_0
    return-void

    .line 839
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "coreDexFile":Ljava/io/File;
    .end local v6    # "delta":J
    .end local v9    # "h5Container":Ljava/io/File;
    .end local v11    # "mainSoFile":Ljava/io/File;
    .end local v12    # "mainSoParentDir":Ljava/io/File;
    .end local v15    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    .end local v18    # "time":J
    .end local v21    # "unzipTargetDir":Ljava/io/File;
    .end local v22    # "unzipTargetParentDir":Ljava/io/File;
    :cond_0
    const-string/jumbo v23, "init7zSo"

    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 840
    const/16 v23, 0x1

    sput-boolean v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 841
    const-string/jumbo v23, "init7zSo"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 842
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "init7zSo"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v15, Lcom/alipay/mobile/nebulauc/util/ProcessLock;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v24

    .line 844
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/.init7zSo.lock"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 846
    .restart local v15    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    :try_start_0
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lock()V

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 848
    .restart local v18    # "time":J
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 864
    .restart local v4    # "context":Landroid/content/Context;
    const-string/jumbo v23, "h5container"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 865
    .restart local v9    # "h5Container":Ljava/io/File;
    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "uc"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 866
    .restart local v22    # "unzipTargetParentDir":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/so"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 867
    .restart local v21    # "unzipTargetDir":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    const-string/jumbo v23, "/lib"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 868
    .restart local v12    # "mainSoParentDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string/jumbo v23, "libwebviewuc.so"

    move-object/from16 v0, v23

    invoke-direct {v11, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 869
    .restart local v11    # "mainSoFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v23, "core.jar"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 870
    .restart local v5    # "coreDexFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 871
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc()Z

    move-result v23

    if-nez v23, :cond_1

    sget-object v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 873
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 874
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "init on main process, mark uc not init!"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string/jumbo v23, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 878
    :cond_2
    sget v23, Lior;->c:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    sget v23, Lior;->c:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    :cond_3
    sget-wide v24, Lior;->b:J

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_4

    .line 881
    sget-wide v24, Lior;->b:J

    const/16 v23, 0x0

    move-wide/from16 v0, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lior;->a(JI)V

    .line 885
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isUCM57()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 886
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "isUCM57, try copy libv8uc.so"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    new-instance v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;

    invoke-direct/range {v23 .. v23}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;-><init>()V

    invoke-virtual/range {v22 .. v23}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v14

    .line 893
    .local v14, "oldVersions":[Ljava/io/File;
    if-eqz v14, :cond_7

    .line 894
    const/4 v10, 0x0

    .line 895
    .local v10, "libv8ucso":Ljava/io/File;
    array-length v0, v14

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    aget-object v13, v14, v23

    .line 897
    .local v13, "oldVersion":Ljava/io/File;
    const-string/jumbo v25, "H5UcService"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "check "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isM40(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 899
    new-instance v10, Ljava/io/File;

    .end local v10    # "libv8ucso":Ljava/io/File;
    const-string/jumbo v25, "so/lib/libv8uc.so"

    move-object/from16 v0, v25

    invoke-direct {v10, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 900
    .restart local v10    # "libv8ucso":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_6

    .line 895
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 905
    .end local v13    # "oldVersion":Ljava/io/File;
    :cond_6
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 906
    new-instance v17, Ljava/io/File;

    const-string/jumbo v23, "libv8uc.so"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 907
    .local v17, "tmpSave":Ljava/io/File;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 908
    const-string/jumbo v23, "H5UcService"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "got libv8uc.so: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", move it to : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    .end local v10    # "libv8ucso":Ljava/io/File;
    .end local v14    # "oldVersions":[Ljava/io/File;
    .end local v17    # "tmpSave":Ljava/io/File;
    :cond_7
    :goto_2
    const/16 v23, 0x1

    :try_start_1
    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->delete(Ljava/io/File;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    :goto_3
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 921
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 922
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "init 7z so from local update path"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const/16 v23, 0x0

    sput-object v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->m7zPath:Ljava/lang/String;

    .line 935
    :cond_8
    :goto_4
    new-instance v20, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "alipay_temp_dec_"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 937
    .local v20, "tmpUCSoDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_8

    .line 938
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 950
    const-string/jumbo v23, "has_extract_7zso"

    const-string/jumbo v24, "true"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    sget-object v24, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->m7zPath:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    sget-object v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    .line 952
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_e

    const/16 v23, 0x1

    .line 951
    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2}, Lcom/uc/webview/export/extension/UCCore;->extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 954
    invoke-virtual/range {v20 .. v21}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 957
    .end local v20    # "tmpUCSoDir":Ljava/io/File;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v6, v24, v18

    .line 958
    .restart local v6    # "delta":J
    const-string/jumbo v23, "H5UcService"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "init7zSo elapse "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 960
    const-string/jumbo v23, "ucInit|init7zSo"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    :cond_a
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 969
    const-string/jumbo v23, "init7zSo"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 970
    const-string/jumbo v23, "init7zSo"

    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 910
    .end local v6    # "delta":J
    .restart local v10    # "libv8ucso":Ljava/io/File;
    .restart local v14    # "oldVersions":[Ljava/io/File;
    :cond_b
    :try_start_3
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "cannot find libv8uc.so"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 963
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "coreDexFile":Ljava/io/File;
    .end local v9    # "h5Container":Ljava/io/File;
    .end local v10    # "libv8ucso":Ljava/io/File;
    .end local v11    # "mainSoFile":Ljava/io/File;
    .end local v12    # "mainSoParentDir":Ljava/io/File;
    .end local v14    # "oldVersions":[Ljava/io/File;
    .end local v18    # "time":J
    .end local v21    # "unzipTargetDir":Ljava/io/File;
    .end local v22    # "unzipTargetParentDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 964
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "catch exception "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 965
    const/16 v23, 0x0

    sput-boolean v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 966
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 968
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 969
    const-string/jumbo v24, "init7zSo"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 970
    const-string/jumbo v24, "init7zSo"

    invoke-static/range {v24 .. v24}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    throw v23

    .line 917
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "coreDexFile":Ljava/io/File;
    .restart local v9    # "h5Container":Ljava/io/File;
    .restart local v11    # "mainSoFile":Ljava/io/File;
    .restart local v12    # "mainSoParentDir":Ljava/io/File;
    .restart local v18    # "time":J
    .restart local v21    # "unzipTargetDir":Ljava/io/File;
    .restart local v22    # "unzipTargetParentDir":Ljava/io/File;
    :catch_1
    move-exception v16

    .line 918
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "delete unzipTargetParentDir error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 924
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_c
    sget-object v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 925
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "init 7z so from sdcard"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    sget-object v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    sput-object v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->m7zPath:Ljava/lang/String;

    goto/16 :goto_4

    .line 928
    :cond_d
    const-string/jumbo v23, "H5UcService"

    const-string/jumbo v24, "init 7z so by default"

    invoke-static/range {v23 .. v24}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getZipPathFromLibDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->m7zPath:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 952
    .restart local v20    # "tmpUCSoDir":Ljava/io/File;
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_5
.end method

.method static initCommonConfig(Ljava/lang/String;)V
    .locals 6
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 672
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 673
    .local v1, "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "commonConfig_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 678
    .local v3, "key":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 679
    .local v0, "arr":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 682
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 683
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->setEachCommonConfigByKey(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 686
    .end local v0    # "arr":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "commonConfig_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initCore(Z)V
    .locals 49
    .param p0, "enableHA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    sget-boolean v42, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    if-eqz v42, :cond_0

    .line 523
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v42, "initCore"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v42, "initCore2success"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v42, "initCore"

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v42 .. v44}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "initCore "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v44, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, ", enableHA "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 v42, 0x1

    sput-boolean v42, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 215
    .local v18, "initCoreTime":J
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 217
    .local v8, "context":Landroid/content/Context;
    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->dumpUCMSDKIfNeed(Landroid/content/Context;)V

    .line 221
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    sget-object v42, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 222
    const/4 v5, 0x0

    .line 223
    .local v5, "VERIFY_POLICY":I
    const/4 v4, 0x0

    .line 230
    .local v4, "DELETE_CORE_POLICY":I
    :goto_1
    const/16 v26, 0x0

    .line 231
    .local v26, "pid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v15

    .line 232
    .local v15, "isInTinyProcess":Z
    if-eqz v15, :cond_2

    .line 233
    const-string/jumbo v42, "YES"

    const-string/jumbo v43, "h5_tinyUseVerifyPolicyNone"

    invoke-static/range {v43 .. v43}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 234
    const/4 v5, 0x0

    .line 235
    const-string/jumbo v42, "H5UcService"

    const-string/jumbo v43, "in tiny use VERIFY_POLICY_NONE"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    const-class v42, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 239
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v42

    .line 238
    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 240
    .local v13, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v13, :cond_8

    .line 241
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getLitePid()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 247
    .end local v13    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    :goto_2
    const-string/jumbo v42, "initCore_setupTask"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 251
    sget-boolean v42, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->IS_DIFF_BUNDLE:Z

    if-eqz v42, :cond_9

    .line 252
    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getZipSoFromDiffBundle(Landroid/content/Context;)Ljava/io/File;

    move-result-object v41

    .line 253
    .local v41, "zipFile":Ljava/io/File;
    const-string/jumbo v33, "ucmZipFile"

    .line 254
    .local v33, "soPathKey":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v34

    .line 255
    .local v34, "soPathValue":Ljava/lang/String;
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "[bundle diff] got zip file: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, " exists: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v41    # "zipFile":Ljava/io/File;
    :goto_3
    const-string/jumbo v42, "soPath"

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "pid "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, ", subprocess "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v42, "CONTEXT"

    move-object/from16 v0, v42

    invoke-static {v0, v8}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v42

    const-string/jumbo v43, "MULTI_CORE_TYPE"

    const/16 v44, 0x1

    .line 273
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "SYSTEM_WEBVIEW"

    const-string/jumbo v44, "false"

    .line 274
    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "loadPolicy"

    const-string/jumbo v44, "SPECIFIED_ONLY"

    .line 275
    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    .line 276
    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v44, "AC"

    if-eqz p0, :cond_a

    const-string/jumbo v43, "true"

    .line 277
    :goto_4
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "VERIFY_POLICY"

    .line 278
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "delete_core"

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "init_setup_thread"

    const/16 v44, 0x1

    .line 280
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "provided_keys"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "FTIImAI0azppgolh0vQiWGPGn+4qXt5pgwtEmBQXvdOH/QWN9OERv4BWzlToKSdXxVNeMq2ikS6vsJduHg+FjQ=="

    aput-object v46, v44, v45

    .line 281
    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "exception"

    new-instance v44, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;

    invoke-direct/range {v44 .. v44}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;-><init>()V

    .line 284
    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v42

    check-cast v42, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v43, "success"

    new-instance v44, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;

    move-object/from16 v0, v44

    invoke-direct {v0, v8}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual/range {v42 .. v44}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v29

    check-cast v29, Lcom/uc/webview/export/utility/SetupTask;

    .line 360
    .local v29, "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    const-string/jumbo v42, "h5_ucShareCoreConfig"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v21

    .line 361
    .local v21, "jsonObjShareCore":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v42, "yes"

    const-string/jumbo v43, "enable"

    const-string/jumbo v44, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    .line 362
    .local v39, "useShareCore":Z
    if-eqz v39, :cond_1d

    .line 363
    new-instance v28, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;

    const/16 v42, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;-><init>(B)V

    .line 364
    .local v28, "scParam":Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;
    const-string/jumbo v42, "/alipay/com.eg.android.AlipayGphone/"

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->a:Ljava/lang/String;

    .line 365
    const-string/jumbo v42, "enableCopyToSDCard"

    const-string/jumbo v43, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->b:Ljava/lang/String;

    .line 366
    const-string/jumbo v42, "hostUcmVersion"

    const-string/jumbo v43, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->d:Ljava/lang/String;

    .line 367
    sget-boolean v42, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->IS_DIFF_BUNDLE:Z

    if-eqz v42, :cond_b

    .line 368
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->c:Ljava/lang/String;

    .line 369
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->f:Ljava/lang/String;

    .line 374
    :goto_5
    const-string/jumbo v42, "loadPolicy"

    const-string/jumbo v43, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->g:Ljava/lang/String;

    .line 375
    const-string/jumbo v42, "thirtyUcmVersion"

    const-string/jumbo v43, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->h:Ljava/lang/String;

    .line 376
    const-string/jumbo v42, "pkgNames"

    const-string/jumbo v43, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->i:Ljava/lang/String;

    .line 379
    const-string/jumbo v42, "false"

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->j:Ljava/lang/String;

    .line 380
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "ShareCore Infomation: CopySubDirCd="

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->a:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^EnableCopyToSdcardCd="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->b:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^HostUcmVersionsCd="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->d:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^isDiffBundle="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->IS_DIFF_BUNDLE:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^ZipFileCd="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->c:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^Bak7zDirPathCd="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->e:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^BakZipFilePathCd="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->f:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^LoadPolicyCd="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->g:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^ThirtyUcmVersionsCd="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->h:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^PkgNames="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->i:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "^M57Version ="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->j:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "setParam ("

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, ", "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, ",)"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const/16 v43, 0x0

    .line 1591
    :try_start_0
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->j:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_d

    .line 1592
    const-string/jumbo v42, "H5UcService"

    const-string/jumbo v44, "setParam mM57Version is empty"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "needSetPreVersionOption : "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 397
    .end local v28    # "scParam":Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;
    :cond_3
    :goto_6
    const-string/jumbo v42, "h5_ucApolloConfig"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v20

    .line 398
    .local v20, "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    const/16 v38, 0x0

    .line 399
    .local v38, "useApollo":Z
    const/4 v10, 0x1

    .line 400
    .local v10, "downloadApolloIn4G":Z
    const/4 v11, 0x0

    .line 401
    .local v11, "downloadApolloInLiteProcess":Z
    if-eqz v20, :cond_4

    .line 402
    const-string/jumbo v42, "YES"

    const-string/jumbo v43, "useApollo"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 403
    const-string/jumbo v42, "YES"

    const-string/jumbo v43, "downloadApolloIn4G"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 404
    const-string/jumbo v42, "YES"

    const-string/jumbo v43, "downloadApolloInLiteProcess"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 406
    :cond_4
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "useApollo "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-nez v38, :cond_5

    .line 408
    const-string/jumbo v42, "ucPlayer"

    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 412
    :cond_5
    const-string/jumbo v42, "log_conf"

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initLogConfig()[Ljava/lang/Object;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 414
    const-class v42, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 415
    .local v12, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v12, :cond_6

    .line 416
    const-string/jumbo v42, "h5_disable_multi_unknown_crash"

    move-object/from16 v0, v42

    invoke-interface {v12, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 417
    .local v40, "value":Ljava/lang/String;
    const-string/jumbo v42, "no"

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_6

    .line 418
    const-string/jumbo v42, "disable_multi_unknown_crash"

    const/16 v43, 0x1

    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 424
    .end local v40    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v42, "h5_ucCommonSetupConfig"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "commonSetupConfigStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 426
    .local v6, "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_1e

    .line 427
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_7
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_1e

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 428
    .local v22, "key":Ljava/lang/String;
    sget-object v42, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    goto :goto_7

    .line 225
    .end local v4    # "DELETE_CORE_POLICY":I
    .end local v5    # "VERIFY_POLICY":I
    .end local v6    # "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "commonSetupConfigStr":Ljava/lang/String;
    .end local v10    # "downloadApolloIn4G":Z
    .end local v11    # "downloadApolloInLiteProcess":Z
    .end local v12    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v15    # "isInTinyProcess":Z
    .end local v20    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "jsonObjShareCore":Lcom/alibaba/fastjson/JSONObject;
    .end local v22    # "key":Ljava/lang/String;
    .end local v26    # "pid":Ljava/lang/String;
    .end local v29    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    .end local v33    # "soPathKey":Ljava/lang/String;
    .end local v34    # "soPathValue":Ljava/lang/String;
    .end local v38    # "useApollo":Z
    .end local v39    # "useShareCore":Z
    :cond_7
    const/16 v5, 0x1f

    .line 227
    .restart local v5    # "VERIFY_POLICY":I
    const/16 v4, 0x3f

    .restart local v4    # "DELETE_CORE_POLICY":I
    goto/16 :goto_1

    .line 243
    .restart local v13    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .restart local v15    # "isInTinyProcess":Z
    .restart local v26    # "pid":Ljava/lang/String;
    :cond_8
    const-string/jumbo v42, "H5UcService"

    const-string/jumbo v43, "h5EventHandlerService == null"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 257
    .end local v13    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_9
    const-string/jumbo v42, "h5container"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v27

    .line 258
    .local v27, "rootDir":Ljava/io/File;
    new-instance v32, Ljava/io/File;

    new-instance v42, Ljava/lang/StringBuilder;

    const-string/jumbo v43, "uc/"

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v43, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "/so"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    .local v32, "soDir":Ljava/io/File;
    const-string/jumbo v33, "dexFilePath"

    .line 260
    .restart local v33    # "soPathKey":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v34

    .line 261
    .restart local v34    # "soPathValue":Ljava/lang/String;
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "got so unzip dir: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, " exists: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "rootDir canonicalPath: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "rootDir absolutePath: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "OPTION_DEX_FILE_PATH soPath: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 276
    .end local v27    # "rootDir":Ljava/io/File;
    .end local v32    # "soDir":Ljava/io/File;
    :cond_a
    const-string/jumbo v43, "false"

    goto/16 :goto_4

    .line 371
    .restart local v21    # "jsonObjShareCore":Lcom/alibaba/fastjson/JSONObject;
    .restart local v28    # "scParam":Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;
    .restart local v29    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    .restart local v39    # "useShareCore":Z
    :cond_b
    sget-object v42, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->m7zPath:Ljava/lang/String;

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_c

    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getZipPathFromLibDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v42

    :goto_8
    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->c:Ljava/lang/String;

    .line 372
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->e:Ljava/lang/String;

    goto/16 :goto_5

    .line 371
    :cond_c
    sget-object v42, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->m7zPath:Ljava/lang/String;

    goto :goto_8

    .line 2554
    :cond_d
    :try_start_1
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->k:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_e

    .line 2555
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    .line 2556
    new-instance v45, Ljava/io/File;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->a:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 2557
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_16

    const-string/jumbo v42, "/alipay/com.eg.android.AlipayGphone/"

    :goto_9
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->k:Ljava/lang/String;

    .line 2562
    :cond_e
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->b:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_f

    .line 2563
    const-string/jumbo v42, "true"

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->b:Ljava/lang/String;

    .line 2566
    :cond_f
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->d:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_10

    .line 2567
    const-string/jumbo v42, "2.13.1.*"

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->d:Ljava/lang/String;

    .line 2572
    :cond_10
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->i:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_11

    .line 2573
    const-string/jumbo v42, "com.taobao.taobao"

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->i:Ljava/lang/String;

    .line 2576
    :cond_11
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->g:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_12

    .line 2577
    const-string/jumbo v42, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->g:Ljava/lang/String;

    .line 1599
    :cond_12
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->k:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_17

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->d:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1600
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_17

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->c:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1601
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_17

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->b:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1602
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_17

    const/16 v42, 0x1

    move/from16 v44, v42

    .line 1604
    :goto_a
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->g:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_18

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->k:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1605
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_18

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->h:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1606
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_18

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->e:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1607
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_13

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->f:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_18

    :cond_13
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->i:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1608
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_18

    const/16 v42, 0x1

    .line 1610
    :goto_b
    const-string/jumbo v45, "H5UcService"

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "validCopyToSdcardUCParam: "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v46

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " validInitFromSdcardUCParam: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " isM57Version: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->j:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    new-instance v45, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v45 .. v45}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1615
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->j:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    if-eqz v46, :cond_14

    if-eqz v44, :cond_14

    .line 1616
    const-string/jumbo v44, "sc_cpy"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->b:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const-string/jumbo v44, "sc_ta_fp"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->k:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    const-string/jumbo v44, "sc_hucmv"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->d:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-string/jumbo v44, "sc_cd_fp"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->c:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    :cond_14
    const-string/jumbo v44, "H5UcService"

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "validCopyToSdcardUCParam: "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->j:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-nez v44, :cond_1a

    if-eqz v42, :cond_1a

    .line 1624
    const-string/jumbo v42, "sc_ta_fp"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->k:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    const-string/jumbo v42, "sc_ldpl"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->g:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    const-string/jumbo v42, "sc_taucmv"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->h:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-string/jumbo v42, "sc_pkgl"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->i:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->e:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_19

    .line 1630
    const-string/jumbo v42, "sc_bakkrldir"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->e:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    :cond_15
    :goto_c
    const-string/jumbo v42, "H5UcService"

    new-instance v44, Ljava/lang/StringBuilder;

    const-string/jumbo v46, "validInitFromSdcardUCParam: "

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v42, v43

    .line 1640
    :goto_d
    :try_start_2
    invoke-virtual/range {v45 .. v45}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v43

    if-lez v43, :cond_1b

    .line 1641
    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "JSON_CMD"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 1642
    invoke-static/range {v43 .. v43}, Lcom/uc/webview/export/extension/UCCore;->setParam(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1650
    :goto_e
    const-string/jumbo v43, "H5UcService"

    new-instance v44, Ljava/lang/StringBuilder;

    const-string/jumbo v45, "needSetPreVersionOption : "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    if-eqz v42, :cond_3

    .line 1652
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    goto/16 :goto_6

    .line 2557
    :cond_16
    :try_start_3
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->a:Ljava/lang/String;

    move-object/from16 v42, v0

    goto/16 :goto_9

    .line 1602
    :cond_17
    const/16 v42, 0x0

    move/from16 v44, v42

    goto/16 :goto_a

    .line 1608
    :cond_18
    const/16 v42, 0x0

    goto/16 :goto_b

    .line 1631
    :cond_19
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->f:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_15

    .line 1632
    const-string/jumbo v42, "sc_bakzipfp"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;->f:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_c

    .line 1646
    :catch_0
    move-exception v42

    .line 1647
    :goto_f
    :try_start_4
    const-string/jumbo v44, "H5UcService"

    new-instance v45, Ljava/lang/StringBuilder;

    const-string/jumbo v46, "failed to setup uc param"

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1650
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "needSetPreVersionOption : "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    goto/16 :goto_6

    .line 1636
    :cond_1a
    :try_start_5
    const-string/jumbo v42, "H5UcService"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v46, ": "

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1637
    const/16 v42, 0x1

    goto/16 :goto_d

    .line 1644
    :cond_1b
    const/16 v42, 0x1

    goto/16 :goto_e

    .line 1650
    :catchall_0
    move-exception v42

    :goto_10
    const-string/jumbo v44, "H5UcService"

    new-instance v45, Ljava/lang/StringBuilder;

    const-string/jumbo v46, "needSetPreVersionOption : "

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    if-eqz v43, :cond_1c

    .line 1652
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    :cond_1c
    throw v42

    .line 393
    .end local v28    # "scParam":Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;
    :cond_1d
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    goto/16 :goto_6

    .line 431
    .restart local v6    # "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "commonSetupConfigStr":Ljava/lang/String;
    .restart local v10    # "downloadApolloIn4G":Z
    .restart local v11    # "downloadApolloInLiteProcess":Z
    .restart local v12    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v20    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v38    # "useApollo":Z
    :cond_1e
    invoke-virtual/range {v29 .. v29}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 432
    const-string/jumbo v42, "initCore_setupTask"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    sub-long v30, v42, v18

    .line 435
    .local v30, "setUpTaskTime":J
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "setUpTask cost:"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v42

    if-nez v42, :cond_1f

    .line 439
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x80

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v24

    .line 440
    .local v24, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v42, v0

    const-string/jumbo v43, "perf_test"

    invoke-virtual/range {v42 .. v43}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1f

    .line 441
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->init()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 448
    .end local v24    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1f
    :goto_11
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->useNewInitTiming()Z

    move-result v42

    if-nez v42, :cond_21

    .line 450
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->disableAR()Z

    move-result v42

    if-nez v42, :cond_20

    .line 451
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->init()J

    .line 454
    :cond_20
    if-nez v20, :cond_27

    const/16 v42, 0x0

    :goto_12
    move/from16 v0, v38

    move-object/from16 v1, v42

    invoke-static {v8, v0, v1, v10, v11}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->initVideoControl(Landroid/content/Context;ZLjava/lang/String;ZZ)J

    .line 459
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->init()V

    .line 462
    :cond_21
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setEnableCustomErrorPage(Z)V

    .line 463
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setEnableAllResourceCallBack(Z)V

    .line 464
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setEnableAdblock(Z)V

    .line 465
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalEnableUCProxy(Z)V

    .line 466
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setEnableDispatcher(Z)V

    .line 467
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setEnableMultiThreadParser(Z)V

    .line 468
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setEnableMediaCache(Z)V

    .line 471
    const-string/jumbo v42, "YES"

    const-string/jumbo v43, "h5_openUCCacheLog"

    invoke-static/range {v43 .. v43}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    .line 472
    .local v23, "openCacheLog":Z
    if-eqz v23, :cond_22

    .line 473
    const-string/jumbo v42, "OPEN_CACHE_LOG"

    const/16 v43, 0x1

    invoke-static/range {v42 .. v43}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 475
    :cond_22
    const-string/jumbo v42, "DISABLE_PREFER_CACHE"

    const/16 v43, 0x1

    invoke-static/range {v42 .. v43}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 484
    const/16 v42, 0x2

    invoke-static/range {v42 .. v42}, Lcom/uc/webview/export/extension/UCSettings;->setForceUserScalable(I)V

    .line 487
    const-string/jumbo v42, "h5_ucDisableACCanvas"

    .line 488
    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 489
    .local v9, "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v9, :cond_23

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_23

    .line 490
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v43, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "#"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "#"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget v43, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 492
    .local v25, "phoneInfo":Ljava/lang/String;
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "phoneInfo "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_13
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v14, v0, :cond_23

    .line 494
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_28

    .line 495
    const-string/jumbo v42, "H5UcService"

    const-string/jumbo v43, "DisableACCanvas"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo v42, "DisableAccelerateCanvas"

    const/16 v43, 0x1

    invoke-static/range {v42 .. v43}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 501
    .end local v14    # "i":I
    .end local v25    # "phoneInfo":Ljava/lang/String;
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    sub-long v16, v42, v18

    .line 502
    .local v16, "initCoreAllTime":J
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "initCore elapse "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_24

    .line 504
    const-string/jumbo v42, "ucInit|initCore"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    const-string/jumbo v42, "ucInit|coreVersion"

    sget-object v43, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    :cond_24
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v42

    if-eqz v42, :cond_26

    .line 510
    const-string/jumbo v42, "no"

    const-string/jumbo v43, "H5_clean_sw_cache"

    invoke-static/range {v43 .. v43}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_25

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 513
    .local v36, "time":J
    new-instance v35, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    invoke-direct/range {v35 .. v35}, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;-><init>()V

    .line 514
    .local v35, "ucServiceWorkerProvider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    const-string/jumbo v42, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->clearServiceWorker(Ljava/lang/String;)V

    .line 515
    const-string/jumbo v42, "H5UcService"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "clearServiceWorker cache cost "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v36

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .end local v35    # "ucServiceWorkerProvider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    .end local v36    # "time":J
    :cond_25
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->preInitTinyNet()V

    .line 520
    :cond_26
    const-string/jumbo v42, "h5_ucCommonConfigBeforeCreateWebView"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCommonConfig(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v42, "initCore"

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v42 .. v44}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 522
    const-string/jumbo v42, "initCore"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .end local v9    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "initCoreAllTime":J
    .end local v23    # "openCacheLog":Z
    :cond_27
    const-string/jumbo v42, "downloadUrl"

    .line 456
    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_12

    .line 493
    .restart local v9    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v14    # "i":I
    .restart local v23    # "openCacheLog":Z
    .restart local v25    # "phoneInfo":Ljava/lang/String;
    :cond_28
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .end local v9    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v14    # "i":I
    .end local v23    # "openCacheLog":Z
    .end local v25    # "phoneInfo":Ljava/lang/String;
    :catch_1
    move-exception v42

    goto/16 :goto_11

    .line 1650
    .end local v6    # "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "commonSetupConfigStr":Ljava/lang/String;
    .end local v10    # "downloadApolloIn4G":Z
    .end local v11    # "downloadApolloInLiteProcess":Z
    .end local v12    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v20    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .end local v30    # "setUpTaskTime":J
    .end local v38    # "useApollo":Z
    .restart local v28    # "scParam":Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$a;
    :catchall_1
    move-exception v43

    move-object/from16 v48, v43

    move/from16 v43, v42

    move-object/from16 v42, v48

    goto/16 :goto_10

    .line 1646
    :catch_2
    move-exception v43

    move-object/from16 v48, v43

    move/from16 v43, v42

    move-object/from16 v42, v48

    goto/16 :goto_f
.end method

.method private static initLogConfig()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 739
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    .line 740
    .local v0, "logConfig":[Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    .line 741
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    .line 742
    const/4 v1, 0x2

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$4;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$4;-><init>()V

    aput-object v2, v0, v1

    .line 791
    const/4 v1, 0x3

    const-string/jumbo v2, "[all]"

    aput-object v2, v0, v1

    .line 792
    const/4 v1, 0x4

    const-string/jumbo v2, "[all]"

    aput-object v2, v0, v1

    .line 793
    return-object v0
.end method

.method private static preInitTinyNet()V
    .locals 2

    .prologue
    .line 829
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 830
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->preLoadInTinyProcess()V

    .line 833
    :cond_0
    return-void
.end method

.method private static setEachCommonConfigByKey(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "obj"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 690
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const-string/jumbo v6, "onlyMain"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 694
    .local v1, "onlyMain":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 698
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 701
    :cond_2
    const-string/jumbo v6, "updateBussinessInfo"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 702
    const-string/jumbo v6, "var0"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 703
    .local v2, "var0":Ljava/lang/Integer;
    const-string/jumbo v6, "var1"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 704
    .local v3, "var1":Ljava/lang/Integer;
    const-string/jumbo v6, "var2"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, "var2":Ljava/lang/String;
    const-string/jumbo v6, "var3"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 706
    .local v5, "var3":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    .line 707
    const-string/jumbo v6, "H5UcService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "common config updateBussinessInfo: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7, v4, v5}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 712
    .end local v2    # "var0":Ljava/lang/Integer;
    .end local v3    # "var1":Ljava/lang/Integer;
    .end local v4    # "var2":Ljava/lang/String;
    .end local v5    # "var3":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v6, "notifyCoreEvent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 713
    const-string/jumbo v6, "var0"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 714
    .restart local v2    # "var0":Ljava/lang/Integer;
    const-string/jumbo v6, "var1"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 715
    .local v3, "var1":Ljava/lang/Object;
    const-string/jumbo v6, "var2"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 716
    .local v4, "var2":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 717
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 718
    .local v0, "hasCallback":Z
    const-string/jumbo v6, "H5UcService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "common config notifyCoreEvent: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    if-eqz v0, :cond_4

    .line 720
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 722
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v3}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 728
    .end local v0    # "hasCallback":Z
    .end local v2    # "var0":Ljava/lang/Integer;
    .end local v3    # "var1":Ljava/lang/Object;
    .end local v4    # "var2":Ljava/lang/Boolean;
    :cond_5
    const-string/jumbo v6, "setGlobalBoolValue"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 729
    const-string/jumbo v6, "var0"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "var0":Ljava/lang/String;
    const-string/jumbo v6, "var1"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 731
    .local v3, "var1":Ljava/lang/Boolean;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    .line 732
    const-string/jumbo v6, "H5UcService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "common config setGlobalBoolValue: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v2, v6}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private static silentClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 1064
    if-nez p0, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1068
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "silentClose exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
